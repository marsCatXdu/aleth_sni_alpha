# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_SOURCE_DIR = /home/marscat/Desktop/ethereum/aleth

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/marscat/Desktop/ethereum/aleth/cmake

# Include any dependencies generated for this target.
include libethashseal/CMakeFiles/ethashseal.dir/depend.make

# Include the progress variables for this target.
include libethashseal/CMakeFiles/ethashseal.dir/progress.make

# Include the compile flags for this target's objects.
include libethashseal/CMakeFiles/ethashseal.dir/flags.make

libethashseal/CMakeFiles/ethashseal.dir/Ethash.cpp.o: libethashseal/CMakeFiles/ethashseal.dir/flags.make
libethashseal/CMakeFiles/ethashseal.dir/Ethash.cpp.o: ../libethashseal/Ethash.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marscat/Desktop/ethereum/aleth/cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libethashseal/CMakeFiles/ethashseal.dir/Ethash.cpp.o"
	cd /home/marscat/Desktop/ethereum/aleth/cmake/libethashseal && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ethashseal.dir/Ethash.cpp.o -c /home/marscat/Desktop/ethereum/aleth/libethashseal/Ethash.cpp

libethashseal/CMakeFiles/ethashseal.dir/Ethash.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ethashseal.dir/Ethash.cpp.i"
	cd /home/marscat/Desktop/ethereum/aleth/cmake/libethashseal && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marscat/Desktop/ethereum/aleth/libethashseal/Ethash.cpp > CMakeFiles/ethashseal.dir/Ethash.cpp.i

libethashseal/CMakeFiles/ethashseal.dir/Ethash.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ethashseal.dir/Ethash.cpp.s"
	cd /home/marscat/Desktop/ethereum/aleth/cmake/libethashseal && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marscat/Desktop/ethereum/aleth/libethashseal/Ethash.cpp -o CMakeFiles/ethashseal.dir/Ethash.cpp.s

libethashseal/CMakeFiles/ethashseal.dir/EthashCPUMiner.cpp.o: libethashseal/CMakeFiles/ethashseal.dir/flags.make
libethashseal/CMakeFiles/ethashseal.dir/EthashCPUMiner.cpp.o: ../libethashseal/EthashCPUMiner.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marscat/Desktop/ethereum/aleth/cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object libethashseal/CMakeFiles/ethashseal.dir/EthashCPUMiner.cpp.o"
	cd /home/marscat/Desktop/ethereum/aleth/cmake/libethashseal && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ethashseal.dir/EthashCPUMiner.cpp.o -c /home/marscat/Desktop/ethereum/aleth/libethashseal/EthashCPUMiner.cpp

libethashseal/CMakeFiles/ethashseal.dir/EthashCPUMiner.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ethashseal.dir/EthashCPUMiner.cpp.i"
	cd /home/marscat/Desktop/ethereum/aleth/cmake/libethashseal && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marscat/Desktop/ethereum/aleth/libethashseal/EthashCPUMiner.cpp > CMakeFiles/ethashseal.dir/EthashCPUMiner.cpp.i

libethashseal/CMakeFiles/ethashseal.dir/EthashCPUMiner.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ethashseal.dir/EthashCPUMiner.cpp.s"
	cd /home/marscat/Desktop/ethereum/aleth/cmake/libethashseal && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marscat/Desktop/ethereum/aleth/libethashseal/EthashCPUMiner.cpp -o CMakeFiles/ethashseal.dir/EthashCPUMiner.cpp.s

libethashseal/CMakeFiles/ethashseal.dir/EthashProofOfWork.cpp.o: libethashseal/CMakeFiles/ethashseal.dir/flags.make
libethashseal/CMakeFiles/ethashseal.dir/EthashProofOfWork.cpp.o: ../libethashseal/EthashProofOfWork.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marscat/Desktop/ethereum/aleth/cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object libethashseal/CMakeFiles/ethashseal.dir/EthashProofOfWork.cpp.o"
	cd /home/marscat/Desktop/ethereum/aleth/cmake/libethashseal && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ethashseal.dir/EthashProofOfWork.cpp.o -c /home/marscat/Desktop/ethereum/aleth/libethashseal/EthashProofOfWork.cpp

libethashseal/CMakeFiles/ethashseal.dir/EthashProofOfWork.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ethashseal.dir/EthashProofOfWork.cpp.i"
	cd /home/marscat/Desktop/ethereum/aleth/cmake/libethashseal && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marscat/Desktop/ethereum/aleth/libethashseal/EthashProofOfWork.cpp > CMakeFiles/ethashseal.dir/EthashProofOfWork.cpp.i

