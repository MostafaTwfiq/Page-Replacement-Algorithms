# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.2.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.2.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\mosta\CLionProjects\PageReplacementAlgorithms

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\mosta\CLionProjects\PageReplacementAlgorithms\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/PageReplacementAlgorithms.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/PageReplacementAlgorithms.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PageReplacementAlgorithms.dir/flags.make

CMakeFiles/PageReplacementAlgorithms.dir/main.c.obj: CMakeFiles/PageReplacementAlgorithms.dir/flags.make
CMakeFiles/PageReplacementAlgorithms.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\mosta\CLionProjects\PageReplacementAlgorithms\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/PageReplacementAlgorithms.dir/main.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\PageReplacementAlgorithms.dir\main.c.obj -c C:\Users\mosta\CLionProjects\PageReplacementAlgorithms\main.c

CMakeFiles/PageReplacementAlgorithms.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/PageReplacementAlgorithms.dir/main.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\mosta\CLionProjects\PageReplacementAlgorithms\main.c > CMakeFiles\PageReplacementAlgorithms.dir\main.c.i

CMakeFiles/PageReplacementAlgorithms.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/PageReplacementAlgorithms.dir/main.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\mosta\CLionProjects\PageReplacementAlgorithms\main.c -o CMakeFiles\PageReplacementAlgorithms.dir\main.c.s

# Object files for target PageReplacementAlgorithms
PageReplacementAlgorithms_OBJECTS = \
"CMakeFiles/PageReplacementAlgorithms.dir/main.c.obj"

# External object files for target PageReplacementAlgorithms
PageReplacementAlgorithms_EXTERNAL_OBJECTS =

PageReplacementAlgorithms.exe: CMakeFiles/PageReplacementAlgorithms.dir/main.c.obj
PageReplacementAlgorithms.exe: CMakeFiles/PageReplacementAlgorithms.dir/build.make
PageReplacementAlgorithms.exe: CMakeFiles/PageReplacementAlgorithms.dir/linklibs.rsp
PageReplacementAlgorithms.exe: CMakeFiles/PageReplacementAlgorithms.dir/objects1.rsp
PageReplacementAlgorithms.exe: CMakeFiles/PageReplacementAlgorithms.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\mosta\CLionProjects\PageReplacementAlgorithms\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable PageReplacementAlgorithms.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\PageReplacementAlgorithms.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PageReplacementAlgorithms.dir/build: PageReplacementAlgorithms.exe
.PHONY : CMakeFiles/PageReplacementAlgorithms.dir/build

CMakeFiles/PageReplacementAlgorithms.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\PageReplacementAlgorithms.dir\cmake_clean.cmake
.PHONY : CMakeFiles/PageReplacementAlgorithms.dir/clean

CMakeFiles/PageReplacementAlgorithms.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\mosta\CLionProjects\PageReplacementAlgorithms C:\Users\mosta\CLionProjects\PageReplacementAlgorithms C:\Users\mosta\CLionProjects\PageReplacementAlgorithms\cmake-build-debug C:\Users\mosta\CLionProjects\PageReplacementAlgorithms\cmake-build-debug C:\Users\mosta\CLionProjects\PageReplacementAlgorithms\cmake-build-debug\CMakeFiles\PageReplacementAlgorithms.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PageReplacementAlgorithms.dir/depend

