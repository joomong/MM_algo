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
include CMakeFiles/avellaneda.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/avellaneda.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/avellaneda.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/avellaneda.dir/flags.make

CMakeFiles/avellaneda.dir/main.cpp.o: CMakeFiles/avellaneda.dir/flags.make
CMakeFiles/avellaneda.dir/main.cpp.o: ../main.cpp
CMakeFiles/avellaneda.dir/main.cpp.o: CMakeFiles/avellaneda.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/StochMak/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/avellaneda.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/avellaneda.dir/main.cpp.o -MF CMakeFiles/avellaneda.dir/main.cpp.o.d -o CMakeFiles/avellaneda.dir/main.cpp.o -c /home/ubuntu/StochMak/main.cpp

CMakeFiles/avellaneda.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/avellaneda.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/StochMak/main.cpp > CMakeFiles/avellaneda.dir/main.cpp.i

CMakeFiles/avellaneda.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/avellaneda.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/StochMak/main.cpp -o CMakeFiles/avellaneda.dir/main.cpp.s

CMakeFiles/avellaneda.dir/AvellanedaStrategy.cpp.o: CMakeFiles/avellaneda.dir/flags.make
CMakeFiles/avellaneda.dir/AvellanedaStrategy.cpp.o: ../AvellanedaStrategy.cpp
CMakeFiles/avellaneda.dir/AvellanedaStrategy.cpp.o: CMakeFiles/avellaneda.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/StochMak/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/avellaneda.dir/AvellanedaStrategy.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/avellaneda.dir/AvellanedaStrategy.cpp.o -MF CMakeFiles/avellaneda.dir/AvellanedaStrategy.cpp.o.d -o CMakeFiles/avellaneda.dir/AvellanedaStrategy.cpp.o -c /home/ubuntu/StochMak/AvellanedaStrategy.cpp

CMakeFiles/avellaneda.dir/AvellanedaStrategy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/avellaneda.dir/AvellanedaStrategy.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/StochMak/AvellanedaStrategy.cpp > CMakeFiles/avellaneda.dir/AvellanedaStrategy.cpp.i

CMakeFiles/avellaneda.dir/AvellanedaStrategy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/avellaneda.dir/AvellanedaStrategy.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/StochMak/AvellanedaStrategy.cpp -o CMakeFiles/avellaneda.dir/AvellanedaStrategy.cpp.s

CMakeFiles/avellaneda.dir/jsoncpp.cpp.o: CMakeFiles/avellaneda.dir/flags.make
CMakeFiles/avellaneda.dir/jsoncpp.cpp.o: ../jsoncpp.cpp
CMakeFiles/avellaneda.dir/jsoncpp.cpp.o: CMakeFiles/avellaneda.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/StochMak/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/avellaneda.dir/jsoncpp.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/avellaneda.dir/jsoncpp.cpp.o -MF CMakeFiles/avellaneda.dir/jsoncpp.cpp.o.d -o CMakeFiles/avellaneda.dir/jsoncpp.cpp.o -c /home/ubuntu/StochMak/jsoncpp.cpp

CMakeFiles/avellaneda.dir/jsoncpp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/avellaneda.dir/jsoncpp.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/StochMak/jsoncpp.cpp > CMakeFiles/avellaneda.dir/jsoncpp.cpp.i

CMakeFiles/avellaneda.dir/jsoncpp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/avellaneda.dir/jsoncpp.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/StochMak/jsoncpp.cpp -o CMakeFiles/avellaneda.dir/jsoncpp.cpp.s

CMakeFiles/avellaneda.dir/EstimationAlgo.cpp.o: CMakeFiles/avellaneda.dir/flags.make
CMakeFiles/avellaneda.dir/EstimationAlgo.cpp.o: ../EstimationAlgo.cpp
CMakeFiles/avellaneda.dir/EstimationAlgo.cpp.o: CMakeFiles/avellaneda.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/StochMak/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/avellaneda.dir/EstimationAlgo.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/avellaneda.dir/EstimationAlgo.cpp.o -MF CMakeFiles/avellaneda.dir/EstimationAlgo.cpp.o.d -o CMakeFiles/avellaneda.dir/EstimationAlgo.cpp.o -c /home/ubuntu/StochMak/EstimationAlgo.cpp

