#!/usr/bin/env bash
#set -ex

#Clean Results if Not Clean
#rm -r -f /root/capsule/results/*

results_path=$(pwd)/../results/

#Perform last needed build
#git remote add github https://github.com/TauferLab/ANACIN-X.git
. ./setup_code_ocean.sh
#./install/install_dumpi.sh

n_procs=16
n_iters=10
msg_size=1
n_nodes=1
n_runs=10
nd_start=0.0
nd_iter=0.1
nd_end=1.0
scheduler=unscheduled
graph_kernel=anacin-x/event_graph_analysis/graph_kernel_policies/test_kernel.json
anomaly_detection_type=all
anomaly_detection_policy=anacin-x/event_graph_analysis/anomaly_detection_policies/${anomaly_detection_type}.json
anacin_executable=apps/comm_pattern_generator/build/comm_pattern_generator
anomaly_detection_file=flagged_indices.pkl


#Perform message race test
comm_pattern=message_race
./comm_pattern_analysis.sh -p ${n_procs} -i ${n_iters} -s ${msg_size} -n ${n_nodes} -r ${n_runs} -nd ${nd_start} ${nd_iter} ${nd_end} -v -cp ${comm_pattern} -sc ${scheduler} -o ${results_path}/${comm_pattern}_results
kdts_path=${results_path}/${comm_pattern}_results/msg_size_${msg_size}/n_procs_${n_procs}/n_iters_${n_iters}/ndp_${nd_start}_${nd_iter}_${nd_end}
kdts_file=${kdts_path}/kdts.pkl

#python3 anacin-x/event_graph_analysis/visualization/make_message_nd_plot.py ${kdts_file} ${comm_pattern} ${graph_kernel} ${results_path}/kdts_vis_${comm_pattern} ${nd_start} ${nd_iter} ${nd_end}

#python3 anacin-x/event_graph_analysis/anomaly_detection.py ${kdts_file} ${anomaly_detection_policy} -o ${anomaly_detection_file}
#python3 anacin-x/event_graph_analysis/callstack_analysis.py ${kdts_path}/${anomaly_detection_file} ${kdts_file} ${anacin_executable}
#python3 anacin-x/event_graph_analysis/visualization/visualize_callstack_report.py ${kdts_path}/non_anomaly_report_for_policy_${anomaly_detection_type}.txt --plot_type="bar_chart"



#Perform amg2013 test
comm_pattern=amg2013
./comm_pattern_analysis.sh -p ${n_procs} -i ${n_iters} -s ${msg_size} -n ${n_nodes} -r ${n_runs} -nd ${nd_start} ${nd_iter} ${nd_end} -v -cp ${comm_pattern} -sc ${scheduler} -o ${results_path}/${comm_pattern}_results
kdts_path=${results_path}/${comm_pattern}_results/msg_size_${msg_size}/n_procs_${n_procs}/n_iters_${n_iters}/ndp_${nd_start}_${nd_iter}_${nd_end}
kdts_file=${kdts_path}/kdts.pkl

#python3 anacin-x/event_graph_analysis/visualization/make_message_nd_plot.py ${kdts_file} ${comm_pattern} ${graph_kernel} ${results_path}/kdts_vis_${comm_pattern} ${nd_start} ${nd_iter} ${nd_end}

#python3 anacin-x/event_graph_analysis/anomaly_detection.py ${kdts_file} ${anomaly_detection_policy} -o ${anomaly_detection_file}
#python3 anacin-x/event_graph_analysis/callstack_analysis.py ${kdts_path}/${anomaly_detection_file} ${kdts_file} ${anacin_executable}
#python3 anacin-x/event_graph_analysis/visualization/visualize_callstack_report.py ${kdts_path}/non_anomaly_report_for_policy_${anomaly_detection_type}.txt --plot_type="bar_chart"


