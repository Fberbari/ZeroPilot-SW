# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/testBuild

# Include any dependencies generated for this target.
include CMakeFiles/runTests.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/runTests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/runTests.dir/flags.make

CMakeFiles/runTests.dir/Src/airSpeed.c.o: CMakeFiles/runTests.dir/flags.make
CMakeFiles/runTests.dir/Src/airSpeed.c.o: ../Src/airSpeed.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/testBuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/runTests.dir/Src/airSpeed.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wall -Wextra -g -o CMakeFiles/runTests.dir/Src/airSpeed.c.o   -c /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/Src/airSpeed.c

CMakeFiles/runTests.dir/Src/airSpeed.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/runTests.dir/Src/airSpeed.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wall -Wextra -g -E /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/Src/airSpeed.c > CMakeFiles/runTests.dir/Src/airSpeed.c.i

CMakeFiles/runTests.dir/Src/airSpeed.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/runTests.dir/Src/airSpeed.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wall -Wextra -g -S /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/Src/airSpeed.c -o CMakeFiles/runTests.dir/Src/airSpeed.c.s

CMakeFiles/runTests.dir/Src/airSpeed.c.o.requires:

.PHONY : CMakeFiles/runTests.dir/Src/airSpeed.c.o.requires

CMakeFiles/runTests.dir/Src/airSpeed.c.o.provides: CMakeFiles/runTests.dir/Src/airSpeed.c.o.requires
	$(MAKE) -f CMakeFiles/runTests.dir/build.make CMakeFiles/runTests.dir/Src/airSpeed.c.o.provides.build
.PHONY : CMakeFiles/runTests.dir/Src/airSpeed.c.o.provides

CMakeFiles/runTests.dir/Src/airSpeed.c.o.provides.build: CMakeFiles/runTests.dir/Src/airSpeed.c.o


CMakeFiles/runTests.dir/Src/altimeter.c.o: CMakeFiles/runTests.dir/flags.make
CMakeFiles/runTests.dir/Src/altimeter.c.o: ../Src/altimeter.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/testBuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/runTests.dir/Src/altimeter.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wall -Wextra -g -o CMakeFiles/runTests.dir/Src/altimeter.c.o   -c /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/Src/altimeter.c

CMakeFiles/runTests.dir/Src/altimeter.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/runTests.dir/Src/altimeter.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wall -Wextra -g -E /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/Src/altimeter.c > CMakeFiles/runTests.dir/Src/altimeter.c.i

CMakeFiles/runTests.dir/Src/altimeter.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/runTests.dir/Src/altimeter.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wall -Wextra -g -S /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/Src/altimeter.c -o CMakeFiles/runTests.dir/Src/altimeter.c.s

CMakeFiles/runTests.dir/Src/altimeter.c.o.requires:

.PHONY : CMakeFiles/runTests.dir/Src/altimeter.c.o.requires

CMakeFiles/runTests.dir/Src/altimeter.c.o.provides: CMakeFiles/runTests.dir/Src/altimeter.c.o.requires
	$(MAKE) -f CMakeFiles/runTests.dir/build.make CMakeFiles/runTests.dir/Src/altimeter.c.o.provides.build
.PHONY : CMakeFiles/runTests.dir/Src/altimeter.c.o.provides

CMakeFiles/runTests.dir/Src/altimeter.c.o.provides.build: CMakeFiles/runTests.dir/Src/altimeter.c.o


CMakeFiles/runTests.dir/Src/ByteQueue.c.o: CMakeFiles/runTests.dir/flags.make
CMakeFiles/runTests.dir/Src/ByteQueue.c.o: ../Src/ByteQueue.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/testBuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/runTests.dir/Src/ByteQueue.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wall -Wextra -g -o CMakeFiles/runTests.dir/Src/ByteQueue.c.o   -c /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/Src/ByteQueue.c

CMakeFiles/runTests.dir/Src/ByteQueue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/runTests.dir/Src/ByteQueue.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wall -Wextra -g -E /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/Src/ByteQueue.c > CMakeFiles/runTests.dir/Src/ByteQueue.c.i

CMakeFiles/runTests.dir/Src/ByteQueue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/runTests.dir/Src/ByteQueue.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wall -Wextra -g -S /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/Src/ByteQueue.c -o CMakeFiles/runTests.dir/Src/ByteQueue.c.s

CMakeFiles/runTests.dir/Src/ByteQueue.c.o.requires:

.PHONY : CMakeFiles/runTests.dir/Src/ByteQueue.c.o.requires

