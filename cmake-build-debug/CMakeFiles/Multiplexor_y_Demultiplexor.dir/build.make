# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2018.3.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2018.3.3\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\MrJua\Documents\Estructura de Datos\Multiplexor y Demultiplexor"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\MrJua\Documents\Estructura de Datos\Multiplexor y Demultiplexor\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles\Multiplexor_y_Demultiplexor.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\Multiplexor_y_Demultiplexor.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\Multiplexor_y_Demultiplexor.dir\flags.make

CMakeFiles\Multiplexor_y_Demultiplexor.dir\main.c.obj: CMakeFiles\Multiplexor_y_Demultiplexor.dir\flags.make
CMakeFiles\Multiplexor_y_Demultiplexor.dir\main.c.obj: ..\main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\MrJua\Documents\Estructura de Datos\Multiplexor y Demultiplexor\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Multiplexor_y_Demultiplexor.dir/main.c.obj"
	"D:\Visual Studio\VC\Tools\MSVC\14.16.27023\bin\Hostx86\x86\cl.exe" @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\Multiplexor_y_Demultiplexor.dir\main.c.obj /FdCMakeFiles\Multiplexor_y_Demultiplexor.dir\ /FS -c "C:\Users\MrJua\Documents\Estructura de Datos\Multiplexor y Demultiplexor\main.c"
<<

CMakeFiles\Multiplexor_y_Demultiplexor.dir\main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Multiplexor_y_Demultiplexor.dir/main.c.i"
	"D:\Visual Studio\VC\Tools\MSVC\14.16.27023\bin\Hostx86\x86\cl.exe" > CMakeFiles\Multiplexor_y_Demultiplexor.dir\main.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\MrJua\Documents\Estructura de Datos\Multiplexor y Demultiplexor\main.c"
<<

CMakeFiles\Multiplexor_y_Demultiplexor.dir\main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Multiplexor_y_Demultiplexor.dir/main.c.s"
	"D:\Visual Studio\VC\Tools\MSVC\14.16.27023\bin\Hostx86\x86\cl.exe" @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\Multiplexor_y_Demultiplexor.dir\main.c.s /c "C:\Users\MrJua\Documents\Estructura de Datos\Multiplexor y Demultiplexor\main.c"
<<

# Object files for target Multiplexor_y_Demultiplexor
Multiplexor_y_Demultiplexor_OBJECTS = \
"CMakeFiles\Multiplexor_y_Demultiplexor.dir\main.c.obj"

# External object files for target Multiplexor_y_Demultiplexor
Multiplexor_y_Demultiplexor_EXTERNAL_OBJECTS =

Multiplexor_y_Demultiplexor.exe: CMakeFiles\Multiplexor_y_Demultiplexor.dir\main.c.obj
Multiplexor_y_Demultiplexor.exe: CMakeFiles\Multiplexor_y_Demultiplexor.dir\build.make
Multiplexor_y_Demultiplexor.exe: CMakeFiles\Multiplexor_y_Demultiplexor.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\MrJua\Documents\Estructura de Datos\Multiplexor y Demultiplexor\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Multiplexor_y_Demultiplexor.exe"
	"C:\Program Files\JetBrains\CLion 2018.3.3\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\Multiplexor_y_Demultiplexor.dir --manifests  -- "D:\Visual Studio\VC\Tools\MSVC\14.16.27023\bin\Hostx86\x86\link.exe" /nologo @CMakeFiles\Multiplexor_y_Demultiplexor.dir\objects1.rsp @<<
 /out:Multiplexor_y_Demultiplexor.exe /implib:Multiplexor_y_Demultiplexor.lib /pdb:"C:\Users\MrJua\Documents\Estructura de Datos\Multiplexor y Demultiplexor\cmake-build-debug\Multiplexor_y_Demultiplexor.pdb" /version:0.0  /machine:X86 /debug /INCREMENTAL /subsystem:console kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\Multiplexor_y_Demultiplexor.dir\build: Multiplexor_y_Demultiplexor.exe

.PHONY : CMakeFiles\Multiplexor_y_Demultiplexor.dir\build

CMakeFiles\Multiplexor_y_Demultiplexor.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Multiplexor_y_Demultiplexor.dir\cmake_clean.cmake
.PHONY : CMakeFiles\Multiplexor_y_Demultiplexor.dir\clean

CMakeFiles\Multiplexor_y_Demultiplexor.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" "C:\Users\MrJua\Documents\Estructura de Datos\Multiplexor y Demultiplexor" "C:\Users\MrJua\Documents\Estructura de Datos\Multiplexor y Demultiplexor" "C:\Users\MrJua\Documents\Estructura de Datos\Multiplexor y Demultiplexor\cmake-build-debug" "C:\Users\MrJua\Documents\Estructura de Datos\Multiplexor y Demultiplexor\cmake-build-debug" "C:\Users\MrJua\Documents\Estructura de Datos\Multiplexor y Demultiplexor\cmake-build-debug\CMakeFiles\Multiplexor_y_Demultiplexor.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles\Multiplexor_y_Demultiplexor.dir\depend

