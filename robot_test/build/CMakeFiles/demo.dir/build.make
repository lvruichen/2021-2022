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
CMAKE_COMMAND = "C:/Program Files/CMake/bin/cmake.exe"

# The command to remove a file.
RM = "C:/Program Files/CMake/bin/cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:/Users/23746/Desktop/robot_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/Users/23746/Desktop/robot_test/build

# Include any dependencies generated for this target.
include CMakeFiles/demo.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/demo.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/demo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/demo.dir/flags.make

CMakeFiles/demo.dir/main.cpp.obj: CMakeFiles/demo.dir/flags.make
CMakeFiles/demo.dir/main.cpp.obj: ../main.cpp
CMakeFiles/demo.dir/main.cpp.obj: CMakeFiles/demo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/23746/Desktop/robot_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/demo.dir/main.cpp.obj"
	D:/mingw/bin/mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo.dir/main.cpp.obj -MF CMakeFiles/demo.dir/main.cpp.obj.d -o CMakeFiles/demo.dir/main.cpp.obj -c C:/Users/23746/Desktop/robot_test/main.cpp

CMakeFiles/demo.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo.dir/main.cpp.i"
	D:/mingw/bin/mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Users/23746/Desktop/robot_test/main.cpp > CMakeFiles/demo.dir/main.cpp.i

CMakeFiles/demo.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo.dir/main.cpp.s"
	D:/mingw/bin/mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Users/23746/Desktop/robot_test/main.cpp -o CMakeFiles/demo.dir/main.cpp.s

CMakeFiles/demo.dir/Srobotconfig.cpp.obj: CMakeFiles/demo.dir/flags.make
CMakeFiles/demo.dir/Srobotconfig.cpp.obj: ../Srobotconfig.cpp
CMakeFiles/demo.dir/Srobotconfig.cpp.obj: CMakeFiles/demo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/23746/Desktop/robot_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/demo.dir/Srobotconfig.cpp.obj"
	D:/mingw/bin/mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo.dir/Srobotconfig.cpp.obj -MF CMakeFiles/demo.dir/Srobotconfig.cpp.obj.d -o CMakeFiles/demo.dir/Srobotconfig.cpp.obj -c C:/Users/23746/Desktop/robot_test/Srobotconfig.cpp

CMakeFiles/demo.dir/Srobotconfig.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo.dir/Srobotconfig.cpp.i"
	D:/mingw/bin/mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Users/23746/Desktop/robot_test/Srobotconfig.cpp > CMakeFiles/demo.dir/Srobotconfig.cpp.i

CMakeFiles/demo.dir/Srobotconfig.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo.dir/Srobotconfig.cpp.s"
	D:/mingw/bin/mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Users/23746/Desktop/robot_test/Srobotconfig.cpp -o CMakeFiles/demo.dir/Srobotconfig.cpp.s

# Object files for target demo
demo_OBJECTS = \
"CMakeFiles/demo.dir/main.cpp.obj" \
"CMakeFiles/demo.dir/Srobotconfig.cpp.obj"

# External object files for target demo
demo_EXTERNAL_OBJECTS =

demo.exe: CMakeFiles/demo.dir/main.cpp.obj
demo.exe: CMakeFiles/demo.dir/Srobotconfig.cpp.obj
demo.exe: CMakeFiles/demo.dir/build.make
demo.exe: CMakeFiles/demo.dir/linklibs.rsp
demo.exe: CMakeFiles/demo.dir/objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:/Users/23746/Desktop/robot_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable demo.exe"
	"C:/Program Files/CMake/bin/cmake.exe" -E rm -f CMakeFiles/demo.dir/objects.a
	D:/mingw/bin/ar.exe qc CMakeFiles/demo.dir/objects.a @CMakeFiles/demo.dir/objects1.rsp
	D:/mingw/bin/mingw32-g++.exe -g -Wl,--whole-archive CMakeFiles/demo.dir/objects.a -Wl,--no-whole-archive -o demo.exe -Wl,--out-implib,libdemo.dll.a -Wl,--major-image-version,0,--minor-image-version,0 @CMakeFiles/demo.dir/linklibs.rsp

# Rule to build all files generated by this target.
CMakeFiles/demo.dir/build: demo.exe
.PHONY : CMakeFiles/demo.dir/build

CMakeFiles/demo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/demo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/demo.dir/clean

CMakeFiles/demo.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/Users/23746/Desktop/robot_test C:/Users/23746/Desktop/robot_test C:/Users/23746/Desktop/robot_test/build C:/Users/23746/Desktop/robot_test/build C:/Users/23746/Desktop/robot_test/build/CMakeFiles/demo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/demo.dir/depend