CMakeFiles/runTests.dir/Src/ByteQueue.c.o.provides: CMakeFiles/runTests.dir/Src/ByteQueue.c.o.requires
	$(MAKE) -f CMakeFiles/runTests.dir/build.make CMakeFiles/runTests.dir/Src/ByteQueue.c.o.provides.build
.PHONY : CMakeFiles/runTests.dir/Src/ByteQueue.c.o.provides

CMakeFiles/runTests.dir/Src/ByteQueue.c.o.provides.build: CMakeFiles/runTests.dir/Src/ByteQueue.c.o


CMakeFiles/runTests.dir/Src/mpu9255.c.o: CMakeFiles/runTests.dir/flags.make
CMakeFiles/runTests.dir/Src/mpu9255.c.o: ../Src/mpu9255.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/testBuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/runTests.dir/Src/mpu9255.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wall -Wextra -g -o CMakeFiles/runTests.dir/Src/mpu9255.c.o   -c /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/Src/mpu9255.c

CMakeFiles/runTests.dir/Src/mpu9255.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/runTests.dir/Src/mpu9255.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wall -Wextra -g -E /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/Src/mpu9255.c > CMakeFiles/runTests.dir/Src/mpu9255.c.i

CMakeFiles/runTests.dir/Src/mpu9255.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/runTests.dir/Src/mpu9255.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wall -Wextra -g -S /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/Src/mpu9255.c -o CMakeFiles/runTests.dir/Src/mpu9255.c.s

CMakeFiles/runTests.dir/Src/mpu9255.c.o.requires:

.PHONY : CMakeFiles/runTests.dir/Src/mpu9255.c.o.requires

CMakeFiles/runTests.dir/Src/mpu9255.c.o.provides: CMakeFiles/runTests.dir/Src/mpu9255.c.o.requires
	$(MAKE) -f CMakeFiles/runTests.dir/build.make CMakeFiles/runTests.dir/Src/mpu9255.c.o.provides.build
.PHONY : CMakeFiles/runTests.dir/Src/mpu9255.c.o.provides

CMakeFiles/runTests.dir/Src/mpu9255.c.o.provides.build: CMakeFiles/runTests.dir/Src/mpu9255.c.o


CMakeFiles/runTests.dir/Src/NMEAParser.c.o: CMakeFiles/runTests.dir/flags.make
CMakeFiles/runTests.dir/Src/NMEAParser.c.o: ../Src/NMEAParser.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/testBuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/runTests.dir/Src/NMEAParser.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wall -Wextra -g -o CMakeFiles/runTests.dir/Src/NMEAParser.c.o   -c /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/Src/NMEAParser.c

CMakeFiles/runTests.dir/Src/NMEAParser.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/runTests.dir/Src/NMEAParser.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wall -Wextra -g -E /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/Src/NMEAParser.c > CMakeFiles/runTests.dir/Src/NMEAParser.c.i

CMakeFiles/runTests.dir/Src/NMEAParser.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/runTests.dir/Src/NMEAParser.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wall -Wextra -g -S /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/Src/NMEAParser.c -o CMakeFiles/runTests.dir/Src/NMEAParser.c.s

CMakeFiles/runTests.dir/Src/NMEAParser.c.o.requires:

.PHONY : CMakeFiles/runTests.dir/Src/NMEAParser.c.o.requires

CMakeFiles/runTests.dir/Src/NMEAParser.c.o.provides: CMakeFiles/runTests.dir/Src/NMEAParser.c.o.requires
	$(MAKE) -f CMakeFiles/runTests.dir/build.make CMakeFiles/runTests.dir/Src/NMEAParser.c.o.provides.build
.PHONY : CMakeFiles/runTests.dir/Src/NMEAParser.c.o.provides

CMakeFiles/runTests.dir/Src/NMEAParser.c.o.provides.build: CMakeFiles/runTests.dir/Src/NMEAParser.c.o


CMakeFiles/runTests.dir/Src/PID.cpp.o: CMakeFiles/runTests.dir/flags.make
CMakeFiles/runTests.dir/Src/PID.cpp.o: ../Src/PID.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/testBuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/runTests.dir/Src/PID.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wall -Wextra -g -o CMakeFiles/runTests.dir/Src/PID.cpp.o -c /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/Src/PID.cpp

CMakeFiles/runTests.dir/Src/PID.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runTests.dir/Src/PID.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wall -Wextra -g -E /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/Src/PID.cpp > CMakeFiles/runTests.dir/Src/PID.cpp.i

