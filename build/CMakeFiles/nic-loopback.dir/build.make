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
include CMakeFiles/nic-loopback.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/nic-loopback.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/nic-loopback.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/nic-loopback.dir/flags.make

CMakeFiles/nic-loopback.dir/nic-loopback.c.o: CMakeFiles/nic-loopback.dir/flags.make
CMakeFiles/nic-loopback.dir/nic-loopback.c.o: /home/frank/hesl/test_riscv/chipyard/chipyard/tests/nic-loopback.c
CMakeFiles/nic-loopback.dir/nic-loopback.c.o: CMakeFiles/nic-loopback.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/frank/hesl/test_riscv/chipyard/chipyard/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/nic-loopback.dir/nic-loopback.c.o"
	riscv64-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/nic-loopback.dir/nic-loopback.c.o -MF CMakeFiles/nic-loopback.dir/nic-loopback.c.o.d -o CMakeFiles/nic-loopback.dir/nic-loopback.c.o -c /home/frank/hesl/test_riscv/chipyard/chipyard/tests/nic-loopback.c

CMakeFiles/nic-loopback.dir/nic-loopback.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/nic-loopback.dir/nic-loopback.c.i"
	riscv64-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/frank/hesl/test_riscv/chipyard/chipyard/tests/nic-loopback.c > CMakeFiles/nic-loopback.dir/nic-loopback.c.i

CMakeFiles/nic-loopback.dir/nic-loopback.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/nic-loopback.dir/nic-loopback.c.s"
	riscv64-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/frank/hesl/test_riscv/chipyard/chipyard/tests/nic-loopback.c -o CMakeFiles/nic-loopback.dir/nic-loopback.c.s

# Object files for target nic-loopback
nic__loopback_OBJECTS = \
"CMakeFiles/nic-loopback.dir/nic-loopback.c.o"

# External object files for target nic-loopback
nic__loopback_EXTERNAL_OBJECTS =

nic-loopback.riscv: CMakeFiles/nic-loopback.dir/nic-loopback.c.o
nic-loopback.riscv: CMakeFiles/nic-loopback.dir/build.make
nic-loopback.riscv: CMakeFiles/nic-loopback.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/frank/hesl/test_riscv/chipyard/chipyard/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable nic-loopback.riscv"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nic-loopback.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/nic-loopback.dir/build: nic-loopback.riscv
.PHONY : CMakeFiles/nic-loopback.dir/build

CMakeFiles/nic-loopback.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/nic-loopback.dir/cmake_clean.cmake
.PHONY : CMakeFiles/nic-loopback.dir/clean

CMakeFiles/nic-loopback.dir/depend:
	cd /home/frank/hesl/test_riscv/chipyard/chipyard/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/frank/hesl/test_riscv/chipyard/chipyard/tests /home/frank/hesl/test_riscv/chipyard/chipyard/tests /home/frank/hesl/test_riscv/chipyard/chipyard/build /home/frank/hesl/test_riscv/chipyard/chipyard/build /home/frank/hesl/test_riscv/chipyard/chipyard/build/CMakeFiles/nic-loopback.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/nic-loopback.dir/depend

