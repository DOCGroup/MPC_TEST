# Microsoft Developer Studio Project File - Name="source_lib" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=source_lib - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE run the tool that generated this project file and specify the
!MESSAGE nmake output type.  You can then use the following command:
!MESSAGE
!MESSAGE NMAKE.
!MESSAGE
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE
!MESSAGE NMAKE CFG="source_lib - Win32 Debug"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "source_lib - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "source_lib - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "source_lib - Win32 Debug"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ""
# PROP Intermediate_Dir "Static_Debug\source_lib"
# PROP Target_Dir ""
LINK32=link.exe -lib
# ADD CPP /nologo /Ob0 /W3 /Gm /GX /Zi /MDd /GR /Gy /Fd"..\lib\source_lib.pdb" /I "." /D _DEBUG /D WIN32 /D _WINDOWS /D USING_PCH /Yu"source_lib_pch.h" /Fp"Static_Debug\source_lib\source_lib_pch.pch" /FD /c
# SUBTRACT CPP /Fr /YX

# ADD MTL /D "_DEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d _DEBUG /i "."
BSC32=bscmake.exe
# ADD BSC32 /nologo /o"..\lib\source_lib.bsc"
LIB32=link.exe -lib
# ADD LIB32 /nologo /out:"..\lib\source_lib.lib"

!ELSEIF  "$(CFG)" == "source_lib - Win32 Release"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Static_Release\source_lib"
# PROP Target_Dir ""
LINK32=link.exe -lib
# ADD CPP /nologo /O2 /W3 /GX /MD /GR /I "." /D NDEBUG /D WIN32 /D _WINDOWS /D USING_PCH /Yu"source_lib_pch.h" /Fp"Static_Release\source_lib\source_lib_pch.pch" /FD /c
# SUBTRACT CPP /YX

# ADD MTL /D "NDEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d NDEBUG /i "."
BSC32=bscmake.exe
# ADD BSC32 /nologo /o"..\lib\source_lib.bsc"
LIB32=link.exe -lib
# ADD LIB32 /nologo /out:"..\lib\source_lib.lib"

!ENDIF

# Begin Target

# Name "source_lib - Win32 Debug"
# Name "source_lib - Win32 Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;cxx;c"
# Begin Source File

SOURCE="source_lib_pch.cpp"
# ADD CPP /Yc"source_lib_pch.h"
# End Source File
# Begin Source File

SOURCE=".\qwee.cxx"
# End Source File
# Begin Source File

SOURCE="cre\o.le\more_names.cpp"
# End Source File
# Begin Source File

SOURCE="names.cpp"
# End Source File
# Begin Source File

SOURCE="TheCheat.cpp"
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hh"
# Begin Source File

SOURCE="source_lib_pch.h"
# End Source File
# Begin Source File

SOURCE="cre\o.le\more_names.h"
# End Source File
# Begin Source File

SOURCE="moop.hxx"
# End Source File
# Begin Source File

SOURCE="names.h"
# End Source File
# Begin Source File

SOURCE="TheCheat.h"
# End Source File
# End Group
# Begin Group "Inline Files"

# PROP Default_Filter "i;inl"
# Begin Source File

SOURCE="weer.inl"
# End Source File
# End Group
# Begin Group "Template Files"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\qwee_T.C"
# PROP Exclude_From_Build 1
# End Source File
# End Group
# Begin Group "Documentation"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\bar.txt"
# End Source File
# End Group
# Begin Group "Gen Files"

# PROP Default_Filter "key"
# Begin Source File

SOURCE="more_names.key"

!IF  "$(CFG)" == "source_lib - Win32 Debug"

USERDEP__more_names="..\bin\generator.exe"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking ..\bin\generator on $(InputPath)
InputPath="more_names.key"

BuildCmds= \
	PATH=%PATH%;..\lib \
	mkdir cre\o.le 2> nul \
	..\bin\generator -o cre/o.le $(InputPath) \
	echo cre\o.le\more_names.cpp and cre\o.le\more_names.h have been generated. \
	echo #include "source_lib_pch.h" > temporary.src \
	type "cre\o.le\more_names.cpp" >> temporary.src \
	move /y temporary.src "cre\o.le\more_names.cpp"

"cre\o.le\more_names.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"cre\o.le\more_names.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "source_lib - Win32 Release"

USERDEP__more_names="..\bin\generator.exe"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking ..\bin\generator on $(InputPath)
InputPath="more_names.key"

