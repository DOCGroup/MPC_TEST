# Microsoft Developer Studio Project File - Name="foo_c" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=foo_c - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE run the tool that generated this project file and specify the
!MESSAGE nmake output type.  You can then use the following command:
!MESSAGE
!MESSAGE NMAKE.
!MESSAGE
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE
!MESSAGE NMAKE CFG="foo_c - Win32 Debug"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "foo_c - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "foo_c - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "foo_c - Win32 Debug"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "."
# PROP Intermediate_Dir "Debug\foo_c"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD CPP /nologo /Ob0 -g /Fd"Debug\foo_c/" /I "Bigbam" /I "bam" /D poo /D WIN32 /D _WINDOWS /FD /c
# SUBTRACT CPP /Fr /YX

# ADD MTL /D "poo" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d poo /i "Bigbam" /i "bam"
BSC32=bscmake.exe
# ADD BSC32 /nologo /o".\foo_c.bsc"
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /version:5.55 /subsystem:windows /pdb:".\foo_cd.pdb" /implib:".\foo_cd.lib" /dll /debug /machine:I386 /out:".\foo_cd.dll"

!ELSEIF  "$(CFG)" == "foo_c - Win32 Release"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "."
# PROP Intermediate_Dir "Release\foo_c"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD CPP /nologo /O2 -g /I "Bigbam" /I "bam" /D NDEBUG /D pan /D WIN32 /D _WINDOWS /FD /c
# SUBTRACT CPP /YX

# ADD MTL /D "NDEBUG" /D "pan" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d NDEBUG /d pan /i "Bigbam" /i "bam"
BSC32=bscmake.exe
# ADD BSC32 /nologo /o".\foo_c.bsc"
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /version:5.55 /subsystem:windows /pdb:none /implib:".\foo_c.lib" /dll  /machine:I386 /out:".\foo_c.dll"

!ENDIF

# Begin Target

# Name "foo_c - Win32 Debug"
# Name "foo_c - Win32 Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;cxx;c"
# Begin Source File

SOURCE="foo.cpp"
# End Source File
# End Group
# Begin Group "Documentation"

# PROP Default_Filter ""
# Begin Source File

SOURCE="additional_options.txt"
# End Source File
# Begin Source File

SOURCE="build_entry.txt"
# End Source File
# End Group
# End Target
# End Project