CMakeFiles/avellaneda.dir/EstimationAlgo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/avellaneda.dir/EstimationAlgo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/StochMak/EstimationAlgo.cpp > CMakeFiles/avellaneda.dir/EstimationAlgo.cpp.i

CMakeFiles/avellaneda.dir/EstimationAlgo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/avellaneda.dir/EstimationAlgo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/StochMak/EstimationAlgo.cpp -o CMakeFiles/avellaneda.dir/EstimationAlgo.cpp.s

CMakeFiles/avellaneda.dir/Utility.cpp.o: CMakeFiles/avellaneda.dir/flags.make
CMakeFiles/avellaneda.dir/Utility.cpp.o: ../Utility.cpp
CMakeFiles/avellaneda.dir/Utility.cpp.o: CMakeFiles/avellaneda.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/StochMak/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/avellaneda.dir/Utility.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/avellaneda.dir/Utility.cpp.o -MF CMakeFiles/avellaneda.dir/Utility.cpp.o.d -o CMakeFiles/avellaneda.dir/Utility.cpp.o -c /home/ubuntu/StochMak/Utility.cpp

CMakeFiles/avellaneda.dir/Utility.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/avellaneda.dir/Utility.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/StochMak/Utility.cpp > CMakeFiles/avellaneda.dir/Utility.cpp.i

CMakeFiles/avellaneda.dir/Utility.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/avellaneda.dir/Utility.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/StochMak/Utility.cpp -o CMakeFiles/avellaneda.dir/Utility.cpp.s

# Object files for target avellaneda
avellaneda_OBJECTS = \
"CMakeFiles/avellaneda.dir/main.cpp.o" \
"CMakeFiles/avellaneda.dir/AvellanedaStrategy.cpp.o" \
"CMakeFiles/avellaneda.dir/jsoncpp.cpp.o" \
"CMakeFiles/avellaneda.dir/EstimationAlgo.cpp.o" \
"CMakeFiles/avellaneda.dir/Utility.cpp.o"

# External object files for target avellaneda
avellaneda_EXTERNAL_OBJECTS =

avellaneda: CMakeFiles/avellaneda.dir/main.cpp.o
avellaneda: CMakeFiles/avellaneda.dir/AvellanedaStrategy.cpp.o
avellaneda: CMakeFiles/avellaneda.dir/jsoncpp.cpp.o
avellaneda: CMakeFiles/avellaneda.dir/EstimationAlgo.cpp.o
avellaneda: CMakeFiles/avellaneda.dir/Utility.cpp.o
avellaneda: CMakeFiles/avellaneda.dir/build.make
avellaneda: /home/ubuntu/Crypto-API/build/lib/libcryptoapi.so
avellaneda: /usr/lib/libarmadillo.so
avellaneda: /usr/lib/x86_64-linux-gnu/libwebsockets.so
avellaneda: /usr/lib/x86_64-linux-gnu/libcurl.so
avellaneda: /usr/lib/x86_64-linux-gnu/libcrypto.so
avellaneda: CMakeFiles/avellaneda.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/StochMak/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable avellaneda"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/avellaneda.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/avellaneda.dir/build: avellaneda
.PHONY : CMakeFiles/avellaneda.dir/build

CMakeFiles/avellaneda.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/avellaneda.dir/cmake_clean.cmake
.PHONY : CMakeFiles/avellaneda.dir/clean

CMakeFiles/avellaneda.dir/depend:
	cd /home/ubuntu/StochMak/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/StochMak /home/ubuntu/StochMak /home/ubuntu/StochMak/build /home/ubuntu/StochMak/build /home/ubuntu/StochMak/build/CMakeFiles/avellaneda.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/avellaneda.dir/depend