BuildCmds= \
	PATH=%PATH%;..\lib \
	mkdir cre\o.le 2> nul \
	..\bin\generator -o cre/o.le $(InputPath) \
	echo cre\o.le\more_names.cpp and cre\o.le\more_names.h have been generated. \
	echo #include "source_lib_pch.h" > temporary.src \
	type "cre\o.le\more_names.cpp" >> temporary.src \
	move /y temporary.src "cre\o.le\more_names.cpp"

"cre\o.le\more_names.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"cre\o.le\more_names.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="names.key"

!IF  "$(CFG)" == "source_lib - Win32 Debug"

USERDEP__names="..\bin\generator.exe" "something"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking ..\bin\generator on $(InputPath)
InputPath="names.key"

BuildCmds= \
	PATH=%PATH%;..\lib \
	..\bin\generator -n names $(InputPath) \
	echo names.cpp and names.h have been generated. \
	echo #include "source_lib_pch.h" > temporary.src \
	type "names.cpp" >> temporary.src \
	move /y temporary.src "names.cpp"

"names.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"names.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "source_lib - Win32 Release"

USERDEP__names="..\bin\generator.exe" "something"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking ..\bin\generator on $(InputPath)
InputPath="names.key"

BuildCmds= \
	PATH=%PATH%;..\lib \
	..\bin\generator -n names $(InputPath) \
	echo names.cpp and names.h have been generated. \
	echo #include "source_lib_pch.h" > temporary.src \
	type "names.cpp" >> temporary.src \
	move /y temporary.src "names.cpp"

"names.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"names.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# End Group
# Begin Group "Cppgen Files"

# PROP Default_Filter "r"
# Begin Source File

SOURCE="TheCheat.r"

!IF  "$(CFG)" == "source_lib - Win32 Debug"

USERDEP__TheCheat="..\bin\cppgen.pl"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking perl ..\bin\cppgen.pl on $(InputPath)
InputPath="TheCheat.r"

BuildCmds= \
	perl ..\bin\cppgen.pl  -o "TheCheat.cpp" "TheCheat.h" $(InputPath) \
	echo #include "source_lib_pch.h" > temporary.src \
	type "TheCheat.cpp" >> temporary.src \
	move /y temporary.src "TheCheat.cpp"

"TheCheat.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"TheCheat.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "source_lib - Win32 Release"

USERDEP__TheCheat="..\bin\cppgen.pl"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking perl ..\bin\cppgen.pl on $(InputPath)
InputPath="TheCheat.r"

BuildCmds= \
	perl ..\bin\cppgen.pl  -o "TheCheat.cpp" "TheCheat.h" $(InputPath) \
	echo #include "source_lib_pch.h" > temporary.src \
	type "TheCheat.cpp" >> temporary.src \
	move /y temporary.src "TheCheat.cpp"

"TheCheat.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"TheCheat.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# End Group
# Begin Group "Mondo Files"

# PROP Default_Filter "mondo"
# Begin Source File

SOURCE="mondo\all.mondo"

!IF  "$(CFG)" == "source_lib - Win32 Debug"

USERDEP__all="..\mondo\mondo.pl" "..\mondo\modules\ReaderGen.pm"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking perl ..\mondo\mondo.pl on $(InputPath)
InputPath="mondo\all.mondo"

BuildCmds= \
	mkdir . 2> nul \
	perl ..\mondo\mondo.pl -fake $(InputPath) \
	echo #include "source_lib_pch.h" > temporary.src \
	type ".\qwee.cxx" >> temporary.src \
	move /y temporary.src ".\qwee.cxx"

".\bar.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

".\moop.hxx" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

".\qwee.cxx" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

".\qwee_T.C" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

".\weer.inl" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "source_lib - Win32 Release"

USERDEP__all="..\mondo\mondo.pl" "..\mondo\modules\ReaderGen.pm"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking perl ..\mondo\mondo.pl on $(InputPath)
InputPath="mondo\all.mondo"

BuildCmds= \
	mkdir . 2> nul \
	perl ..\mondo\mondo.pl -fake $(InputPath) \
	echo #include "source_lib_pch.h" > temporary.src \
	type ".\qwee.cxx" >> temporary.src \
	move /y temporary.src ".\qwee.cxx"

".\bar.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

".\moop.hxx" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

".\qwee.cxx" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

".\qwee_T.C" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

".\weer.inl" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# End Group
# End Target
# End Project