libethashseal/CMakeFiles/ethashseal.dir/EthashProofOfWork.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ethashseal.dir/EthashProofOfWork.cpp.s"
	cd /home/marscat/Desktop/ethereum/aleth/cmake/libethashseal && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marscat/Desktop/ethereum/aleth/libethashseal/EthashProofOfWork.cpp -o CMakeFiles/ethashseal.dir/EthashProofOfWork.cpp.s

libethashseal/CMakeFiles/ethashseal.dir/GenesisInfo.cpp.o: libethashseal/CMakeFiles/ethashseal.dir/flags.make
libethashseal/CMakeFiles/ethashseal.dir/GenesisInfo.cpp.o: ../libethashseal/GenesisInfo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marscat/Desktop/ethereum/aleth/cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object libethashseal/CMakeFiles/ethashseal.dir/GenesisInfo.cpp.o"
	cd /home/marscat/Desktop/ethereum/aleth/cmake/libethashseal && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ethashseal.dir/GenesisInfo.cpp.o -c /home/marscat/Desktop/ethereum/aleth/libethashseal/GenesisInfo.cpp

libethashseal/CMakeFiles/ethashseal.dir/GenesisInfo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ethashseal.dir/GenesisInfo.cpp.i"
	cd /home/marscat/Desktop/ethereum/aleth/cmake/libethashseal && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marscat/Desktop/ethereum/aleth/libethashseal/GenesisInfo.cpp > CMakeFiles/ethashseal.dir/GenesisInfo.cpp.i

libethashseal/CMakeFiles/ethashseal.dir/GenesisInfo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ethashseal.dir/GenesisInfo.cpp.s"
	cd /home/marscat/Desktop/ethereum/aleth/cmake/libethashseal && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marscat/Desktop/ethereum/aleth/libethashseal/GenesisInfo.cpp -o CMakeFiles/ethashseal.dir/GenesisInfo.cpp.s

# Object files for target ethashseal
ethashseal_OBJECTS = \
"CMakeFiles/ethashseal.dir/Ethash.cpp.o" \
"CMakeFiles/ethashseal.dir/EthashCPUMiner.cpp.o" \
"CMakeFiles/ethashseal.dir/EthashProofOfWork.cpp.o" \
"CMakeFiles/ethashseal.dir/GenesisInfo.cpp.o"

# External object files for target ethashseal
ethashseal_EXTERNAL_OBJECTS =

libethashseal/libethashseal.a: libethashseal/CMakeFiles/ethashseal.dir/Ethash.cpp.o
libethashseal/libethashseal.a: libethashseal/CMakeFiles/ethashseal.dir/EthashCPUMiner.cpp.o
libethashseal/libethashseal.a: libethashseal/CMakeFiles/ethashseal.dir/EthashProofOfWork.cpp.o
libethashseal/libethashseal.a: libethashseal/CMakeFiles/ethashseal.dir/GenesisInfo.cpp.o
libethashseal/libethashseal.a: libethashseal/CMakeFiles/ethashseal.dir/build.make
libethashseal/libethashseal.a: libethashseal/CMakeFiles/ethashseal.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/marscat/Desktop/ethereum/aleth/cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library libethashseal.a"
	cd /home/marscat/Desktop/ethereum/aleth/cmake/libethashseal && $(CMAKE_COMMAND) -P CMakeFiles/ethashseal.dir/cmake_clean_target.cmake
	cd /home/marscat/Desktop/ethereum/aleth/cmake/libethashseal && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ethashseal.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libethashseal/CMakeFiles/ethashseal.dir/build: libethashseal/libethashseal.a

.PHONY : libethashseal/CMakeFiles/ethashseal.dir/build

libethashseal/CMakeFiles/ethashseal.dir/clean:
	cd /home/marscat/Desktop/ethereum/aleth/cmake/libethashseal && $(CMAKE_COMMAND) -P CMakeFiles/ethashseal.dir/cmake_clean.cmake
.PHONY : libethashseal/CMakeFiles/ethashseal.dir/clean

libethashseal/CMakeFiles/ethashseal.dir/depend:
	cd /home/marscat/Desktop/ethereum/aleth/cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marscat/Desktop/ethereum/aleth /home/marscat/Desktop/ethereum/aleth/libethashseal /home/marscat/Desktop/ethereum/aleth/cmake /home/marscat/Desktop/ethereum/aleth/cmake/libethashseal /home/marscat/Desktop/ethereum/aleth/cmake/libethashseal/CMakeFiles/ethashseal.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libethashseal/CMakeFiles/ethashseal.dir/depend

