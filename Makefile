# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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
CMAKE_SOURCE_DIR = /home/csmajs/jzhan591/final-project-ncha007-jzhan591-akanc003-jwang705

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/csmajs/jzhan591/final-project-ncha007-jzhan591-akanc003-jwang705

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Available install components are: \"gmock\" \"gtest\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components
.PHONY : list_install_components/fast

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local/fast

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/csmajs/jzhan591/final-project-ncha007-jzhan591-akanc003-jwang705/CMakeFiles /home/csmajs/jzhan591/final-project-ncha007-jzhan591-akanc003-jwang705//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/csmajs/jzhan591/final-project-ncha007-jzhan591-akanc003-jwang705/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named game

# Build rule for target.
game: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 game
.PHONY : game

# fast build rule for target.
game/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/build
.PHONY : game/fast

#=============================================================================
# Target rules for targets named gmock_main

# Build rule for target.
gmock_main: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 gmock_main
.PHONY : gmock_main

# fast build rule for target.
gmock_main/fast:
	$(MAKE) $(MAKESILENT) -f googletest/googlemock/CMakeFiles/gmock_main.dir/build.make googletest/googlemock/CMakeFiles/gmock_main.dir/build
.PHONY : gmock_main/fast

#=============================================================================
# Target rules for targets named gmock

# Build rule for target.
gmock: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 gmock
.PHONY : gmock

# fast build rule for target.
gmock/fast:
	$(MAKE) $(MAKESILENT) -f googletest/googlemock/CMakeFiles/gmock.dir/build.make googletest/googlemock/CMakeFiles/gmock.dir/build
.PHONY : gmock/fast

#=============================================================================
# Target rules for targets named gtest_main

# Build rule for target.
gtest_main: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 gtest_main
.PHONY : gtest_main

# fast build rule for target.
gtest_main/fast:
	$(MAKE) $(MAKESILENT) -f googletest/googletest/CMakeFiles/gtest_main.dir/build.make googletest/googletest/CMakeFiles/gtest_main.dir/build
.PHONY : gtest_main/fast

#=============================================================================
# Target rules for targets named gtest

# Build rule for target.
gtest: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 gtest
.PHONY : gtest

# fast build rule for target.
gtest/fast:
	$(MAKE) $(MAKESILENT) -f googletest/googletest/CMakeFiles/gtest.dir/build.make googletest/googletest/CMakeFiles/gtest.dir/build
.PHONY : gtest/fast

Testing/testStore.o: Testing/testStore.cpp.o
.PHONY : Testing/testStore.o

# target to build an object file
Testing/testStore.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/Testing/testStore.cpp.o
.PHONY : Testing/testStore.cpp.o

Testing/testStore.i: Testing/testStore.cpp.i
.PHONY : Testing/testStore.i

# target to preprocess a source file
Testing/testStore.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/Testing/testStore.cpp.i
.PHONY : Testing/testStore.cpp.i

Testing/testStore.s: Testing/testStore.cpp.s
.PHONY : Testing/testStore.s

# target to generate assembly for a file
Testing/testStore.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/Testing/testStore.cpp.s
.PHONY : Testing/testStore.cpp.s

src/Character.o: src/Character.cpp.o
.PHONY : src/Character.o

# target to build an object file
src/Character.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/Character.cpp.o
.PHONY : src/Character.cpp.o

src/Character.i: src/Character.cpp.i
.PHONY : src/Character.i

# target to preprocess a source file
src/Character.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/Character.cpp.i
.PHONY : src/Character.cpp.i

src/Character.s: src/Character.cpp.s
.PHONY : src/Character.s

# target to generate assembly for a file
src/Character.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/Character.cpp.s
.PHONY : src/Character.cpp.s

src/Inventory.o: src/Inventory.cpp.o
.PHONY : src/Inventory.o

# target to build an object file
src/Inventory.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/Inventory.cpp.o
.PHONY : src/Inventory.cpp.o

src/Inventory.i: src/Inventory.cpp.i
.PHONY : src/Inventory.i

# target to preprocess a source file
src/Inventory.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/Inventory.cpp.i
.PHONY : src/Inventory.cpp.i

src/Inventory.s: src/Inventory.cpp.s
.PHONY : src/Inventory.s

# target to generate assembly for a file
src/Inventory.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/Inventory.cpp.s
.PHONY : src/Inventory.cpp.s

src/gamble.o: src/gamble.cpp.o
.PHONY : src/gamble.o

# target to build an object file
src/gamble.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/gamble.cpp.o
.PHONY : src/gamble.cpp.o

src/gamble.i: src/gamble.cpp.i
.PHONY : src/gamble.i

# target to preprocess a source file
src/gamble.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/gamble.cpp.i
.PHONY : src/gamble.cpp.i

src/gamble.s: src/gamble.cpp.s
.PHONY : src/gamble.s

# target to generate assembly for a file
src/gamble.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/gamble.cpp.s
.PHONY : src/gamble.cpp.s

src/game.o: src/game.cpp.o
.PHONY : src/game.o

# target to build an object file
src/game.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/game.cpp.o
.PHONY : src/game.cpp.o

src/game.i: src/game.cpp.i
.PHONY : src/game.i

# target to preprocess a source file
src/game.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/game.cpp.i
.PHONY : src/game.cpp.i

src/game.s: src/game.cpp.s
.PHONY : src/game.s

# target to generate assembly for a file
src/game.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/game.cpp.s
.PHONY : src/game.cpp.s

src/store.o: src/store.cpp.o
.PHONY : src/store.o

# target to build an object file
src/store.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/store.cpp.o
.PHONY : src/store.cpp.o

src/store.i: src/store.cpp.i
.PHONY : src/store.i

# target to preprocess a source file
src/store.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/store.cpp.i
.PHONY : src/store.cpp.i

src/store.s: src/store.cpp.s
.PHONY : src/store.s

# target to generate assembly for a file
src/store.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/game.dir/build.make CMakeFiles/game.dir/src/store.cpp.s
.PHONY : src/store.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... install"
	@echo "... install/local"
	@echo "... install/strip"
	@echo "... list_install_components"
	@echo "... rebuild_cache"
	@echo "... game"
	@echo "... gmock"
	@echo "... gmock_main"
	@echo "... gtest"
	@echo "... gtest_main"
	@echo "... Testing/testStore.o"
	@echo "... Testing/testStore.i"
	@echo "... Testing/testStore.s"
	@echo "... src/Character.o"
	@echo "... src/Character.i"
	@echo "... src/Character.s"
	@echo "... src/Inventory.o"
	@echo "... src/Inventory.i"
	@echo "... src/Inventory.s"
	@echo "... src/gamble.o"
	@echo "... src/gamble.i"
	@echo "... src/gamble.s"
	@echo "... src/game.o"
	@echo "... src/game.i"
	@echo "... src/game.s"
	@echo "... src/store.o"
	@echo "... src/store.i"
	@echo "... src/store.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
