# Microsoft Developer Studio Project File - Name="flex_bison" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=flex_bison - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE run the tool that generated this project file and specify the
!MESSAGE nmake output type.  You can then use the following command:
!MESSAGE
!MESSAGE NMAKE.
!MESSAGE
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE
!MESSAGE NMAKE CFG="flex_bison - Win32 Debug"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "flex_bison - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "flex_bison - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "flex_bison - Win32 Debug"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "."
# PROP Intermediate_Dir "Debug\flex_bison"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD CPP /nologo /Ob0 /W3 /Gm /GX /Zi /MDd /GR /Gy /O /Fd"Debug\flex_bison/" /D _DEBUG /D WIN32 /D _WINDOWS /FD /c
# SUBTRACT CPP /Fr /YX

# ADD MTL /D "_DEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d _DEBUG
BSC32=bscmake.exe
# ADD BSC32 /nologo /o".\bus.bsc"
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /pdb:".\busd.pdb" /implib:".\busd.lib" /dll /debug /machine:I386 /out:".\busd.dll"

!ELSEIF  "$(CFG)" == "flex_bison - Win32 Release"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "."
# PROP Intermediate_Dir "Release\flex_bison"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD CPP /nologo /O2 /W3 /GX /MD /GR /O /D NDEBUG /D WIN32 /D _WINDOWS /FD /c
# SUBTRACT CPP /YX

# ADD MTL /D "NDEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d NDEBUG
BSC32=bscmake.exe
# ADD BSC32 /nologo /o".\bus.bsc"
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /pdb:none /implib:".\bus.lib" /dll  /machine:I386 /out:".\bus.dll"

!ENDIF

# Begin Target

# Name "flex_bison - Win32 Debug"
# Name "flex_bison - Win32 Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;cxx;c"
# Begin Source File

SOURCE="bus.cpp"
# End Source File
# Begin Source File

SOURCE="bus.tab.c"
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hh"
# Begin Source File

SOURCE="bus.tab.h"
# End Source File
# End Group
# Begin Group "Documentation"

# PROP Default_Filter ""
# Begin Source File

SOURCE="build_entry.txt"
# End Source File
# End Group
# Begin Group "Flex Files"

# PROP Default_Filter "ll;l"
# Begin Source File

SOURCE="bus.l"

!IF  "$(CFG)" == "flex_bison - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking flex on $(InputPath)
InputPath="bus.l"

BuildCmds= \
	flex -t $(InputPath) > "bus.cpp" \

"bus.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "flex_bison - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking flex on $(InputPath)
InputPath="bus.l"

BuildCmds= \
	flex -t $(InputPath) > "bus.cpp" \

"bus.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# End Group
# Begin Group "Bison Files"

# PROP Default_Filter "yy;y"
# Begin Source File

SOURCE="bus.y"

!IF  "$(CFG)" == "flex_bison - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking bison on $(InputPath)
InputPath="bus.y"

BuildCmds= \
	bison -d $(InputPath) \

"bus.tab.c" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"bus.tab.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "flex_bison - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking bison on $(InputPath)
InputPath="bus.y"

BuildCmds= \
	bison -d $(InputPath) \

"bus.tab.c" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"bus.tab.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# End Group
# End Target
# End Project
