# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/magr/ANACIN-X/apps/comm_pattern_generator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/magr/ANACIN-X/apps/comm_pattern_generator/build

# Include any dependencies generated for this target.
include CMakeFiles/comm_pattern_generator.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/comm_pattern_generator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/comm_pattern_generator.dir/flags.make

CMakeFiles/comm_pattern_generator.dir/src/driver.cpp.o: CMakeFiles/comm_pattern_generator.dir/flags.make
CMakeFiles/comm_pattern_generator.dir/src/driver.cpp.o: ../src/driver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/magr/ANACIN-X/apps/comm_pattern_generator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/comm_pattern_generator.dir/src/driver.cpp.o"
	/usr/bin/mpicxx  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/comm_pattern_generator.dir/src/driver.cpp.o -c /home/magr/ANACIN-X/apps/comm_pattern_generator/src/driver.cpp

CMakeFiles/comm_pattern_generator.dir/src/driver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/comm_pattern_generator.dir/src/driver.cpp.i"
	/usr/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/magr/ANACIN-X/apps/comm_pattern_generator/src/driver.cpp > CMakeFiles/comm_pattern_generator.dir/src/driver.cpp.i

CMakeFiles/comm_pattern_generator.dir/src/driver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/comm_pattern_generator.dir/src/driver.cpp.s"
	/usr/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/magr/ANACIN-X/apps/comm_pattern_generator/src/driver.cpp -o CMakeFiles/comm_pattern_generator.dir/src/driver.cpp.s

CMakeFiles/comm_pattern_generator.dir/src/configuration.cpp.o: CMakeFiles/comm_pattern_generator.dir/flags.make
CMakeFiles/comm_pattern_generator.dir/src/configuration.cpp.o: ../src/configuration.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/magr/ANACIN-X/apps/comm_pattern_generator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/comm_pattern_generator.dir/src/configuration.cpp.o"
	/usr/bin/mpicxx  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/comm_pattern_generator.dir/src/configuration.cpp.o -c /home/magr/ANACIN-X/apps/comm_pattern_generator/src/configuration.cpp

CMakeFiles/comm_pattern_generator.dir/src/configuration.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/comm_pattern_generator.dir/src/configuration.cpp.i"
	/usr/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/magr/ANACIN-X/apps/comm_pattern_generator/src/configuration.cpp > CMakeFiles/comm_pattern_generator.dir/src/configuration.cpp.i

CMakeFiles/comm_pattern_generator.dir/src/configuration.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/comm_pattern_generator.dir/src/configuration.cpp.s"
	/usr/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/magr/ANACIN-X/apps/comm_pattern_generator/src/configuration.cpp -o CMakeFiles/comm_pattern_generator.dir/src/configuration.cpp.s

CMakeFiles/comm_pattern_generator.dir/src/comm_pattern.cpp.o: CMakeFiles/comm_pattern_generator.dir/flags.make
CMakeFiles/comm_pattern_generator.dir/src/comm_pattern.cpp.o: ../src/comm_pattern.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/magr/ANACIN-X/apps/comm_pattern_generator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/comm_pattern_generator.dir/src/comm_pattern.cpp.o"
	/usr/bin/mpicxx  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/comm_pattern_generator.dir/src/comm_pattern.cpp.o -c /home/magr/ANACIN-X/apps/comm_pattern_generator/src/comm_pattern.cpp

CMakeFiles/comm_pattern_generator.dir/src/comm_pattern.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/comm_pattern_generator.dir/src/comm_pattern.cpp.i"
	/usr/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/magr/ANACIN-X/apps/comm_pattern_generator/src/comm_pattern.cpp > CMakeFiles/comm_pattern_generator.dir/src/comm_pattern.cpp.i

CMakeFiles/comm_pattern_generator.dir/src/comm_pattern.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/comm_pattern_generator.dir/src/comm_pattern.cpp.s"
	/usr/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/magr/ANACIN-X/apps/comm_pattern_generator/src/comm_pattern.cpp -o CMakeFiles/comm_pattern_generator.dir/src/comm_pattern.cpp.s

CMakeFiles/comm_pattern_generator.dir/src/naive_reduce.cpp.o: CMakeFiles/comm_pattern_generator.dir/flags.make
CMakeFiles/comm_pattern_generator.dir/src/naive_reduce.cpp.o: ../src/naive_reduce.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/magr/ANACIN-X/apps/comm_pattern_generator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/comm_pattern_generator.dir/src/naive_reduce.cpp.o"
	/usr/bin/mpicxx  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/comm_pattern_generator.dir/src/naive_reduce.cpp.o -c /home/magr/ANACIN-X/apps/comm_pattern_generator/src/naive_reduce.cpp

CMakeFiles/comm_pattern_generator.dir/src/naive_reduce.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/comm_pattern_generator.dir/src/naive_reduce.cpp.i"
	/usr/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/magr/ANACIN-X/apps/comm_pattern_generator/src/naive_reduce.cpp > CMakeFiles/comm_pattern_generator.dir/src/naive_reduce.cpp.i

CMakeFiles/comm_pattern_generator.dir/src/naive_reduce.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/comm_pattern_generator.dir/src/naive_reduce.cpp.s"
	/usr/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/magr/ANACIN-X/apps/comm_pattern_generator/src/naive_reduce.cpp -o CMakeFiles/comm_pattern_generator.dir/src/naive_reduce.cpp.s

