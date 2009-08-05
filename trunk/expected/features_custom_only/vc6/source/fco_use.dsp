# Microsoft Developer Studio Project File - Name="fco_use" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=fco_use - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE run the tool that generated this project file and specify the
!MESSAGE nmake output type.  You can then use the following command:
!MESSAGE
!MESSAGE NMAKE.
!MESSAGE
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE
!MESSAGE NMAKE CFG="fco_use - Win32 Debug"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "fco_use - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "fco_use - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "fco_use - Win32 Debug"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "."
# PROP Intermediate_Dir "Debug\fco_use"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD CPP /nologo /Ob0 /W3 /Gm /GX /Zi /MDd /GR /Gy /Fd"Debug\fco_use/" /D _DEBUG /D WIN32 /D _WINDOWS /D THAT_THERE_MACRO /FD /c
# SUBTRACT CPP /Fr /YX

# ADD MTL /D "_DEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d _DEBUG /d THAT_THERE_MACRO
BSC32=bscmake.exe
# ADD BSC32 /nologo /o".\fco_use.bsc"
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /pdb:".\fco_used.pdb" /implib:".\fco_used.lib" /dll /debug /machine:I386 /out:".\fco_used.dll"

!ELSEIF  "$(CFG)" == "fco_use - Win32 Release"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "."
# PROP Intermediate_Dir "Release\fco_use"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD CPP /nologo /O2 /W3 /GX /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /D THAT_THERE_MACRO /FD /c
# SUBTRACT CPP /YX

# ADD MTL /D "NDEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d NDEBUG /d THAT_THERE_MACRO
BSC32=bscmake.exe
# ADD BSC32 /nologo /o".\fco_use.bsc"
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /pdb:none /implib:".\fco_use.lib" /dll  /machine:I386 /out:".\fco_use.dll"

!ENDIF

# Begin Target

# Name "fco_use - Win32 Debug"
# Name "fco_use - Win32 Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;cxx;c"
# Begin Source File

SOURCE="zar_thatB.cpp"
# End Source File
# Begin Source File

SOURCE="zar_thisC.cpp"
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hh"
# Begin Source File

SOURCE="zar_thatB.h"
# End Source File
# Begin Source File

SOURCE="zar_thisB_T.h"
# End Source File
# Begin Source File

SOURCE="zar_thisC.h"
# End Source File
# End Group
# Begin Group "Inline Files"

# PROP Default_Filter "i;ipp;inl"
# Begin Source File

SOURCE="zar_thatB.inl"
# End Source File
# Begin Source File

SOURCE="zar_thisB_T.inl"
# End Source File
# End Group
# Begin Group "Template Files"

# PROP Default_Filter ""
# Begin Source File

SOURCE="zar_thisB_T.cpp"
# PROP Exclude_From_Build 1
# End Source File
# End Group
# End Target
# End Project