CMakeFiles/runTests.dir/Src/PID.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runTests.dir/Src/PID.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wall -Wextra -g -S /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/Src/PID.cpp -o CMakeFiles/runTests.dir/Src/PID.cpp.s

CMakeFiles/runTests.dir/Src/PID.cpp.o.requires:

.PHONY : CMakeFiles/runTests.dir/Src/PID.cpp.o.requires

CMakeFiles/runTests.dir/Src/PID.cpp.o.provides: CMakeFiles/runTests.dir/Src/PID.cpp.o.requires
	$(MAKE) -f CMakeFiles/runTests.dir/build.make CMakeFiles/runTests.dir/Src/PID.cpp.o.provides.build
.PHONY : CMakeFiles/runTests.dir/Src/PID.cpp.o.provides

CMakeFiles/runTests.dir/Src/PID.cpp.o.provides.build: CMakeFiles/runTests.dir/Src/PID.cpp.o


CMakeFiles/runTests.dir/UnitTestSrc/testMain.cpp.o: CMakeFiles/runTests.dir/flags.make
CMakeFiles/runTests.dir/UnitTestSrc/testMain.cpp.o: ../UnitTestSrc/testMain.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/testBuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/runTests.dir/UnitTestSrc/testMain.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wall -Wextra -g -o CMakeFiles/runTests.dir/UnitTestSrc/testMain.cpp.o -c /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/UnitTestSrc/testMain.cpp

CMakeFiles/runTests.dir/UnitTestSrc/testMain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runTests.dir/UnitTestSrc/testMain.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wall -Wextra -g -E /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/UnitTestSrc/testMain.cpp > CMakeFiles/runTests.dir/UnitTestSrc/testMain.cpp.i

CMakeFiles/runTests.dir/UnitTestSrc/testMain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runTests.dir/UnitTestSrc/testMain.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wall -Wextra -g -S /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/UnitTestSrc/testMain.cpp -o CMakeFiles/runTests.dir/UnitTestSrc/testMain.cpp.s

CMakeFiles/runTests.dir/UnitTestSrc/testMain.cpp.o.requires:

.PHONY : CMakeFiles/runTests.dir/UnitTestSrc/testMain.cpp.o.requires

CMakeFiles/runTests.dir/UnitTestSrc/testMain.cpp.o.provides: CMakeFiles/runTests.dir/UnitTestSrc/testMain.cpp.o.requires
	$(MAKE) -f CMakeFiles/runTests.dir/build.make CMakeFiles/runTests.dir/UnitTestSrc/testMain.cpp.o.provides.build
.PHONY : CMakeFiles/runTests.dir/UnitTestSrc/testMain.cpp.o.provides

CMakeFiles/runTests.dir/UnitTestSrc/testMain.cpp.o.provides.build: CMakeFiles/runTests.dir/UnitTestSrc/testMain.cpp.o


CMakeFiles/runTests.dir/UnitTestSrc/Test_Airspeed.cpp.o: CMakeFiles/runTests.dir/flags.make
CMakeFiles/runTests.dir/UnitTestSrc/Test_Airspeed.cpp.o: ../UnitTestSrc/Test_Airspeed.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/testBuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/runTests.dir/UnitTestSrc/Test_Airspeed.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wall -Wextra -g -o CMakeFiles/runTests.dir/UnitTestSrc/Test_Airspeed.cpp.o -c /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/UnitTestSrc/Test_Airspeed.cpp

CMakeFiles/runTests.dir/UnitTestSrc/Test_Airspeed.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runTests.dir/UnitTestSrc/Test_Airspeed.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wall -Wextra -g -E /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/UnitTestSrc/Test_Airspeed.cpp > CMakeFiles/runTests.dir/UnitTestSrc/Test_Airspeed.cpp.i

CMakeFiles/runTests.dir/UnitTestSrc/Test_Airspeed.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runTests.dir/UnitTestSrc/Test_Airspeed.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wall -Wextra -g -S /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/UnitTestSrc/Test_Airspeed.cpp -o CMakeFiles/runTests.dir/UnitTestSrc/Test_Airspeed.cpp.s

CMakeFiles/runTests.dir/UnitTestSrc/Test_Airspeed.cpp.o.requires:

.PHONY : CMakeFiles/runTests.dir/UnitTestSrc/Test_Airspeed.cpp.o.requires

