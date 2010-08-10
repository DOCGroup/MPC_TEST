# Microsoft Developer Studio Project File - Name="Some_Test_Other_Lib" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=Some_Test_Other_Lib - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE run the tool that generated this project file and specify the
!MESSAGE nmake output type.  You can then use the following command:
!MESSAGE
!MESSAGE NMAKE.
!MESSAGE
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE
!MESSAGE NMAKE CFG="Some_Test_Other_Lib - Win32 Debug"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "Some_Test_Other_Lib - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "Some_Test_Other_Lib - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "Some_Test_Other_Lib - Win32 MFC Release" (based on "Win32 (x86) Static Library")
!MESSAGE "Some_Test_Other_Lib - Win32 MFC Debug" (based on "Win32 (x86) Static Library")
!MESSAGE

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Some_Test_Other_Lib - Win32 Debug"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Static_Debug"
# PROP Intermediate_Dir "Static_Debug\Some_Test_Other_Lib"
# PROP Target_Dir ""
LINK32=link.exe -lib
# ADD CPP /nologo /Ob0 /W3 /Gm /GX /Zi /MDd /GR /Gy /Fd".\other_libsd.pdb" /D _DEBUG /D WIN32 /D _WINDOWS /FD /c
# SUBTRACT CPP /Fr /YX

# ADD MTL /D "_DEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d _DEBUG
BSC32=bscmake.exe
# ADD BSC32 /nologo /o".\other_lib.bsc"
LIB32=link.exe -lib
# ADD LIB32 /nologo /out:".\other_libsd.lib"

!ELSEIF  "$(CFG)" == "Some_Test_Other_Lib - Win32 Release"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Static_Release"
# PROP Intermediate_Dir "Static_Release\Some_Test_Other_Lib"
# PROP Target_Dir ""
LINK32=link.exe -lib
# ADD CPP /nologo /O2 /W3 /GX /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /FD /c
# SUBTRACT CPP /YX

# ADD MTL /D "NDEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d NDEBUG
BSC32=bscmake.exe
# ADD BSC32 /nologo /o".\other_lib.bsc"
LIB32=link.exe -lib
# ADD LIB32 /nologo /out:".\other_libs.lib"

!ELSEIF  "$(CFG)" == "Some_Test_Other_Lib - Win32 MFC Release"

# PROP Use_MFC 2
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Static_MFC_Release"
# PROP Intermediate_Dir "Static_MFC_Release\Some_Test_Other_Lib"
# PROP Target_Dir ""
LINK32=link.exe -lib
# ADD CPP /nologo /O2 /W3 /GX /MD /GR /D NDEBUG /D ACE_HAS_MFC=1 /D ACE_DOESNT_INSTANTIATE_NONSTATIC_OBJECT_MANAGER /D WIN32 /D _WINDOWS /FD /c
# SUBTRACT CPP /YX

# ADD MTL /D "NDEBUG" /D "ACE_HAS_MFC=1" /D "ACE_DOESNT_INSTANTIATE_NONSTATIC_OBJECT_MANAGER" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d NDEBUG /d ACE_HAS_MFC=1 /d ACE_DOESNT_INSTANTIATE_NONSTATIC_OBJECT_MANAGER
BSC32=bscmake.exe
# ADD BSC32 /nologo /o".\other_lib.bsc"
LIB32=link.exe -lib
# ADD LIB32 /nologo /out:".\other_libmfcs.lib"

!ELSEIF  "$(CFG)" == "Some_Test_Other_Lib - Win32 MFC Debug"

# PROP Use_MFC 2
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Static_MFC_Debug"
# PROP Intermediate_Dir "Static_MFC_Debug\Some_Test_Other_Lib"
# PROP Target_Dir ""
LINK32=link.exe -lib
# ADD CPP /nologo /Ob0 /W3 /Gm /GX /Zi /MDd /GR /Gy /Fd".\other_libmfcsd.pdb" /D _DEBUG /D ACE_HAS_MFC=1 /D ACE_DOESNT_INSTANTIATE_NONSTATIC_OBJECT_MANAGER /D WIN32 /D _WINDOWS /FD /c
# SUBTRACT CPP /Fr /YX

# ADD MTL /D "_DEBUG" /D "ACE_HAS_MFC=1" /D "ACE_DOESNT_INSTANTIATE_NONSTATIC_OBJECT_MANAGER" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d _DEBUG /d ACE_HAS_MFC=1 /d ACE_DOESNT_INSTANTIATE_NONSTATIC_OBJECT_MANAGER
BSC32=bscmake.exe
# ADD BSC32 /nologo /o".\other_lib.bsc"
LIB32=link.exe -lib
# ADD LIB32 /nologo /out:".\other_libmfcsd.lib"

!ENDIF

# Begin Target

# Name "Some_Test_Other_Lib - Win32 Debug"
# Name "Some_Test_Other_Lib - Win32 Release"
# Name "Some_Test_Other_Lib - Win32 MFC Release"
# Name "Some_Test_Other_Lib - Win32 MFC Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;cxx;c"
# Begin Source File

SOURCE="other_lib.cpp"
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
# End Target
# End Project
