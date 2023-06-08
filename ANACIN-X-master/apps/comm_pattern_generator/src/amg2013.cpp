#include "amg2013.hpp"

#include <mpi.h>
#include <cstdio>
#include <cstdlib>
#include <vector>

#include "debug.hpp"

void comm_pattern_amg2013( int iter, double nd_fraction, int msg_size )
{
  int mpi_rc, rank, comm_size;
  mpi_rc = MPI_Comm_rank( MPI_COMM_WORLD, &rank );
  mpi_rc = MPI_Comm_size( MPI_COMM_WORLD, &comm_size );
  
  // Determine neighbors
  int n_neighbors = comm_size - 1;
  std::vector<int> neighbors;
  neighbors.reserve( n_neighbors );
  for ( int i=0; i<comm_size; ++i ) {
    if ( i != rank ) {
      neighbors.push_back( i );
    }
  }

  // Determine number of deterministic vs. non-deterministic neighbors
  int n_nd_neighbors = (int) n_neighbors * nd_fraction;
  int n_det_neighbors = n_neighbors - n_nd_neighbors;

  // Set tags for both rounds of communication
  int round_1_tag = 2*iter;
  int round_2_tag = round_1_tag + 1;
  
  // Set up receive buffers for round 2 receives
  // These receives are posted first but completed last
  char* round_2_recv_buffer_det = (char*) malloc( n_det_neighbors * msg_size * sizeof(char) );
  char* round_2_recv_buffer_nd = (char*) malloc( n_nd_neighbors * msg_size * sizeof(char) );

  // Set up requests for round 2 receives
  MPI_Request round_2_recv_reqs_det[ n_det_neighbors ];
  MPI_Request round_2_recv_reqs_nd[ n_nd_neighbors ];

  // Post deterministic round-2 receives
  for ( int i=0; i<n_det_neighbors; ++i ) {
    auto curr_neighbor = neighbors[ i ];
    mpi_rc = MPI_Irecv( &round_2_recv_buffer_det[ i * msg_size ],
                        msg_size, 
                        MPI_CHAR,
                        curr_neighbor,
                        round_2_tag,
                        MPI_COMM_WORLD,
                        &round_2_recv_reqs_det[i] );
  }

  // Post non-deterministic round-2 receives
  for ( int i=0; i<n_nd_neighbors; ++i ) {
    mpi_rc = MPI_Irecv( &round_2_recv_buffer_nd[ i * msg_size ],
                        msg_size,
                        MPI_CHAR,
                        MPI_ANY_SOURCE,
                        round_2_tag,
                        MPI_COMM_WORLD,
                        &round_2_recv_reqs_nd[i] );
  }

  // Post round-1 sends
  char* round_1_send_buffer = (char*) malloc( msg_size * sizeof(char) );
  MPI_Request round_1_send_requests[ n_neighbors ];
  for ( int i=0; i<n_neighbors; ++i ) {
    mpi_rc = MPI_Isend( round_1_send_buffer,
                        msg_size, 
                        MPI_CHAR,
                        neighbors[i],
                        round_1_tag,
                        MPI_COMM_WORLD,
                        &round_1_send_requests[i] );
  }
  free( round_1_send_buffer );

  // Complete round-1 sends
  mpi_rc = MPI_Waitall( n_neighbors, round_1_send_requests, MPI_STATUSES_IGNORE );

  // Complete requested amount of round-1 sends deterministically 
  // and send replies
  char* round_1_recv_buffer_det = (char*) malloc( n_det_neighbors * msg_size * sizeof(char) );
  MPI_Status det_recv_status;
  for ( int i=0; i<n_det_neighbors; ++i ) {
    // Receive deterministically
    auto curr_neighbor = neighbors[ i ];
    mpi_rc = MPI_Recv( &round_1_recv_buffer_det[ i * msg_size ],
                       msg_size, 
                       MPI_CHAR,
                       curr_neighbor,
                       round_1_tag,
                       MPI_COMM_WORLD,
                       &det_recv_status );
#ifdef DEBUG
    printf("(DETERMINISTIC) Rank: %d round-1 received from rank: %d\n", rank, curr_neighbor);
#endif
    
    // Send reply
    char* round_2_send_buffer = (char*) malloc( msg_size * sizeof(char) );
    mpi_rc = MPI_Send( round_2_send_buffer,
                       msg_size,
                       MPI_CHAR,
                       curr_neighbor,
                       round_2_tag,
                       MPI_COMM_WORLD );
    // Free round-2 send buffer 
    free( round_2_send_buffer );
  }
  
  // Free round-1 receive buffer for deterministic receives
  free( round_1_recv_buffer_det );

  // Complete remaining amount of round-1 sends non-deterministically
  char* round_1_recv_buffer_nd = (char*) malloc( n_nd_neighbors * msg_size * sizeof(char) );
  MPI_Status probe_status, nd_recv_status;
  int n_received = 0;
  while ( n_received < n_nd_neighbors ) {
    // Check for a message
    mpi_rc = MPI_Probe( MPI_ANY_SOURCE,
                        round_1_tag,
                        MPI_COMM_WORLD,
                        &probe_status );

    // Get sender from probe status 
    int sender_rank = probe_status.MPI_SOURCE;
    
    // Post matching receive
    mpi_rc = MPI_Recv( &round_1_recv_buffer_nd[ n_received * msg_size ],
                       msg_size,
                       MPI_CHAR,
                       sender_rank,
                       round_1_tag,
                       MPI_COMM_WORLD,
                       &nd_recv_status );
#ifdef DEBUG    
    printf("(NON-DETERMINISTIC) Rank: %d round-1 received from rank: %d\n", rank, sender_rank);
#endif

    // Update number of received messages
    n_received++;

    // Send response
    char* round_2_send_buffer = (char*) malloc( msg_size * sizeof(char) );
    mpi_rc = MPI_Send( round_2_send_buffer,
                       msg_size,
                       MPI_CHAR,
                       sender_rank,
                       round_2_tag,
                       MPI_COMM_WORLD );

    // Free round-2 send buffer 
    free( round_2_send_buffer );
  }

  // Free round-1 receive buffer for non-deterministic receives
  free( round_1_recv_buffer_nd );

  // Complete deterministic round-2 receives
  MPI_Status round_2_recv_status;
  for ( int i=0; i<n_det_neighbors; ++i ) {
    mpi_rc = MPI_Wait( &round_2_recv_reqs_det[i], &round_2_recv_status );
#ifdef DEBUG
    printf("(DETERMINISTIC) Rank: %d round-2 received from rank: %d\n", rank, round_2_recv_status.MPI_SOURCE);
#endif
  }

  // Complete non-deterministic round-2 receives
  for ( int i=0; i<n_nd_neighbors; ++i ) {
    mpi_rc = MPI_Wait( &round_2_recv_reqs_nd[i], &round_2_recv_status );
#ifdef DEBUG
    printf("(NON-DETERMINISTIC) Rank: %d round-2 received from rank: %d\n", rank, round_2_recv_status.MPI_SOURCE);
#endif
  }

  // Free round-2 receive buffers
  free( round_2_recv_buffer_det );
  free( round_2_recv_buffer_nd );
}