CMakeFiles/runTests.dir/UnitTestSrc/Test_Airspeed.cpp.o.provides: CMakeFiles/runTests.dir/UnitTestSrc/Test_Airspeed.cpp.o.requires
	$(MAKE) -f CMakeFiles/runTests.dir/build.make CMakeFiles/runTests.dir/UnitTestSrc/Test_Airspeed.cpp.o.provides.build
.PHONY : CMakeFiles/runTests.dir/UnitTestSrc/Test_Airspeed.cpp.o.provides

CMakeFiles/runTests.dir/UnitTestSrc/Test_Airspeed.cpp.o.provides.build: CMakeFiles/runTests.dir/UnitTestSrc/Test_Airspeed.cpp.o


CMakeFiles/runTests.dir/UnitTestSrc/Test_Altimeter.cpp.o: CMakeFiles/runTests.dir/flags.make
CMakeFiles/runTests.dir/UnitTestSrc/Test_Altimeter.cpp.o: ../UnitTestSrc/Test_Altimeter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/testBuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/runTests.dir/UnitTestSrc/Test_Altimeter.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wall -Wextra -g -o CMakeFiles/runTests.dir/UnitTestSrc/Test_Altimeter.cpp.o -c /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/UnitTestSrc/Test_Altimeter.cpp

CMakeFiles/runTests.dir/UnitTestSrc/Test_Altimeter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runTests.dir/UnitTestSrc/Test_Altimeter.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wall -Wextra -g -E /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/UnitTestSrc/Test_Altimeter.cpp > CMakeFiles/runTests.dir/UnitTestSrc/Test_Altimeter.cpp.i

CMakeFiles/runTests.dir/UnitTestSrc/Test_Altimeter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runTests.dir/UnitTestSrc/Test_Altimeter.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wall -Wextra -g -S /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/UnitTestSrc/Test_Altimeter.cpp -o CMakeFiles/runTests.dir/UnitTestSrc/Test_Altimeter.cpp.s

CMakeFiles/runTests.dir/UnitTestSrc/Test_Altimeter.cpp.o.requires:

.PHONY : CMakeFiles/runTests.dir/UnitTestSrc/Test_Altimeter.cpp.o.requires

CMakeFiles/runTests.dir/UnitTestSrc/Test_Altimeter.cpp.o.provides: CMakeFiles/runTests.dir/UnitTestSrc/Test_Altimeter.cpp.o.requires
	$(MAKE) -f CMakeFiles/runTests.dir/build.make CMakeFiles/runTests.dir/UnitTestSrc/Test_Altimeter.cpp.o.provides.build
.PHONY : CMakeFiles/runTests.dir/UnitTestSrc/Test_Altimeter.cpp.o.provides

CMakeFiles/runTests.dir/UnitTestSrc/Test_Altimeter.cpp.o.provides.build: CMakeFiles/runTests.dir/UnitTestSrc/Test_Altimeter.cpp.o


CMakeFiles/runTests.dir/UnitTestSrc/Test_mpu9255.cpp.o: CMakeFiles/runTests.dir/flags.make
CMakeFiles/runTests.dir/UnitTestSrc/Test_mpu9255.cpp.o: ../UnitTestSrc/Test_mpu9255.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/testBuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/runTests.dir/UnitTestSrc/Test_mpu9255.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wall -Wextra -g -o CMakeFiles/runTests.dir/UnitTestSrc/Test_mpu9255.cpp.o -c /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/UnitTestSrc/Test_mpu9255.cpp

CMakeFiles/runTests.dir/UnitTestSrc/Test_mpu9255.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runTests.dir/UnitTestSrc/Test_mpu9255.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wall -Wextra -g -E /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/UnitTestSrc/Test_mpu9255.cpp > CMakeFiles/runTests.dir/UnitTestSrc/Test_mpu9255.cpp.i

CMakeFiles/runTests.dir/UnitTestSrc/Test_mpu9255.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runTests.dir/UnitTestSrc/Test_mpu9255.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wall -Wextra -g -S /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/UnitTestSrc/Test_mpu9255.cpp -o CMakeFiles/runTests.dir/UnitTestSrc/Test_mpu9255.cpp.s

CMakeFiles/runTests.dir/UnitTestSrc/Test_mpu9255.cpp.o.requires:

.PHONY : CMakeFiles/runTests.dir/UnitTestSrc/Test_mpu9255.cpp.o.requires

