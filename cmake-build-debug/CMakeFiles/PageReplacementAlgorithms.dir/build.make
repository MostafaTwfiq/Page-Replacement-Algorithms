# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/mostafa/Downloads/clion-2021.2.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/mostafa/Downloads/clion-2021.2.3/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mostafa/CLionProjects/Page-Replacement-Algorithms

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mostafa/CLionProjects/Page-Replacement-Algorithms/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/PageReplacementAlgorithms.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/PageReplacementAlgorithms.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PageReplacementAlgorithms.dir/flags.make

CMakeFiles/PageReplacementAlgorithms.dir/main.c.o: CMakeFiles/PageReplacementAlgorithms.dir/flags.make
CMakeFiles/PageReplacementAlgorithms.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mostafa/CLionProjects/Page-Replacement-Algorithms/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/PageReplacementAlgorithms.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/PageReplacementAlgorithms.dir/main.c.o -c /home/mostafa/CLionProjects/Page-Replacement-Algorithms/main.c

CMakeFiles/PageReplacementAlgorithms.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/PageReplacementAlgorithms.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mostafa/CLionProjects/Page-Replacement-Algorithms/main.c > CMakeFiles/PageReplacementAlgorithms.dir/main.c.i

CMakeFiles/PageReplacementAlgorithms.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/PageReplacementAlgorithms.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mostafa/CLionProjects/Page-Replacement-Algorithms/main.c -o CMakeFiles/PageReplacementAlgorithms.dir/main.c.s

# Object files for target PageReplacementAlgorithms
PageReplacementAlgorithms_OBJECTS = \
"CMakeFiles/PageReplacementAlgorithms.dir/main.c.o"

# External object files for target PageReplacementAlgorithms
PageReplacementAlgorithms_EXTERNAL_OBJECTS =

PageReplacementAlgorithms: CMakeFiles/PageReplacementAlgorithms.dir/main.c.o
PageReplacementAlgorithms: CMakeFiles/PageReplacementAlgorithms.dir/build.make
PageReplacementAlgorithms: CMakeFiles/PageReplacementAlgorithms.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mostafa/CLionProjects/Page-Replacement-Algorithms/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable PageReplacementAlgorithms"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PageReplacementAlgorithms.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PageReplacementAlgorithms.dir/build: PageReplacementAlgorithms
.PHONY : CMakeFiles/PageReplacementAlgorithms.dir/build

CMakeFiles/PageReplacementAlgorithms.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PageReplacementAlgorithms.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PageReplacementAlgorithms.dir/clean

CMakeFiles/PageReplacementAlgorithms.dir/depend:
	cd /home/mostafa/CLionProjects/Page-Replacement-Algorithms/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mostafa/CLionProjects/Page-Replacement-Algorithms /home/mostafa/CLionProjects/Page-Replacement-Algorithms /home/mostafa/CLionProjects/Page-Replacement-Algorithms/cmake-build-debug /home/mostafa/CLionProjects/Page-Replacement-Algorithms/cmake-build-debug /home/mostafa/CLionProjects/Page-Replacement-Algorithms/cmake-build-debug/CMakeFiles/PageReplacementAlgorithms.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PageReplacementAlgorithms.dir/depend

