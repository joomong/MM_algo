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
CMAKE_SOURCE_DIR = /home/ubuntu/StochMak

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/StochMak/build

# Include any dependencies generated for this target.
include CMakeFiles/futures.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/futures.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/futures.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/futures.dir/flags.make

CMakeFiles/futures.dir/futures.cpp.o: CMakeFiles/futures.dir/flags.make
CMakeFiles/futures.dir/futures.cpp.o: ../futures.cpp
CMakeFiles/futures.dir/futures.cpp.o: CMakeFiles/futures.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/StochMak/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/futures.dir/futures.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/futures.dir/futures.cpp.o -MF CMakeFiles/futures.dir/futures.cpp.o.d -o CMakeFiles/futures.dir/futures.cpp.o -c /home/ubuntu/StochMak/futures.cpp

CMakeFiles/futures.dir/futures.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/futures.dir/futures.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/StochMak/futures.cpp > CMakeFiles/futures.dir/futures.cpp.i

CMakeFiles/futures.dir/futures.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/futures.dir/futures.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/StochMak/futures.cpp -o CMakeFiles/futures.dir/futures.cpp.s

CMakeFiles/futures.dir/AvellanedaStrategy.cpp.o: CMakeFiles/futures.dir/flags.make
CMakeFiles/futures.dir/AvellanedaStrategy.cpp.o: ../AvellanedaStrategy.cpp
CMakeFiles/futures.dir/AvellanedaStrategy.cpp.o: CMakeFiles/futures.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/StochMak/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/futures.dir/AvellanedaStrategy.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/futures.dir/AvellanedaStrategy.cpp.o -MF CMakeFiles/futures.dir/AvellanedaStrategy.cpp.o.d -o CMakeFiles/futures.dir/AvellanedaStrategy.cpp.o -c /home/ubuntu/StochMak/AvellanedaStrategy.cpp

CMakeFiles/futures.dir/AvellanedaStrategy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/futures.dir/AvellanedaStrategy.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/StochMak/AvellanedaStrategy.cpp > CMakeFiles/futures.dir/AvellanedaStrategy.cpp.i

CMakeFiles/futures.dir/AvellanedaStrategy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/futures.dir/AvellanedaStrategy.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/StochMak/AvellanedaStrategy.cpp -o CMakeFiles/futures.dir/AvellanedaStrategy.cpp.s

CMakeFiles/futures.dir/jsoncpp.cpp.o: CMakeFiles/futures.dir/flags.make
CMakeFiles/futures.dir/jsoncpp.cpp.o: ../jsoncpp.cpp
CMakeFiles/futures.dir/jsoncpp.cpp.o: CMakeFiles/futures.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/StochMak/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/futures.dir/jsoncpp.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/futures.dir/jsoncpp.cpp.o -MF CMakeFiles/futures.dir/jsoncpp.cpp.o.d -o CMakeFiles/futures.dir/jsoncpp.cpp.o -c /home/ubuntu/StochMak/jsoncpp.cpp

CMakeFiles/futures.dir/jsoncpp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/futures.dir/jsoncpp.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/StochMak/jsoncpp.cpp > CMakeFiles/futures.dir/jsoncpp.cpp.i

CMakeFiles/futures.dir/jsoncpp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/futures.dir/jsoncpp.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/StochMak/jsoncpp.cpp -o CMakeFiles/futures.dir/jsoncpp.cpp.s

CMakeFiles/futures.dir/EstimationAlgo.cpp.o: CMakeFiles/futures.dir/flags.make
CMakeFiles/futures.dir/EstimationAlgo.cpp.o: ../EstimationAlgo.cpp
CMakeFiles/futures.dir/EstimationAlgo.cpp.o: CMakeFiles/futures.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/StochMak/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/futures.dir/EstimationAlgo.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/futures.dir/EstimationAlgo.cpp.o -MF CMakeFiles/futures.dir/EstimationAlgo.cpp.o.d -o CMakeFiles/futures.dir/EstimationAlgo.cpp.o -c /home/ubuntu/StochMak/EstimationAlgo.cpp

CMakeFiles/futures.dir/EstimationAlgo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/futures.dir/EstimationAlgo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/StochMak/EstimationAlgo.cpp > CMakeFiles/futures.dir/EstimationAlgo.cpp.i

CMakeFiles/futures.dir/EstimationAlgo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/futures.dir/EstimationAlgo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/StochMak/EstimationAlgo.cpp -o CMakeFiles/futures.dir/EstimationAlgo.cpp.s

CMakeFiles/futures.dir/Utility.cpp.o: CMakeFiles/futures.dir/flags.make
CMakeFiles/futures.dir/Utility.cpp.o: ../Utility.cpp
CMakeFiles/futures.dir/Utility.cpp.o: CMakeFiles/futures.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/StochMak/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/futures.dir/Utility.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/futures.dir/Utility.cpp.o -MF CMakeFiles/futures.dir/Utility.cpp.o.d -o CMakeFiles/futures.dir/Utility.cpp.o -c /home/ubuntu/StochMak/Utility.cpp

CMakeFiles/futures.dir/Utility.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/futures.dir/Utility.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/StochMak/Utility.cpp > CMakeFiles/futures.dir/Utility.cpp.i

CMakeFiles/futures.dir/Utility.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/futures.dir/Utility.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/StochMak/Utility.cpp -o CMakeFiles/futures.dir/Utility.cpp.s

# Object files for target futures
futures_OBJECTS = \
"CMakeFiles/futures.dir/futures.cpp.o" \
"CMakeFiles/futures.dir/AvellanedaStrategy.cpp.o" \
"CMakeFiles/futures.dir/jsoncpp.cpp.o" \
"CMakeFiles/futures.dir/EstimationAlgo.cpp.o" \
"CMakeFiles/futures.dir/Utility.cpp.o"

# External object files for target futures
futures_EXTERNAL_OBJECTS =

futures: CMakeFiles/futures.dir/futures.cpp.o
futures: CMakeFiles/futures.dir/AvellanedaStrategy.cpp.o
futures: CMakeFiles/futures.dir/jsoncpp.cpp.o
futures: CMakeFiles/futures.dir/EstimationAlgo.cpp.o
futures: CMakeFiles/futures.dir/Utility.cpp.o
futures: CMakeFiles/futures.dir/build.make
futures: /home/ubuntu/Crypto-API/build/lib/libcryptoapi.so
futures: /usr/lib/libarmadillo.so
futures: /usr/lib/x86_64-linux-gnu/libwebsockets.so
futures: /usr/lib/x86_64-linux-gnu/libcurl.so
futures: /usr/lib/x86_64-linux-gnu/libcrypto.so
futures: CMakeFiles/futures.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/StochMak/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable futures"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/futures.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/futures.dir/build: futures
.PHONY : CMakeFiles/futures.dir/build

CMakeFiles/futures.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/futures.dir/cmake_clean.cmake
.PHONY : CMakeFiles/futures.dir/clean

CMakeFiles/futures.dir/depend:
	cd /home/ubuntu/StochMak/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/StochMak /home/ubuntu/StochMak /home/ubuntu/StochMak/build /home/ubuntu/StochMak/build /home/ubuntu/StochMak/build/CMakeFiles/futures.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/futures.dir/depend

