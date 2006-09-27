# Microsoft Developer Studio Project File - Name="grouping_D" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=grouping_D - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE run the tool that generated this project file and specify the
!MESSAGE nmake output type.  You can then use the following command:
!MESSAGE
!MESSAGE NMAKE.
!MESSAGE
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE
!MESSAGE NMAKE CFG="grouping_D - Win32 Debug"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "grouping_D - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE "grouping_D - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "grouping_D - Win32 Debug"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "."
# PROP Intermediate_Dir "Debug\grouping_D"
# PROP Target_Dir ""
# ADD CPP /nologo /Ob0 /W3 /Gm /GX /Zi /MDd /GR /Gy /Fd"Debug\grouping_D/" /D _DEBUG /D WIN32 /D _CONSOLE /FD /c
# SUBTRACT CPP /YX

# ADD MTL /D "_DEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d _DEBUG
BSC32=bscmake.exe
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:console /pdb:".\D.pdb" /debug /machine:I386 /out:".\D.exe"

!ELSEIF  "$(CFG)" == "grouping_D - Win32 Release"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release\grouping_D"
# PROP Target_Dir ""
# ADD CPP /nologo /O2 /W3 /GX /MD /GR /D NDEBUG /D WIN32 /D _CONSOLE /FD /c
# SUBTRACT CPP /YX

# ADD MTL /D "NDEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d NDEBUG
BSC32=bscmake.exe
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:console /pdb:none  /machine:I386 /out:"Release\D.exe"

!ENDIF

# Begin Target

# Name "grouping_D - Win32 Debug"
# Name "grouping_D - Win32 Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;cxx;c"
# Begin Group "carnival"

# PROP Default_Filter ""
# Begin Source File

SOURCE="clown.cpp"
# End Source File
# End Group
# Begin Group "located"

# PROP Default_Filter ""
# Begin Source File

SOURCE="other.cpp"
# End Source File
# End Group
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hh"
# Begin Group "carnival"

# PROP Default_Filter ""
# Begin Source File

SOURCE="clown.h"
# End Source File
# End Group
# End Group
# Begin Group "Inline Files"

# PROP Default_Filter "i;inl"
# Begin Group "located"

# PROP Default_Filter ""
# Begin Source File

SOURCE="other.inl"
# End Source File
# End Group
# End Group
# Begin Group "Cppgen Files"

# PROP Default_Filter "r"
# Begin Source File

SOURCE="clown.r"

!IF  "$(CFG)" == "grouping_D - Win32 Debug"

USERDEP__clown="..\bin\cppgen.pl"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking perl ..\bin\cppgen.pl on $(InputPath)
InputPath="clown.r"

BuildCmds= \
	perl ..\bin\cppgen.pl  $(InputPath) -o "clown.cpp" "clown.h" \

"clown.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"clown.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "grouping_D - Win32 Release"

USERDEP__clown="..\bin\cppgen.pl"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking perl ..\bin\cppgen.pl on $(InputPath)
InputPath="clown.r"

BuildCmds= \
	perl ..\bin\cppgen.pl  $(InputPath) -o "clown.cpp" "clown.h" \

"clown.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"clown.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# End Group
# End Target
# End Project
