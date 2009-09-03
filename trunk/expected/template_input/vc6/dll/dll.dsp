# Microsoft Developer Studio Project File - Name="dll" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) " 

CFG=dll - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE run the tool that generated this project file and specify the
!MESSAGE nmake output type.  You can then use the following command:
!MESSAGE
!MESSAGE NMAKE.
!MESSAGE
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE
!MESSAGE NMAKE CFG="dll - Win32 Debug"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "dll - Win32 Debug" (based on "Win32 (x86) ")
!MESSAGE "dll - Win32 Release" (based on "Win32 (x86) ")
!MESSAGE

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "dll - Win32 Debug"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "."
# PROP Intermediate_Dir "Debug\dll"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD CPP /nologo /Ob0  /I "crapday" /I ".." /D _DEBUG /D WIN32 /D _WINDOWS /D _CRT_NONSTDC_NO_WARNINGS /FD /c

# ADD MTL /D "_DEBUG" 
# ADD RSC /l 0x409 /d _DEBUG /i "crapday" /i ".."
BSC32=bscmake.exe
# ADD BSC32 /nologo /o".\dll.bsc"
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /pdb:none /implib:".\dlld.lib" /dll /debug /machine:I386 /out:".\dlld.dll"

!ELSEIF  "$(CFG)" == "dll - Win32 Release"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "."
# PROP Intermediate_Dir "Release\dll"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD CPP /nologo /O2  /I "crapday" /I ".." /D NDEBUG /D WIN32 /D _WINDOWS /D _CRT_NONSTDC_NO_WARNINGS /FD /c

# ADD MTL /D "NDEBUG" 
# ADD RSC /l 0x409 /d NDEBUG /i "crapday" /i ".."
BSC32=bscmake.exe
# ADD BSC32 /nologo /o".\dll.bsc"
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /pdb:none /implib:".\dll.lib" /dll /debug /machine:I386 /out:".\dll.dll"

!ENDIF

# Begin Target

# Name "dll - Win32 Debug"
# Name "dll - Win32 Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;cxx;c"
# Begin Source File

SOURCE="foo.cpp"
# End Source File
# End Group
# End Target
# End Project
