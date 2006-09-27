# Microsoft Developer Studio Project File - Name="source" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=source - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE run the tool that generated this project file and specify the
!MESSAGE nmake output type.  You can then use the following command:
!MESSAGE
!MESSAGE NMAKE.
!MESSAGE
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE
!MESSAGE NMAKE CFG="source - Win32 Debug"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "source - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE "source - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "source - Win32 Debug"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "."
# PROP Intermediate_Dir "Debug\source"
# PROP Target_Dir ""
# ADD CPP /nologo /Ob0 /W3 /Gm /GX /Zi /MDd /GR /Gy /Fd"Debug\source/" /I "." /I "\this\path" /I "Z:\that\path" /I "Here" /I "There" /D _DEBUG /D WIN32 /D _CONSOLE /D MACRO_TEST="a_string_with_no_spaces" /FD /c
# SUBTRACT CPP /YX

# ADD MTL /D "_DEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d _DEBUG /d MACRO_TEST="a_string_with_no_spaces" /i "." /i "\this\path" /i "Z:\that\path" /i "Here" /i "There"
BSC32=bscmake.exe
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO source_lib.lib /libpath:"." /libpath:"..\lib" /nologo /version:1.000 /subsystem:console /pdb:".\main_testd.pdb" /debug /machine:I386 /out:".\main_testd.exe"
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=echo main_test has been built
# End Special Build Tool

!ELSEIF  "$(CFG)" == "source - Win32 Release"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release\source"
# PROP Target_Dir ""
# ADD CPP /nologo /O2 /W3 /GX /MD /GR /I "." /I "\this\path" /I "Z:\that\path" /I "Here" /I "There" /D NDEBUG /D WIN32 /D _CONSOLE /D MACRO_TEST="a_string_with_no_spaces" /FD /c
# SUBTRACT CPP /YX

# ADD MTL /D "NDEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d NDEBUG /d MACRO_TEST="a_string_with_no_spaces" /i "." /i "\this\path" /i "Z:\that\path" /i "Here" /i "There"
BSC32=bscmake.exe
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO source_lib.lib /libpath:"." /libpath:"..\lib" /nologo /version:1.000 /subsystem:console /pdb:none  /machine:I386 /out:"Release\main_test.exe"
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=echo main_test has been built
# End Special Build Tool

!ENDIF

# Begin Target

# Name "source - Win32 Debug"
# Name "source - Win32 Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;cxx;c"
# Begin Source File

SOURCE="exe\main.cpp"
# End Source File
# Begin Source File

SOURCE="exe\use_more_names\use_more_names.cpp"
# End Source File
# Begin Source File

SOURCE="exe\use_names\use_names.cpp"
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hh"
# Begin Source File

SOURCE="exe\use_more_names\use_more_names.h"
# End Source File
# Begin Source File

SOURCE="exe\use_names\use_names.h"
# End Source File
# End Group
# Begin Group "Documentation"

# PROP Default_Filter ""
# Begin Source File

SOURCE="Foolish\foolish.txt"
# End Source File
# End Group
# Begin Group "Simple Files"

# PROP Default_Filter "simple"
# Begin Source File

SOURCE="Foolish/foolish.simple"

!IF  "$(CFG)" == "source - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking echo on $(InputPath)
InputPath="Foolish/foolish.simple"

BuildCmds= \
	echo Generated from $(InputPath) > "Foolish/foolish.txt" \

"Foolish/foolish.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "source - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking echo on $(InputPath)
InputPath="Foolish/foolish.simple"

BuildCmds= \
	echo Generated from $(InputPath) > "Foolish/foolish.txt" \

"Foolish/foolish.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# End Group
# End Target
# End Project
