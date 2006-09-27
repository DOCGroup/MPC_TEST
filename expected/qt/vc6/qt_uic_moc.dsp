# Microsoft Developer Studio Project File - Name="qt_uic_moc" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=qt_uic_moc - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE run the tool that generated this project file and specify the
!MESSAGE nmake output type.  You can then use the following command:
!MESSAGE
!MESSAGE NMAKE.
!MESSAGE
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE
!MESSAGE NMAKE CFG="qt_uic_moc - Win32 Debug"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "qt_uic_moc - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE "qt_uic_moc - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "qt_uic_moc - Win32 Debug"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "."
# PROP Intermediate_Dir "Debug\qt_uic_moc"
# PROP Target_Dir ""
# ADD CPP /nologo /Ob0 /W3 /Gm /GX /Zi /MDd /GR /Gy /Fd"Debug\qt_uic_moc/" /I "$(QTDIR)\include" /D _DEBUG /D WIN32 /D _CONSOLE /D QT_THREAD_SUPPORT /FD /c
# SUBTRACT CPP /YX

# ADD MTL /D "_DEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d _DEBUG /d QT_THREAD_SUPPORT /i "$(QTDIR)\include"
BSC32=bscmake.exe
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO qt-mt$(QT_VERSION).lib /libpath:"." /libpath:"$(QTDIR)\lib" /nologo /subsystem:console /pdb:".\main.pdb" /debug /machine:I386 /out:".\main.exe"

!ELSEIF  "$(CFG)" == "qt_uic_moc - Win32 Release"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release\qt_uic_moc"
# PROP Target_Dir ""
# ADD CPP /nologo /O2 /W3 /GX /MD /GR /I "$(QTDIR)\include" /D NDEBUG /D WIN32 /D _CONSOLE /D QT_THREAD_SUPPORT /FD /c
# SUBTRACT CPP /YX

# ADD MTL /D "NDEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d NDEBUG /d QT_THREAD_SUPPORT /i "$(QTDIR)\include"
BSC32=bscmake.exe
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO qt-mt$(QT_VERSION).lib /libpath:"." /libpath:"$(QTDIR)\lib" /nologo /subsystem:console /pdb:none  /machine:I386 /out:"Release\main.exe"

!ENDIF

# Begin Target

# Name "qt_uic_moc - Win32 Debug"
# Name "qt_uic_moc - Win32 Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;cxx;c"
# Begin Source File

SOURCE="demo.cpp"
# End Source File
# Begin Source File

SOURCE="demo_moc.cpp"
# End Source File
# Begin Source File

SOURCE="main.cpp"
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hh"
# Begin Source File

SOURCE="demo.h"
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
# Begin Group "Uic Files"

# PROP Default_Filter "ui"
# Begin Source File

SOURCE="demo.ui"

!IF  "$(CFG)" == "qt_uic_moc - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking $(QTDIR)\bin\uic on $(InputPath)
InputPath="demo.ui"

BuildCmds= \
	$(QTDIR)\bin\uic  $(InputPath) -o "demo.h" \

"demo.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "qt_uic_moc - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking $(QTDIR)\bin\uic on $(InputPath)
InputPath="demo.ui"

BuildCmds= \
	$(QTDIR)\bin\uic  $(InputPath) -o "demo.h" \

"demo.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# End Group
# Begin Group "Uic Impl Files"

# PROP Default_Filter "ui"
# Begin Source File

SOURCE="demo.ui"

!IF  "$(CFG)" == "qt_uic_moc - Win32 Debug"

USERDEP__demo="demo.h"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking $(QTDIR)\bin\uic on $(InputPath)
InputPath="demo.ui"

BuildCmds= \
	$(QTDIR)\bin\uic -impl "demo.h" $(InputPath) -o "demo.cpp" \

"demo.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "qt_uic_moc - Win32 Release"

USERDEP__demo="demo.h"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking $(QTDIR)\bin\uic on $(InputPath)
InputPath="demo.ui"

BuildCmds= \
	$(QTDIR)\bin\uic -impl "demo.h" $(InputPath) -o "demo.cpp" \

"demo.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# End Group
# Begin Group "Moc Files"

# PROP Default_Filter "h"
# Begin Source File

SOURCE="demo.h"

!IF  "$(CFG)" == "qt_uic_moc - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking $(QTDIR)\bin\moc on $(InputPath)
InputPath="demo.h"

BuildCmds= \
	$(QTDIR)\bin\moc  $(InputPath) -o "demo_moc.cpp" \

"demo_moc.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "qt_uic_moc - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking $(QTDIR)\bin\moc on $(InputPath)
InputPath="demo.h"

BuildCmds= \
	$(QTDIR)\bin\moc  $(InputPath) -o "demo_moc.cpp" \

"demo_moc.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# End Group
# End Target
# End Project
