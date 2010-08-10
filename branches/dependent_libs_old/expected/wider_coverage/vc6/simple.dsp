# Microsoft Developer Studio Project File - Name="simple" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=simple - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE run the tool that generated this project file and specify the
!MESSAGE nmake output type.  You can then use the following command:
!MESSAGE
!MESSAGE NMAKE.
!MESSAGE
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE
!MESSAGE NMAKE CFG="simple - Win32 Debug"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "simple - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE "simple - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "simple - Win32 MFC Release" (based on "Win32 (x86) Console Application")
!MESSAGE "simple - Win32 MFC Debug" (based on "Win32 (x86) Console Application")
!MESSAGE

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Static_Debug"
# PROP Intermediate_Dir "Static_Debug\simple"
# PROP Target_Dir ""
# ADD CPP /nologo /Ob0 /W3 /Gm /GX /Zi /MDd /GR /Gy /Fd"Static_Debug\simple/" /I "houses" /I "houses\of" /I "houses\of\the" /I "houses\of\the\holy" /D _DEBUG /D WIN32 /D _CONSOLE /FD /c
# SUBTRACT CPP /YX

# ADD MTL /D "_DEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d _DEBUG /i "houses" /i "houses\of" /i "houses\of\the" /i "houses\of\the\holy"
BSC32=bscmake.exe
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO simple_libsd.lib other_libsd.lib /libpath:"." /libpath:"non_existent" /nologo /subsystem:console /pdb:"Static_Debug\simple.pdb" /debug /machine:I386 /out:"Static_Debug\simple.exe"

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Static_Release"
# PROP Intermediate_Dir "Static_Release\simple"
# PROP Target_Dir ""
# ADD CPP /nologo /O2 /W3 /GX /MD /GR /I "houses" /I "houses\of" /I "houses\of\the" /I "houses\of\the\holy" /D NDEBUG /D WIN32 /D _CONSOLE /FD /c
# SUBTRACT CPP /YX

# ADD MTL /D "NDEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d NDEBUG /i "houses" /i "houses\of" /i "houses\of\the" /i "houses\of\the\holy"
BSC32=bscmake.exe
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO simple_libs.lib other_libs.lib /libpath:"." /libpath:"non_existent" /nologo /subsystem:console /pdb:none  /machine:I386 /out:"Static_Release\simple.exe"

!ELSEIF  "$(CFG)" == "simple - Win32 MFC Release"

# PROP Use_MFC 2
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Static_MFC_Release"
# PROP Intermediate_Dir "Static_MFC_Release\simple"
# PROP Target_Dir ""
# ADD CPP /nologo /O2 /W3 /GX /MD /GR /I "houses" /I "houses\of" /I "houses\of\the" /I "houses\of\the\holy" /D NDEBUG /D _AFXDLL /D ACE_HAS_MFC=1 /D ACE_DOESNT_INSTANTIATE_NONSTATIC_OBJECT_MANAGER /D WIN32 /D _WINDOWS /FD /c
# SUBTRACT CPP /YX

# ADD MTL /D "NDEBUG" /D "_AFXDLL" /D "ACE_HAS_MFC=1" /D "ACE_DOESNT_INSTANTIATE_NONSTATIC_OBJECT_MANAGER" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d NDEBUG /d _AFXDLL /d ACE_HAS_MFC=1 /d ACE_DOESNT_INSTANTIATE_NONSTATIC_OBJECT_MANAGER /i "houses" /i "houses\of" /i "houses\of\the" /i "houses\of\the\holy"
BSC32=bscmake.exe
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO simple_libmfcs.lib other_libmfcs.lib /libpath:"." /libpath:"non_existent" /nologo /subsystem:windows /pdb:none  /machine:I386 /out:"Static_MFC_Release\simple.exe"

!ELSEIF  "$(CFG)" == "simple - Win32 MFC Debug"

# PROP Use_MFC 2
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Static_MFC_Debug"
# PROP Intermediate_Dir "Static_MFC_Debug\simple"
# PROP Target_Dir ""
# ADD CPP /nologo /Ob0 /W3 /Gm /GX /Zi /MDd /GR /Gy /Fd"Static_MFC_Debug\simple/" /I "houses" /I "houses\of" /I "houses\of\the" /I "houses\of\the\holy" /D _DEBUG /D _AFXDLL /D ACE_HAS_MFC=1 /D ACE_DOESNT_INSTANTIATE_NONSTATIC_OBJECT_MANAGER /D WIN32 /D _WINDOWS /FD /c
# SUBTRACT CPP /YX

# ADD MTL /D "_DEBUG" /D "_AFXDLL" /D "ACE_HAS_MFC=1" /D "ACE_DOESNT_INSTANTIATE_NONSTATIC_OBJECT_MANAGER" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d _DEBUG /d _AFXDLL /d ACE_HAS_MFC=1 /d ACE_DOESNT_INSTANTIATE_NONSTATIC_OBJECT_MANAGER /i "houses" /i "houses\of" /i "houses\of\the" /i "houses\of\the\holy"
BSC32=bscmake.exe
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO simple_libmfcsd.lib other_libmfcsd.lib /libpath:"." /libpath:"non_existent" /nologo /subsystem:windows /pdb:"Static_MFC_Debug\simple.pdb" /debug /machine:I386 /out:"Static_MFC_Debug\simple.exe"

!ENDIF

# Begin Target

# Name "simple - Win32 Debug"
# Name "simple - Win32 Release"
# Name "simple - Win32 MFC Release"
# Name "simple - Win32 MFC Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;cxx;c"
# Begin Source File

SOURCE=".\houses\simple.cpp"
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
# Begin Source File

SOURCE="environment.txt"
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "rc;ico;cur;bmp;dlg;rc2;rct;bin;cnt;rtf;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE="simple.rc"
# End Source File
# End Group
# End Target
# End Project
