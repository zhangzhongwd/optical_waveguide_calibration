# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /opt/clion-2017.3.1/bin/cmake/bin/cmake

# The command to remove a file.
RM = /opt/clion-2017.3.1/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hang/catkin_ws/src/sriforcesensor/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hang/catkin_ws/src/sriforcesensor/src/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/src.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/src.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/src.dir/flags.make

CMakeFiles/src.dir/sriforcesensor.cpp.o: CMakeFiles/src.dir/flags.make
CMakeFiles/src.dir/sriforcesensor.cpp.o: ../sriforcesensor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hang/catkin_ws/src/sriforcesensor/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/src.dir/sriforcesensor.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src.dir/sriforcesensor.cpp.o -c /home/hang/catkin_ws/src/sriforcesensor/src/sriforcesensor.cpp

CMakeFiles/src.dir/sriforcesensor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src.dir/sriforcesensor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hang/catkin_ws/src/sriforcesensor/src/sriforcesensor.cpp > CMakeFiles/src.dir/sriforcesensor.cpp.i

CMakeFiles/src.dir/sriforcesensor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src.dir/sriforcesensor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hang/catkin_ws/src/sriforcesensor/src/sriforcesensor.cpp -o CMakeFiles/src.dir/sriforcesensor.cpp.s

CMakeFiles/src.dir/sriforcesensor.cpp.o.requires:

.PHONY : CMakeFiles/src.dir/sriforcesensor.cpp.o.requires

CMakeFiles/src.dir/sriforcesensor.cpp.o.provides: CMakeFiles/src.dir/sriforcesensor.cpp.o.requires
	$(MAKE) -f CMakeFiles/src.dir/build.make CMakeFiles/src.dir/sriforcesensor.cpp.o.provides.build
.PHONY : CMakeFiles/src.dir/sriforcesensor.cpp.o.provides

CMakeFiles/src.dir/sriforcesensor.cpp.o.provides.build: CMakeFiles/src.dir/sriforcesensor.cpp.o


CMakeFiles/src.dir/talker.cpp.o: CMakeFiles/src.dir/flags.make
CMakeFiles/src.dir/talker.cpp.o: ../talker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hang/catkin_ws/src/sriforcesensor/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/src.dir/talker.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src.dir/talker.cpp.o -c /home/hang/catkin_ws/src/sriforcesensor/src/talker.cpp

CMakeFiles/src.dir/talker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src.dir/talker.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hang/catkin_ws/src/sriforcesensor/src/talker.cpp > CMakeFiles/src.dir/talker.cpp.i

CMakeFiles/src.dir/talker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src.dir/talker.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hang/catkin_ws/src/sriforcesensor/src/talker.cpp -o CMakeFiles/src.dir/talker.cpp.s

CMakeFiles/src.dir/talker.cpp.o.requires:

.PHONY : CMakeFiles/src.dir/talker.cpp.o.requires

CMakeFiles/src.dir/talker.cpp.o.provides: CMakeFiles/src.dir/talker.cpp.o.requires
	$(MAKE) -f CMakeFiles/src.dir/build.make CMakeFiles/src.dir/talker.cpp.o.provides.build
.PHONY : CMakeFiles/src.dir/talker.cpp.o.provides

CMakeFiles/src.dir/talker.cpp.o.provides.build: CMakeFiles/src.dir/talker.cpp.o


CMakeFiles/src.dir/TCPClient.cpp.o: CMakeFiles/src.dir/flags.make
CMakeFiles/src.dir/TCPClient.cpp.o: ../TCPClient.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hang/catkin_ws/src/sriforcesensor/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/src.dir/TCPClient.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src.dir/TCPClient.cpp.o -c /home/hang/catkin_ws/src/sriforcesensor/src/TCPClient.cpp

CMakeFiles/src.dir/TCPClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src.dir/TCPClient.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hang/catkin_ws/src/sriforcesensor/src/TCPClient.cpp > CMakeFiles/src.dir/TCPClient.cpp.i

CMakeFiles/src.dir/TCPClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src.dir/TCPClient.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hang/catkin_ws/src/sriforcesensor/src/TCPClient.cpp -o CMakeFiles/src.dir/TCPClient.cpp.s

