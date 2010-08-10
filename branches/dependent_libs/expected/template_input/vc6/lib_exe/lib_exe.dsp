# Microsoft Developer Studio Project File - Name="lib_exe" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) " 

CFG=lib_exe - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE run the tool that generated this project file and specify the
!MESSAGE nmake output type.  You can then use the following command:
!MESSAGE
!MESSAGE NMAKE.
!MESSAGE
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE
!MESSAGE NMAKE CFG="lib_exe - Win32 Debug"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "lib_exe - Win32 Debug" (based on "Win32 (x86) ")
!MESSAGE "lib_exe - Win32 Release" (based on "Win32 (x86) ")
!MESSAGE

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "lib_exe - Win32 Debug"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Static_Debug"
# PROP Intermediate_Dir "Static_Debug\lib_exe"
# PROP Target_Dir ""
# ADD CPP /nologo /Ob0  /D _DEBUG /D WIN32 /D _CONSOLE /D _CRT_NONSTDC_NO_WARNINGS /FD /c

# ADD MTL /D "_DEBUG" 
# ADD RSC /l 0x409 /d _DEBUG
BSC32=bscmake.exe
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:1 /pdb:none /debug /machine:I386 /out:"Static_Debug\foo.exe"

!ELSEIF  "$(CFG)" == "lib_exe - Win32 Release"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Static_Release"
# PROP Intermediate_Dir "Static_Release\lib_exe"
# PROP Target_Dir ""
# ADD CPP /nologo /O2  /D NDEBUG /D WIN32 /D _CONSOLE /D _CRT_NONSTDC_NO_WARNINGS /FD /c

# ADD MTL /D "NDEBUG" 
# ADD RSC /l 0x409 /d NDEBUG
BSC32=bscmake.exe
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:1 /pdb:none /debug /machine:I386 /out:"Static_Release\foo.exe"

!ENDIF

# Begin Target

# Name "lib_exe - Win32 Debug"
# Name "lib_exe - Win32 Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;cxx;c"
# Begin Source File

SOURCE="foo.cpp"
# End Source File
# End Group
# End Target
# End Project