CMakeFiles/runTests.dir/UnitTestSrc/Test_mpu9255.cpp.o.provides: CMakeFiles/runTests.dir/UnitTestSrc/Test_mpu9255.cpp.o.requires
	$(MAKE) -f CMakeFiles/runTests.dir/build.make CMakeFiles/runTests.dir/UnitTestSrc/Test_mpu9255.cpp.o.provides.build
.PHONY : CMakeFiles/runTests.dir/UnitTestSrc/Test_mpu9255.cpp.o.provides

CMakeFiles/runTests.dir/UnitTestSrc/Test_mpu9255.cpp.o.provides.build: CMakeFiles/runTests.dir/UnitTestSrc/Test_mpu9255.cpp.o


# Object files for target runTests
runTests_OBJECTS = \
"CMakeFiles/runTests.dir/Src/airSpeed.c.o" \
"CMakeFiles/runTests.dir/Src/altimeter.c.o" \
"CMakeFiles/runTests.dir/Src/ByteQueue.c.o" \
"CMakeFiles/runTests.dir/Src/mpu9255.c.o" \
"CMakeFiles/runTests.dir/Src/NMEAParser.c.o" \
"CMakeFiles/runTests.dir/Src/PID.cpp.o" \
"CMakeFiles/runTests.dir/UnitTestSrc/testMain.cpp.o" \
"CMakeFiles/runTests.dir/UnitTestSrc/Test_Airspeed.cpp.o" \
"CMakeFiles/runTests.dir/UnitTestSrc/Test_Altimeter.cpp.o" \
"CMakeFiles/runTests.dir/UnitTestSrc/Test_mpu9255.cpp.o"

# External object files for target runTests
runTests_EXTERNAL_OBJECTS =

runTests: CMakeFiles/runTests.dir/Src/airSpeed.c.o
runTests: CMakeFiles/runTests.dir/Src/altimeter.c.o
runTests: CMakeFiles/runTests.dir/Src/ByteQueue.c.o
runTests: CMakeFiles/runTests.dir/Src/mpu9255.c.o
runTests: CMakeFiles/runTests.dir/Src/NMEAParser.c.o
runTests: CMakeFiles/runTests.dir/Src/PID.cpp.o
runTests: CMakeFiles/runTests.dir/UnitTestSrc/testMain.cpp.o
runTests: CMakeFiles/runTests.dir/UnitTestSrc/Test_Airspeed.cpp.o
runTests: CMakeFiles/runTests.dir/UnitTestSrc/Test_Altimeter.cpp.o
runTests: CMakeFiles/runTests.dir/UnitTestSrc/Test_mpu9255.cpp.o
runTests: CMakeFiles/runTests.dir/build.make
runTests: /usr/lib/libgtest.a
runTests: CMakeFiles/runTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/testBuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX executable runTests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/runTests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/runTests.dir/build: runTests

.PHONY : CMakeFiles/runTests.dir/build

CMakeFiles/runTests.dir/requires: CMakeFiles/runTests.dir/Src/airSpeed.c.o.requires
CMakeFiles/runTests.dir/requires: CMakeFiles/runTests.dir/Src/altimeter.c.o.requires
CMakeFiles/runTests.dir/requires: CMakeFiles/runTests.dir/Src/ByteQueue.c.o.requires
CMakeFiles/runTests.dir/requires: CMakeFiles/runTests.dir/Src/mpu9255.c.o.requires
CMakeFiles/runTests.dir/requires: CMakeFiles/runTests.dir/Src/NMEAParser.c.o.requires
CMakeFiles/runTests.dir/requires: CMakeFiles/runTests.dir/Src/PID.cpp.o.requires
CMakeFiles/runTests.dir/requires: CMakeFiles/runTests.dir/UnitTestSrc/testMain.cpp.o.requires
CMakeFiles/runTests.dir/requires: CMakeFiles/runTests.dir/UnitTestSrc/Test_Airspeed.cpp.o.requires
CMakeFiles/runTests.dir/requires: CMakeFiles/runTests.dir/UnitTestSrc/Test_Altimeter.cpp.o.requires
CMakeFiles/runTests.dir/requires: CMakeFiles/runTests.dir/UnitTestSrc/Test_mpu9255.cpp.o.requires

.PHONY : CMakeFiles/runTests.dir/requires

CMakeFiles/runTests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/runTests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/runTests.dir/clean

CMakeFiles/runTests.dir/depend:
	cd /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/testBuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/testBuild /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/testBuild /mnt/c/Users/Antho/repos/ZeroPilot-SW/Autopilot/testBuild/CMakeFiles/runTests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/runTests.dir/depend

