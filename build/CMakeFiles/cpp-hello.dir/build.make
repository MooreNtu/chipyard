# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/frank/hesl/test_riscv/chipyard/chipyard/tests

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/frank/hesl/test_riscv/chipyard/chipyard/build

# Include any dependencies generated for this target.
include CMakeFiles/cpp-hello.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/cpp-hello.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cpp-hello.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cpp-hello.dir/flags.make

CMakeFiles/cpp-hello.dir/cpp-hello.cpp.o: CMakeFiles/cpp-hello.dir/flags.make
CMakeFiles/cpp-hello.dir/cpp-hello.cpp.o: /home/frank/hesl/test_riscv/chipyard/chipyard/tests/cpp-hello.cpp
CMakeFiles/cpp-hello.dir/cpp-hello.cpp.o: CMakeFiles/cpp-hello.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/frank/hesl/test_riscv/chipyard/chipyard/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cpp-hello.dir/cpp-hello.cpp.o"
	riscv64-unknown-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cpp-hello.dir/cpp-hello.cpp.o -MF CMakeFiles/cpp-hello.dir/cpp-hello.cpp.o.d -o CMakeFiles/cpp-hello.dir/cpp-hello.cpp.o -c /home/frank/hesl/test_riscv/chipyard/chipyard/tests/cpp-hello.cpp

CMakeFiles/cpp-hello.dir/cpp-hello.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp-hello.dir/cpp-hello.cpp.i"
	riscv64-unknown-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/frank/hesl/test_riscv/chipyard/chipyard/tests/cpp-hello.cpp > CMakeFiles/cpp-hello.dir/cpp-hello.cpp.i

CMakeFiles/cpp-hello.dir/cpp-hello.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp-hello.dir/cpp-hello.cpp.s"
	riscv64-unknown-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/frank/hesl/test_riscv/chipyard/chipyard/tests/cpp-hello.cpp -o CMakeFiles/cpp-hello.dir/cpp-hello.cpp.s

# Object files for target cpp-hello
cpp__hello_OBJECTS = \
"CMakeFiles/cpp-hello.dir/cpp-hello.cpp.o"

# External object files for target cpp-hello
cpp__hello_EXTERNAL_OBJECTS =

cpp-hello.riscv: CMakeFiles/cpp-hello.dir/cpp-hello.cpp.o
cpp-hello.riscv: CMakeFiles/cpp-hello.dir/build.make
cpp-hello.riscv: CMakeFiles/cpp-hello.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/frank/hesl/test_riscv/chipyard/chipyard/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable cpp-hello.riscv"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cpp-hello.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cpp-hello.dir/build: cpp-hello.riscv
.PHONY : CMakeFiles/cpp-hello.dir/build

CMakeFiles/cpp-hello.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cpp-hello.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cpp-hello.dir/clean

CMakeFiles/cpp-hello.dir/depend:
	cd /home/frank/hesl/test_riscv/chipyard/chipyard/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/frank/hesl/test_riscv/chipyard/chipyard/tests /home/frank/hesl/test_riscv/chipyard/chipyard/tests /home/frank/hesl/test_riscv/chipyard/chipyard/build /home/frank/hesl/test_riscv/chipyard/chipyard/build /home/frank/hesl/test_riscv/chipyard/chipyard/build/CMakeFiles/cpp-hello.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cpp-hello.dir/depend

