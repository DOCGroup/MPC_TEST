# Microsoft Developer Studio Project File - Name="explicit" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=explicit - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE run the tool that generated this project file and specify the
!MESSAGE nmake output type.  You can then use the following command:
!MESSAGE
!MESSAGE NMAKE.
!MESSAGE
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE
!MESSAGE NMAKE CFG="explicit - Win32 Debug"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "explicit - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "explicit - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "explicit - Win32 Debug"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "."
# PROP Intermediate_Dir "Debug\explicit"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD CPP /nologo /Ob0 /W3 /Gm /GX /Zi /MDd /GR /Gy /Fd"Debug\explicit/" /I "." /D _DEBUG /D WIN32 /D _WINDOWS /FD /c
# SUBTRACT CPP /Fr /YX

# ADD MTL /D "_DEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d _DEBUG /i "."
BSC32=bscmake.exe
# ADD BSC32 /nologo /o".\explicit.bsc"
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /pdb:".\explicitd.pdb" /implib:".\explicitd.lib" /dll /debug /machine:I386 /out:".\explicitd.dll"

!ELSEIF  "$(CFG)" == "explicit - Win32 Release"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "."
# PROP Intermediate_Dir "Release\explicit"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD CPP /nologo /O2 /W3 /GX /MD /GR /I "." /D NDEBUG /D WIN32 /D _WINDOWS /FD /c
# SUBTRACT CPP /YX

# ADD MTL /D "NDEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d NDEBUG /i "."
BSC32=bscmake.exe
# ADD BSC32 /nologo /o".\explicit.bsc"
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /pdb:none /implib:".\explicit.lib" /dll  /machine:I386 /out:".\explicit.dll"

!ENDIF

# Begin Target

# Name "explicit - Win32 Debug"
# Name "explicit - Win32 Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;cxx;c"
# Begin Source File

SOURCE="down\crap.cpp"
# End Source File
# Begin Source File

SOURCE="foo.cpp"
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hh"
# Begin Source File

SOURCE="down\crap.h"
# End Source File
# Begin Source File

SOURCE="foo.h"
# End Source File
# End Group
# Begin Group "Inline Files"

# PROP Default_Filter "i;ipp;inl"
# Begin Source File

SOURCE="down\crap.inl"
# End Source File
# End Group
# Begin Group "Cppgen Files"

# PROP Default_Filter "r"
# Begin Source File

SOURCE="crap.r"

!IF  "$(CFG)" == "explicit - Win32 Debug"

USERDEP__crap="..\bin\cppgen.pl"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking perl ..\bin\cppgen.pl on $(InputPath)
InputPath="crap.r"

BuildCmds= \
	mkdir down 2> nul \
	perl ..\bin\cppgen.pl  $(InputPath) -o "down\crap.cpp" "down\crap.h" "down\crap.inl" \

"down\crap.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"down\crap.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"down\crap.inl" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "explicit - Win32 Release"

USERDEP__crap="..\bin\cppgen.pl"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking perl ..\bin\cppgen.pl on $(InputPath)
InputPath="crap.r"

BuildCmds= \
	mkdir down 2> nul \
	perl ..\bin\cppgen.pl  $(InputPath) -o "down\crap.cpp" "down\crap.h" "down\crap.inl" \

"down\crap.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"down\crap.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"down\crap.inl" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# End Group
# End Target
# End Project