CMakeFiles/src.dir/TCPClient.cpp.o.requires:

.PHONY : CMakeFiles/src.dir/TCPClient.cpp.o.requires

CMakeFiles/src.dir/TCPClient.cpp.o.provides: CMakeFiles/src.dir/TCPClient.cpp.o.requires
	$(MAKE) -f CMakeFiles/src.dir/build.make CMakeFiles/src.dir/TCPClient.cpp.o.provides.build
.PHONY : CMakeFiles/src.dir/TCPClient.cpp.o.provides

CMakeFiles/src.dir/TCPClient.cpp.o.provides.build: CMakeFiles/src.dir/TCPClient.cpp.o


CMakeFiles/src.dir/TCPServer.cpp.o: CMakeFiles/src.dir/flags.make
CMakeFiles/src.dir/TCPServer.cpp.o: ../TCPServer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hang/catkin_ws/src/sriforcesensor/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/src.dir/TCPServer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src.dir/TCPServer.cpp.o -c /home/hang/catkin_ws/src/sriforcesensor/src/TCPServer.cpp

CMakeFiles/src.dir/TCPServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src.dir/TCPServer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hang/catkin_ws/src/sriforcesensor/src/TCPServer.cpp > CMakeFiles/src.dir/TCPServer.cpp.i

CMakeFiles/src.dir/TCPServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src.dir/TCPServer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hang/catkin_ws/src/sriforcesensor/src/TCPServer.cpp -o CMakeFiles/src.dir/TCPServer.cpp.s

CMakeFiles/src.dir/TCPServer.cpp.o.requires:

.PHONY : CMakeFiles/src.dir/TCPServer.cpp.o.requires

CMakeFiles/src.dir/TCPServer.cpp.o.provides: CMakeFiles/src.dir/TCPServer.cpp.o.requires
	$(MAKE) -f CMakeFiles/src.dir/build.make CMakeFiles/src.dir/TCPServer.cpp.o.provides.build
.PHONY : CMakeFiles/src.dir/TCPServer.cpp.o.provides

CMakeFiles/src.dir/TCPServer.cpp.o.provides.build: CMakeFiles/src.dir/TCPServer.cpp.o


# Object files for target src
src_OBJECTS = \
"CMakeFiles/src.dir/sriforcesensor.cpp.o" \
"CMakeFiles/src.dir/talker.cpp.o" \
"CMakeFiles/src.dir/TCPClient.cpp.o" \
"CMakeFiles/src.dir/TCPServer.cpp.o"

# External object files for target src
src_EXTERNAL_OBJECTS =

src: CMakeFiles/src.dir/sriforcesensor.cpp.o
src: CMakeFiles/src.dir/talker.cpp.o
src: CMakeFiles/src.dir/TCPClient.cpp.o
src: CMakeFiles/src.dir/TCPServer.cpp.o
src: CMakeFiles/src.dir/build.make
src: CMakeFiles/src.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hang/catkin_ws/src/sriforcesensor/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable src"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/src.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/src.dir/build: src

.PHONY : CMakeFiles/src.dir/build

CMakeFiles/src.dir/requires: CMakeFiles/src.dir/sriforcesensor.cpp.o.requires
CMakeFiles/src.dir/requires: CMakeFiles/src.dir/talker.cpp.o.requires
CMakeFiles/src.dir/requires: CMakeFiles/src.dir/TCPClient.cpp.o.requires
CMakeFiles/src.dir/requires: CMakeFiles/src.dir/TCPServer.cpp.o.requires

.PHONY : CMakeFiles/src.dir/requires

CMakeFiles/src.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/src.dir/cmake_clean.cmake
.PHONY : CMakeFiles/src.dir/clean

CMakeFiles/src.dir/depend:
	cd /home/hang/catkin_ws/src/sriforcesensor/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hang/catkin_ws/src/sriforcesensor/src /home/hang/catkin_ws/src/sriforcesensor/src /home/hang/catkin_ws/src/sriforcesensor/src/cmake-build-debug /home/hang/catkin_ws/src/sriforcesensor/src/cmake-build-debug /home/hang/catkin_ws/src/sriforcesensor/src/cmake-build-debug/CMakeFiles/src.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/src.dir/depend

