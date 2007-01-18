# Microsoft Developer Studio Project File - Name="MyModule" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=MyModule - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE run the tool that generated this project file and specify the
!MESSAGE nmake output type.  You can then use the following command:
!MESSAGE
!MESSAGE NMAKE.
!MESSAGE
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE
!MESSAGE NMAKE CFG="MyModule - Win32 Debug"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "MyModule - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "MyModule - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "MyModule - Win32 Debug"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "."
# PROP Intermediate_Dir "Debug\MyModule"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD CPP /nologo /Ob0 /W3 /Gm /GX /Zi /MDd /GR /Gy /Fd"Debug\MyModule/" /I "$(PERL5_INCLUDE)\." /D _DEBUG /D WIN32 /D _WINDOWS /FD /c
# SUBTRACT CPP /Fr /YX

# ADD MTL /D "_DEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d _DEBUG /i "$(PERL5_INCLUDE)\."
BSC32=bscmake.exe
# ADD BSC32 /nologo /o".\MyModule.bsc"
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO $(PERL5_LIB).lib /libpath:"." /libpath:"$(PERL5_INCLUDE)\." /nologo /subsystem:windows /pdb:".\MyModule.pdb" /implib:".\MyModule.lib" /dll /debug /machine:I386 /out:".\MyModule.dll"

!ELSEIF  "$(CFG)" == "MyModule - Win32 Release"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "."
# PROP Intermediate_Dir "Release\MyModule"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD CPP /nologo /O2 /W3 /GX /MD /GR /I "$(PERL5_INCLUDE)\." /D NDEBUG /D WIN32 /D _WINDOWS /FD /c
# SUBTRACT CPP /YX

# ADD MTL /D "NDEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d NDEBUG /i "$(PERL5_INCLUDE)\."
BSC32=bscmake.exe
# ADD BSC32 /nologo /o".\MyModule.bsc"
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO $(PERL5_LIB).lib /libpath:"." /libpath:"$(PERL5_INCLUDE)\." /nologo /subsystem:windows /pdb:none /implib:".\MyModule.lib" /dll  /machine:I386 /out:".\MyModule.dll"

!ENDIF

# Begin Target

# Name "MyModule - Win32 Debug"
# Name "MyModule - Win32 Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;cxx;c"
# Begin Source File

SOURCE="hello.cpp"
# End Source File
# Begin Source File

SOURCE="MyModule_wrap.cxx"
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hh"
# Begin Source File

SOURCE="hello.h"
# End Source File
# End Group
# Begin Group "Inline Files"

# PROP Default_Filter "i;inl"
# Begin Source File

SOURCE="MyModule.i"
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
# Begin Group "Swig Files"

# PROP Default_Filter "swg;swig;i"
# Begin Source File

SOURCE="MyModule.i"

!IF  "$(CFG)" == "MyModule - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking swig on $(InputPath)
InputPath="MyModule.i"

BuildCmds= \
	swig -perl -c++ $(InputPath) \

"MyModule.pm" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"MyModule_wrap.cxx" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "MyModule - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking swig on $(InputPath)
InputPath="MyModule.i"

BuildCmds= \
	swig -perl -c++ $(InputPath) \

"MyModule.pm" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"MyModule_wrap.cxx" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# End Group
# End Target
# End Project
