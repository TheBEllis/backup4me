# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /opt/apollo/contrib/hephaestus

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /opt/apollo/contrib/hephaestus

# Include any dependencies generated for this target.
include test/regression/CMakeFiles/regression_tests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/regression/CMakeFiles/regression_tests.dir/compiler_depend.make

# Include the progress variables for this target.
include test/regression/CMakeFiles/regression_tests.dir/progress.make

# Include the compile flags for this target's objects.
include test/regression/CMakeFiles/regression_tests.dir/flags.make

test/regression/CMakeFiles/regression_tests.dir/Main.cpp.o: test/regression/CMakeFiles/regression_tests.dir/flags.make
test/regression/CMakeFiles/regression_tests.dir/Main.cpp.o: test/regression/Main.cpp
test/regression/CMakeFiles/regression_tests.dir/Main.cpp.o: test/regression/CMakeFiles/regression_tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/opt/apollo/contrib/hephaestus/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/regression/CMakeFiles/regression_tests.dir/Main.cpp.o"
	cd /opt/apollo/contrib/hephaestus/test/regression && /usr/local/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/regression/CMakeFiles/regression_tests.dir/Main.cpp.o -MF CMakeFiles/regression_tests.dir/Main.cpp.o.d -o CMakeFiles/regression_tests.dir/Main.cpp.o -c /opt/apollo/contrib/hephaestus/test/regression/Main.cpp

test/regression/CMakeFiles/regression_tests.dir/Main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/regression_tests.dir/Main.cpp.i"
	cd /opt/apollo/contrib/hephaestus/test/regression && /usr/local/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /opt/apollo/contrib/hephaestus/test/regression/Main.cpp > CMakeFiles/regression_tests.dir/Main.cpp.i

test/regression/CMakeFiles/regression_tests.dir/Main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/regression_tests.dir/Main.cpp.s"
	cd /opt/apollo/contrib/hephaestus/test/regression && /usr/local/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /opt/apollo/contrib/hephaestus/test/regression/Main.cpp -o CMakeFiles/regression_tests.dir/Main.cpp.s

# Object files for target regression_tests
regression_tests_OBJECTS = \
"CMakeFiles/regression_tests.dir/Main.cpp.o"

# External object files for target regression_tests
regression_tests_EXTERNAL_OBJECTS =

bin/regression_tests: test/regression/CMakeFiles/regression_tests.dir/Main.cpp.o
bin/regression_tests: test/regression/CMakeFiles/regression_tests.dir/build.make
bin/regression_tests: test/googletest-prefix/src/googletest-build/lib/libgtest.a
bin/regression_tests: test/googletest-prefix/src/googletest-build/lib/libgtest_main.a
bin/regression_tests: lib/libhephaestus.so
bin/regression_tests: /opt/mfem/build/libmfem.a
bin/regression_tests: /opt/mfem/build/miniapps/common/libmfem-common.a
bin/regression_tests: /usr/lib/gcc/x86_64-linux-gnu/9/libgomp.so
bin/regression_tests: /usr/lib/x86_64-linux-gnu/libpthread.so
bin/regression_tests: /usr/local/lib/libHYPRE.so
bin/regression_tests: /usr/local/lib/libmetis.so
bin/regression_tests: /usr/local/lib/libnetcdf.so
bin/regression_tests: /usr/lib/x86_64-linux-gnu/hdf5/mpich/lib/libhdf5_hl.so
bin/regression_tests: /usr/lib/x86_64-linux-gnu/hdf5/mpich/lib/libhdf5.so
bin/regression_tests: test/regression/CMakeFiles/regression_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/opt/apollo/contrib/hephaestus/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/regression_tests"
	cd /opt/apollo/contrib/hephaestus/test/regression && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/regression_tests.dir/link.txt --verbose=$(VERBOSE)
	cd /opt/apollo/contrib/hephaestus/test/regression && /usr/local/bin/cmake -D TEST_TARGET=regression_tests -D TEST_EXECUTABLE=/opt/apollo/contrib/hephaestus/bin/regression_tests -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/opt/apollo/contrib/hephaestus/test/regression -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=regression_tests_TESTS -D CTEST_FILE=/opt/apollo/contrib/hephaestus/test/regression/regression_tests[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -D TEST_XML_OUTPUT_DIR= -P /usr/local/share/cmake-3.21/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
test/regression/CMakeFiles/regression_tests.dir/build: bin/regression_tests
.PHONY : test/regression/CMakeFiles/regression_tests.dir/build

test/regression/CMakeFiles/regression_tests.dir/clean:
	cd /opt/apollo/contrib/hephaestus/test/regression && $(CMAKE_COMMAND) -P CMakeFiles/regression_tests.dir/cmake_clean.cmake
.PHONY : test/regression/CMakeFiles/regression_tests.dir/clean

test/regression/CMakeFiles/regression_tests.dir/depend:
	cd /opt/apollo/contrib/hephaestus && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /opt/apollo/contrib/hephaestus /opt/apollo/contrib/hephaestus/test/regression /opt/apollo/contrib/hephaestus /opt/apollo/contrib/hephaestus/test/regression /opt/apollo/contrib/hephaestus/test/regression/CMakeFiles/regression_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/regression/CMakeFiles/regression_tests.dir/depend