CMakeFiles/comm_pattern_generator.dir/src/amg2013.cpp.o: CMakeFiles/comm_pattern_generator.dir/flags.make
CMakeFiles/comm_pattern_generator.dir/src/amg2013.cpp.o: ../src/amg2013.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/magr/ANACIN-X/apps/comm_pattern_generator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/comm_pattern_generator.dir/src/amg2013.cpp.o"
	/usr/bin/mpicxx  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/comm_pattern_generator.dir/src/amg2013.cpp.o -c /home/magr/ANACIN-X/apps/comm_pattern_generator/src/amg2013.cpp

CMakeFiles/comm_pattern_generator.dir/src/amg2013.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/comm_pattern_generator.dir/src/amg2013.cpp.i"
	/usr/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/magr/ANACIN-X/apps/comm_pattern_generator/src/amg2013.cpp > CMakeFiles/comm_pattern_generator.dir/src/amg2013.cpp.i

CMakeFiles/comm_pattern_generator.dir/src/amg2013.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/comm_pattern_generator.dir/src/amg2013.cpp.s"
	/usr/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/magr/ANACIN-X/apps/comm_pattern_generator/src/amg2013.cpp -o CMakeFiles/comm_pattern_generator.dir/src/amg2013.cpp.s

CMakeFiles/comm_pattern_generator.dir/src/unstructured_mesh.cpp.o: CMakeFiles/comm_pattern_generator.dir/flags.make
CMakeFiles/comm_pattern_generator.dir/src/unstructured_mesh.cpp.o: ../src/unstructured_mesh.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/magr/ANACIN-X/apps/comm_pattern_generator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/comm_pattern_generator.dir/src/unstructured_mesh.cpp.o"
	/usr/bin/mpicxx  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/comm_pattern_generator.dir/src/unstructured_mesh.cpp.o -c /home/magr/ANACIN-X/apps/comm_pattern_generator/src/unstructured_mesh.cpp

CMakeFiles/comm_pattern_generator.dir/src/unstructured_mesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/comm_pattern_generator.dir/src/unstructured_mesh.cpp.i"
	/usr/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/magr/ANACIN-X/apps/comm_pattern_generator/src/unstructured_mesh.cpp > CMakeFiles/comm_pattern_generator.dir/src/unstructured_mesh.cpp.i

CMakeFiles/comm_pattern_generator.dir/src/unstructured_mesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/comm_pattern_generator.dir/src/unstructured_mesh.cpp.s"
	/usr/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/magr/ANACIN-X/apps/comm_pattern_generator/src/unstructured_mesh.cpp -o CMakeFiles/comm_pattern_generator.dir/src/unstructured_mesh.cpp.s

# Object files for target comm_pattern_generator
comm_pattern_generator_OBJECTS = \
"CMakeFiles/comm_pattern_generator.dir/src/driver.cpp.o" \
"CMakeFiles/comm_pattern_generator.dir/src/configuration.cpp.o" \
"CMakeFiles/comm_pattern_generator.dir/src/comm_pattern.cpp.o" \
"CMakeFiles/comm_pattern_generator.dir/src/naive_reduce.cpp.o" \
"CMakeFiles/comm_pattern_generator.dir/src/amg2013.cpp.o" \
"CMakeFiles/comm_pattern_generator.dir/src/unstructured_mesh.cpp.o"

# External object files for target comm_pattern_generator
comm_pattern_generator_EXTERNAL_OBJECTS =

comm_pattern_generator: CMakeFiles/comm_pattern_generator.dir/src/driver.cpp.o
comm_pattern_generator: CMakeFiles/comm_pattern_generator.dir/src/configuration.cpp.o
comm_pattern_generator: CMakeFiles/comm_pattern_generator.dir/src/comm_pattern.cpp.o
comm_pattern_generator: CMakeFiles/comm_pattern_generator.dir/src/naive_reduce.cpp.o
comm_pattern_generator: CMakeFiles/comm_pattern_generator.dir/src/amg2013.cpp.o
comm_pattern_generator: CMakeFiles/comm_pattern_generator.dir/src/unstructured_mesh.cpp.o
comm_pattern_generator: CMakeFiles/comm_pattern_generator.dir/build.make
comm_pattern_generator: /usr/lib/x86_64-linux-gnu/libboost_mpi.so.1.71.0
comm_pattern_generator: /usr/lib/x86_64-linux-gnu/libboost_serialization.so.1.71.0
comm_pattern_generator: CMakeFiles/comm_pattern_generator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/magr/ANACIN-X/apps/comm_pattern_generator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable comm_pattern_generator"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/comm_pattern_generator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/comm_pattern_generator.dir/build: comm_pattern_generator

.PHONY : CMakeFiles/comm_pattern_generator.dir/build

CMakeFiles/comm_pattern_generator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/comm_pattern_generator.dir/cmake_clean.cmake
.PHONY : CMakeFiles/comm_pattern_generator.dir/clean

CMakeFiles/comm_pattern_generator.dir/depend:
	cd /home/magr/ANACIN-X/apps/comm_pattern_generator/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/magr/ANACIN-X/apps/comm_pattern_generator /home/magr/ANACIN-X/apps/comm_pattern_generator /home/magr/ANACIN-X/apps/comm_pattern_generator/build /home/magr/ANACIN-X/apps/comm_pattern_generator/build /home/magr/ANACIN-X/apps/comm_pattern_generator/build/CMakeFiles/comm_pattern_generator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/comm_pattern_generator.dir/depend

