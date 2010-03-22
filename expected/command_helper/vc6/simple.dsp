# Microsoft Developer Studio Project File - Name="simple" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

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
!MESSAGE "simple - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "simple - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
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
# PROP Output_Dir "."
# PROP Intermediate_Dir "Debug\simple"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD CPP /nologo /Ob0 /W3 /Gm /GX /Zi /MDd /GR /Gy /Fd"Debug\simple/" /I "something" /D _DEBUG /D WIN32 /D _WINDOWS /D USING_PCH /Yu"simple_pch.h" /Fp"Debug\simple\simple_pch.pch" /FD /c
# SUBTRACT CPP /Fr /YX

# ADD MTL /D "_DEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d _DEBUG /i "something"
BSC32=bscmake.exe
# ADD BSC32 /nologo /o".\weird$name.bsc"
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO idl2jni_runtimed.lib /libpath:"." /libpath:"$(IDL2JNI_ROOT)\lib" /nologo /version:1.6653 /subsystem:windows /pdb:".\weird$named.pdb" /implib:".\weird$named.lib" /dll /debug /machine:I386 /out:".\weird$named.dll"
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds="$(JAVA_HOME)/bin/jar" -cf ./simple.jar -C classes .
# End Special Build Tool

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "."
# PROP Intermediate_Dir "Release\simple"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD CPP /nologo /O2 /W3 /GX /MD /GR /I "something" /D NDEBUG /D WIN32 /D _WINDOWS /D USING_PCH /Yu"simple_pch.h" /Fp"Release\simple\simple_pch.pch" /FD /c
# SUBTRACT CPP /YX

# ADD MTL /D "NDEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d NDEBUG /i "something"
BSC32=bscmake.exe
# ADD BSC32 /nologo /o".\weird$name.bsc"
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO idl2jni_runtime.lib /libpath:"." /libpath:"$(IDL2JNI_ROOT)\lib" /nologo /version:1.6653 /subsystem:windows /pdb:none /implib:".\weird$name.lib" /dll  /machine:I386 /out:".\weird$name.dll"
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds="$(JAVA_HOME)/bin/jar" -cf ./simple.jar -C classes .
# End Special Build Tool

!ENDIF

# Begin Target

# Name "simple - Win32 Debug"
# Name "simple - Win32 Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;cxx;c"
# Begin Source File

SOURCE="simple_pch.cpp"
# ADD CPP /Yc"simple_pch.h"
# End Source File
# Begin Source File

SOURCE="otherJC.cpp"
# End Source File
# Begin Source File

SOURCE="otherJS.cpp"
# End Source File
# Begin Source File

SOURCE="otherTypeSupportJC.cpp"
# End Source File
# Begin Source File

SOURCE="otherTypeSupportJS.cpp"
# End Source File
# Begin Source File

SOURCE="simpleJC.cpp"
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hh"
# Begin Source File

SOURCE="simple_pch.h"
# End Source File
# Begin Source File

SOURCE="otherJC.h"
# End Source File
# Begin Source File

SOURCE="otherJS.h"
# End Source File
# Begin Source File

SOURCE="otherTypeSupportJC.h"
# End Source File
# Begin Source File

SOURCE="otherTypeSupportJS.h"
# End Source File
# Begin Source File

SOURCE="simpleJC.h"
# End Source File
# Begin Source File

SOURCE="simpleJS.h"
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

SOURCE="perl_options.txt"
# End Source File
# End Group
# Begin Group "Java Files"

# PROP Default_Filter "java"
# Begin Source File

SOURCE="simple\_Local2LocalBase.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\_Local2LocalBase.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\_Local2LocalBase.class classes\simple > nul \

"simple\_Local2LocalBase.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\_Local2LocalBase.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\_Local2LocalBase.class classes\simple > nul \

"simple\_Local2LocalBase.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\_Local2TAOPeer.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\_Local2TAOPeer.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\_Local2TAOPeer.class classes\simple > nul \

"simple\_Local2TAOPeer.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\_Local2TAOPeer.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\_Local2TAOPeer.class classes\simple > nul \

"simple\_Local2TAOPeer.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\_Local3LocalBase.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\_Local3LocalBase.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\_Local3LocalBase.class classes\simple > nul \

"simple\_Local3LocalBase.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\_Local3LocalBase.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\_Local3LocalBase.class classes\simple > nul \

"simple\_Local3LocalBase.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\_Local3TAOPeer.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\_Local3TAOPeer.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\_Local3TAOPeer.class classes\simple > nul \

"simple\_Local3TAOPeer.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\_Local3TAOPeer.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\_Local3TAOPeer.class classes\simple > nul \

"simple\_Local3TAOPeer.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\_TestInterf2Stub.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\_TestInterf2Stub.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\_TestInterf2Stub.class classes\simple > nul \

"simple\_TestInterf2Stub.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\_TestInterf2Stub.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\_TestInterf2Stub.class classes\simple > nul \

"simple\_TestInterf2Stub.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\_TestInterf3Stub.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\_TestInterf3Stub.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\_TestInterf3Stub.class classes\simple > nul \

"simple\_TestInterf3Stub.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\_TestInterf3Stub.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\_TestInterf3Stub.class classes\simple > nul \

"simple\_TestInterf3Stub.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\_TestInterfStub.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\_TestInterfStub.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\_TestInterfStub.class classes\simple > nul \

"simple\_TestInterfStub.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\_TestInterfStub.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\_TestInterfStub.class classes\simple > nul \

"simple\_TestInterfStub.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\_TestLILocalBase.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\_TestLILocalBase.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\_TestLILocalBase.class classes\simple > nul \

"simple\_TestLILocalBase.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\_TestLILocalBase.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\_TestLILocalBase.class classes\simple > nul \

"simple\_TestLILocalBase.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\_TestLITAOPeer.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\_TestLITAOPeer.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\_TestLITAOPeer.class classes\simple > nul \

"simple\_TestLITAOPeer.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\_TestLITAOPeer.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\_TestLITAOPeer.class classes\simple > nul \

"simple\_TestLITAOPeer.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\ArrayBounds.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\ArrayBounds.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\ArrayBounds.class classes\simple > nul \

"simple\ArrayBounds.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\ArrayBounds.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\ArrayBounds.class classes\simple > nul \

"simple\ArrayBounds.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\EnumArrayHelper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\EnumArrayHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\EnumArrayHelper.class classes\simple > nul \

"simple\EnumArrayHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\EnumArrayHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\EnumArrayHelper.class classes\simple > nul \

"simple\EnumArrayHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\EnumArrayHolder.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\EnumArrayHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\EnumArrayHolder.class classes\simple > nul \

"simple\EnumArrayHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\EnumArrayHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\EnumArrayHolder.class classes\simple > nul \

"simple\EnumArrayHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\EnumSeqHelper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\EnumSeqHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\EnumSeqHelper.class classes\simple > nul \

"simple\EnumSeqHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\EnumSeqHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\EnumSeqHelper.class classes\simple > nul \

"simple\EnumSeqHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\EnumSeqHolder.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\EnumSeqHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\EnumSeqHolder.class classes\simple > nul \

"simple\EnumSeqHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\EnumSeqHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\EnumSeqHolder.class classes\simple > nul \

"simple\EnumSeqHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\Local2.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\Local2.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\Local2.class classes\simple > nul \

"simple\Local2.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\Local2.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\Local2.class classes\simple > nul \

"simple\Local2.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\Local2Helper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\Local2Helper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\Local2Helper.class classes\simple > nul \

"simple\Local2Helper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\Local2Helper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\Local2Helper.class classes\simple > nul \

"simple\Local2Helper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\Local2Holder.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\Local2Holder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\Local2Holder.class classes\simple > nul \

"simple\Local2Holder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\Local2Holder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\Local2Holder.class classes\simple > nul \

"simple\Local2Holder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\Local2Operations.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\Local2Operations.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\Local2Operations.class classes\simple > nul \

"simple\Local2Operations.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\Local2Operations.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\Local2Operations.class classes\simple > nul \

"simple\Local2Operations.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\Local2SeqHelper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\Local2SeqHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\Local2SeqHelper.class classes\simple > nul \

"simple\Local2SeqHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\Local2SeqHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\Local2SeqHelper.class classes\simple > nul \

"simple\Local2SeqHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\Local2SeqHolder.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\Local2SeqHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\Local2SeqHolder.class classes\simple > nul \

"simple\Local2SeqHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\Local2SeqHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\Local2SeqHolder.class classes\simple > nul \

"simple\Local2SeqHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\Local3.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\Local3.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\Local3.class classes\simple > nul \

"simple\Local3.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\Local3.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\Local3.class classes\simple > nul \

"simple\Local3.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\Local3Helper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\Local3Helper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\Local3Helper.class classes\simple > nul \

"simple\Local3Helper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\Local3Helper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\Local3Helper.class classes\simple > nul \

"simple\Local3Helper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\Local3Holder.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\Local3Holder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\Local3Holder.class classes\simple > nul \

"simple\Local3Holder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\Local3Holder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\Local3Holder.class classes\simple > nul \

"simple\Local3Holder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\Local3Operations.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\Local3Operations.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\Local3Operations.class classes\simple > nul \

"simple\Local3Operations.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\Local3Operations.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\Local3Operations.class classes\simple > nul \

"simple\Local3Operations.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\LongSeqSeqHelper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\LongSeqSeqHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\LongSeqSeqHelper.class classes\simple > nul \

"simple\LongSeqSeqHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\LongSeqSeqHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\LongSeqSeqHelper.class classes\simple > nul \

"simple\LongSeqSeqHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\LongSeqSeqHolder.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\LongSeqSeqHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\LongSeqSeqHolder.class classes\simple > nul \

"simple\LongSeqSeqHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\LongSeqSeqHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\LongSeqSeqHolder.class classes\simple > nul \

"simple\LongSeqSeqHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\LongSeqSeqSeqHelper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\LongSeqSeqSeqHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\LongSeqSeqSeqHelper.class classes\simple > nul \

"simple\LongSeqSeqSeqHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\LongSeqSeqSeqHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\LongSeqSeqSeqHelper.class classes\simple > nul \

"simple\LongSeqSeqSeqHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\LongSeqSeqSeqHolder.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\LongSeqSeqSeqHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\LongSeqSeqSeqHolder.class classes\simple > nul \

"simple\LongSeqSeqSeqHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\LongSeqSeqSeqHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\LongSeqSeqSeqHolder.class classes\simple > nul \

"simple\LongSeqSeqSeqHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\SeqOfTypedefedLongHelper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\SeqOfTypedefedLongHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\SeqOfTypedefedLongHelper.class classes\simple > nul \

"simple\SeqOfTypedefedLongHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\SeqOfTypedefedLongHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\SeqOfTypedefedLongHelper.class classes\simple > nul \

"simple\SeqOfTypedefedLongHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\SeqOfTypedefedLongHolder.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\SeqOfTypedefedLongHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\SeqOfTypedefedLongHolder.class classes\simple > nul \

"simple\SeqOfTypedefedLongHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\SeqOfTypedefedLongHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\SeqOfTypedefedLongHolder.class classes\simple > nul \

"simple\SeqOfTypedefedLongHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\StringSeqHelper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\StringSeqHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\StringSeqHelper.class classes\simple > nul \

"simple\StringSeqHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\StringSeqHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\StringSeqHelper.class classes\simple > nul \

"simple\StringSeqHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\StringSeqHolder.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\StringSeqHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\StringSeqHolder.class classes\simple > nul \

"simple\StringSeqHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\StringSeqHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\StringSeqHolder.class classes\simple > nul \

"simple\StringSeqHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\StringSeqSeqHelper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\StringSeqSeqHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\StringSeqSeqHelper.class classes\simple > nul \

"simple\StringSeqSeqHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\StringSeqSeqHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\StringSeqSeqHelper.class classes\simple > nul \

"simple\StringSeqSeqHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\StringSeqSeqHolder.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\StringSeqSeqHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\StringSeqSeqHolder.class classes\simple > nul \

"simple\StringSeqSeqHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\StringSeqSeqHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\StringSeqSeqHolder.class classes\simple > nul \

"simple\StringSeqSeqHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\StringSeqSeqSeqHelper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\StringSeqSeqSeqHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\StringSeqSeqSeqHelper.class classes\simple > nul \

"simple\StringSeqSeqSeqHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\StringSeqSeqSeqHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\StringSeqSeqSeqHelper.class classes\simple > nul \

"simple\StringSeqSeqSeqHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\StringSeqSeqSeqHolder.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\StringSeqSeqSeqHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\StringSeqSeqSeqHolder.class classes\simple > nul \

"simple\StringSeqSeqSeqHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\StringSeqSeqSeqHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\StringSeqSeqSeqHolder.class classes\simple > nul \

"simple\StringSeqSeqSeqHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\StructWithObjref.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\StructWithObjref.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\StructWithObjref.class classes\simple > nul \

"simple\StructWithObjref.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\StructWithObjref.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\StructWithObjref.class classes\simple > nul \

"simple\StructWithObjref.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\StructWithObjrefHelper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\StructWithObjrefHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\StructWithObjrefHelper.class classes\simple > nul \

"simple\StructWithObjrefHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\StructWithObjrefHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\StructWithObjrefHelper.class classes\simple > nul \

"simple\StructWithObjrefHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\StructWithObjrefHolder.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\StructWithObjrefHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\StructWithObjrefHolder.class classes\simple > nul \

"simple\StructWithObjrefHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\StructWithObjrefHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\StructWithObjrefHolder.class classes\simple > nul \

"simple\StructWithObjrefHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestArrayTypedef2Helper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestArrayTypedef2Helper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestArrayTypedef2Helper.class classes\simple > nul \

"simple\TestArrayTypedef2Helper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestArrayTypedef2Helper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestArrayTypedef2Helper.class classes\simple > nul \

"simple\TestArrayTypedef2Helper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestArrayTypedefHelper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestArrayTypedefHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestArrayTypedefHelper.class classes\simple > nul \

"simple\TestArrayTypedefHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestArrayTypedefHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestArrayTypedefHelper.class classes\simple > nul \

"simple\TestArrayTypedefHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestArrayTypedefHolder.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestArrayTypedefHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestArrayTypedefHolder.class classes\simple > nul \

"simple\TestArrayTypedefHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestArrayTypedefHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestArrayTypedefHolder.class classes\simple > nul \

"simple\TestArrayTypedefHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestConstBool.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestConstBool.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestConstBool.class classes\simple > nul \

"simple\TestConstBool.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestConstBool.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestConstBool.class classes\simple > nul \

"simple\TestConstBool.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestConstDouble.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestConstDouble.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestConstDouble.class classes\simple > nul \

"simple\TestConstDouble.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestConstDouble.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestConstDouble.class classes\simple > nul \

"simple\TestConstDouble.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestConstFloat.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestConstFloat.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestConstFloat.class classes\simple > nul \

"simple\TestConstFloat.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestConstFloat.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestConstFloat.class classes\simple > nul \

"simple\TestConstFloat.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestConstLong.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestConstLong.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestConstLong.class classes\simple > nul \

"simple\TestConstLong.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestConstLong.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestConstLong.class classes\simple > nul \

"simple\TestConstLong.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestConstString.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestConstString.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestConstString.class classes\simple > nul \

"simple\TestConstString.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestConstString.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestConstString.class classes\simple > nul \

"simple\TestConstString.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestConstTypedef.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestConstTypedef.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestConstTypedef.class classes\simple > nul \

"simple\TestConstTypedef.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestConstTypedef.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestConstTypedef.class classes\simple > nul \

"simple\TestConstTypedef.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestEnum.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestEnum.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestEnum.class classes\simple > nul \

"simple\TestEnum.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestEnum.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestEnum.class classes\simple > nul \

"simple\TestEnum.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestEnumHelper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestEnumHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestEnumHelper.class classes\simple > nul \

"simple\TestEnumHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestEnumHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestEnumHelper.class classes\simple > nul \

"simple\TestEnumHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestEnumHolder.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestEnumHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestEnumHolder.class classes\simple > nul \

"simple\TestEnumHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestEnumHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestEnumHolder.class classes\simple > nul \

"simple\TestEnumHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestInterf.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestInterf.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestInterf.class classes\simple > nul \

"simple\TestInterf.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestInterf.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestInterf.class classes\simple > nul \

"simple\TestInterf.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestInterf2.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestInterf2.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestInterf2.class classes\simple > nul \

"simple\TestInterf2.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestInterf2.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestInterf2.class classes\simple > nul \

"simple\TestInterf2.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestInterf2Helper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestInterf2Helper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestInterf2Helper.class classes\simple > nul \

"simple\TestInterf2Helper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestInterf2Helper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestInterf2Helper.class classes\simple > nul \

"simple\TestInterf2Helper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestInterf2Holder.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestInterf2Holder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestInterf2Holder.class classes\simple > nul \

"simple\TestInterf2Holder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestInterf2Holder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestInterf2Holder.class classes\simple > nul \

"simple\TestInterf2Holder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestInterf2Operations.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestInterf2Operations.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestInterf2Operations.class classes\simple > nul \

"simple\TestInterf2Operations.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestInterf2Operations.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestInterf2Operations.class classes\simple > nul \

"simple\TestInterf2Operations.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestInterf3.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestInterf3.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestInterf3.class classes\simple > nul \

"simple\TestInterf3.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestInterf3.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestInterf3.class classes\simple > nul \

"simple\TestInterf3.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestInterf3Helper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestInterf3Helper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestInterf3Helper.class classes\simple > nul \

"simple\TestInterf3Helper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestInterf3Helper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestInterf3Helper.class classes\simple > nul \

"simple\TestInterf3Helper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestInterf3Holder.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestInterf3Holder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestInterf3Holder.class classes\simple > nul \

"simple\TestInterf3Holder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestInterf3Holder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestInterf3Holder.class classes\simple > nul \

"simple\TestInterf3Holder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestInterf3Operations.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestInterf3Operations.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestInterf3Operations.class classes\simple > nul \

"simple\TestInterf3Operations.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestInterf3Operations.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestInterf3Operations.class classes\simple > nul \

"simple\TestInterf3Operations.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestInterfHelper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestInterfHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestInterfHelper.class classes\simple > nul \

"simple\TestInterfHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestInterfHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestInterfHelper.class classes\simple > nul \

"simple\TestInterfHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestInterfHolder.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestInterfHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestInterfHolder.class classes\simple > nul \

"simple\TestInterfHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestInterfHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestInterfHolder.class classes\simple > nul \

"simple\TestInterfHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestInterfOperations.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestInterfOperations.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestInterfOperations.class classes\simple > nul \

"simple\TestInterfOperations.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestInterfOperations.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestInterfOperations.class classes\simple > nul \

"simple\TestInterfOperations.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestLI.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestLI.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestLI.class classes\simple > nul \

"simple\TestLI.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestLI.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestLI.class classes\simple > nul \

"simple\TestLI.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestLIHelper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestLIHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestLIHelper.class classes\simple > nul \

"simple\TestLIHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestLIHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestLIHelper.class classes\simple > nul \

"simple\TestLIHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestLIHolder.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestLIHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestLIHolder.class classes\simple > nul \

"simple\TestLIHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestLIHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestLIHolder.class classes\simple > nul \

"simple\TestLIHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestLIOperations.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestLIOperations.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestLIOperations.class classes\simple > nul \

"simple\TestLIOperations.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestLIOperations.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestLIOperations.class classes\simple > nul \

"simple\TestLIOperations.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestNestedStruct.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestNestedStruct.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestNestedStruct.class classes\simple > nul \

"simple\TestNestedStruct.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestNestedStruct.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestNestedStruct.class classes\simple > nul \

"simple\TestNestedStruct.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestNestedStructHelper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestNestedStructHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestNestedStructHelper.class classes\simple > nul \

"simple\TestNestedStructHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestNestedStructHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestNestedStructHelper.class classes\simple > nul \

"simple\TestNestedStructHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestNestedStructHolder.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestNestedStructHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestNestedStructHolder.class classes\simple > nul \

"simple\TestNestedStructHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestNestedStructHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestNestedStructHolder.class classes\simple > nul \

"simple\TestNestedStructHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestSeqTypedefHelper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestSeqTypedefHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestSeqTypedefHelper.class classes\simple > nul \

"simple\TestSeqTypedefHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestSeqTypedefHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestSeqTypedefHelper.class classes\simple > nul \

"simple\TestSeqTypedefHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestSeqTypedefHolder.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestSeqTypedefHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestSeqTypedefHolder.class classes\simple > nul \

"simple\TestSeqTypedefHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestSeqTypedefHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestSeqTypedefHolder.class classes\simple > nul \

"simple\TestSeqTypedefHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestStringArrayHelper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestStringArrayHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestStringArrayHelper.class classes\simple > nul \

"simple\TestStringArrayHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestStringArrayHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestStringArrayHelper.class classes\simple > nul \

"simple\TestStringArrayHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestStringArrayHolder.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestStringArrayHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestStringArrayHolder.class classes\simple > nul \

"simple\TestStringArrayHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestStringArrayHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestStringArrayHolder.class classes\simple > nul \

"simple\TestStringArrayHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestStruct.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestStruct.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestStruct.class classes\simple > nul \

"simple\TestStruct.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestStruct.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestStruct.class classes\simple > nul \

"simple\TestStruct.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestStructArrayHelper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestStructArrayHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestStructArrayHelper.class classes\simple > nul \

"simple\TestStructArrayHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestStructArrayHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestStructArrayHelper.class classes\simple > nul \

"simple\TestStructArrayHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestStructArrayHolder.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestStructArrayHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestStructArrayHolder.class classes\simple > nul \

"simple\TestStructArrayHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestStructArrayHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestStructArrayHolder.class classes\simple > nul \

"simple\TestStructArrayHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestStructHelper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestStructHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestStructHelper.class classes\simple > nul \

"simple\TestStructHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestStructHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestStructHelper.class classes\simple > nul \

"simple\TestStructHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestStructHolder.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestStructHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestStructHolder.class classes\simple > nul \

"simple\TestStructHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestStructHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestStructHolder.class classes\simple > nul \

"simple\TestStructHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestStructSequenceHelper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestStructSequenceHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestStructSequenceHelper.class classes\simple > nul \

"simple\TestStructSequenceHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestStructSequenceHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestStructSequenceHelper.class classes\simple > nul \

"simple\TestStructSequenceHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestStructSequenceHolder.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestStructSequenceHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestStructSequenceHolder.class classes\simple > nul \

"simple\TestStructSequenceHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestStructSequenceHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestStructSequenceHolder.class classes\simple > nul \

"simple\TestStructSequenceHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestStructWithEnum.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestStructWithEnum.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestStructWithEnum.class classes\simple > nul \

"simple\TestStructWithEnum.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestStructWithEnum.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestStructWithEnum.class classes\simple > nul \

"simple\TestStructWithEnum.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestStructWithEnumHelper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestStructWithEnumHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestStructWithEnumHelper.class classes\simple > nul \

"simple\TestStructWithEnumHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestStructWithEnumHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestStructWithEnumHelper.class classes\simple > nul \

"simple\TestStructWithEnumHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestStructWithEnumHolder.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestStructWithEnumHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestStructWithEnumHolder.class classes\simple > nul \

"simple\TestStructWithEnumHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestStructWithEnumHolder.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestStructWithEnumHolder.class classes\simple > nul \

"simple\TestStructWithEnumHolder.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TestTypedefHelper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestTypedefHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestTypedefHelper.class classes\simple > nul \

"simple\TestTypedefHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TestTypedefHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TestTypedefHelper.class classes\simple > nul \

"simple\TestTypedefHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple\TIMESTAMP_INVALID_NSEC.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TIMESTAMP_INVALID_NSEC.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TIMESTAMP_INVALID_NSEC.class classes\simple > nul \

"simple\TIMESTAMP_INVALID_NSEC.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="simple\TIMESTAMP_INVALID_NSEC.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\simple 2> nul & copy /y simple\TIMESTAMP_INVALID_NSEC.class classes\simple > nul \

"simple\TIMESTAMP_INVALID_NSEC.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="SomeSortOfTypedefHelper.java"

!IF  "$(CFG)" == "simple - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="SomeSortOfTypedefHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\. 2> nul & copy /y SomeSortOfTypedefHelper.class classes\. > nul \

"SomeSortOfTypedefHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking "$(JAVA_HOME)\bin\javac" on $(InputPath)
InputPath="SomeSortOfTypedefHelper.java"

BuildCmds= \
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar $(InputPath) \
	mkdir classes\. 2> nul & copy /y SomeSortOfTypedefHelper.class classes\. > nul \

"SomeSortOfTypedefHelper.class" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# End Group
# Begin Group "Idl2jni Files"

# PROP Default_Filter "idl"
# Begin Source File

SOURCE="other.idl"

!IF  "$(CFG)" == "simple - Win32 Debug"

USERDEP__other="$(IDL2JNI_ROOT)\bin\idl2jni.exe" "SomeSortOfTypedefHelper.java" "simpleJC.h"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking $(IDL2JNI_ROOT)\bin\idl2jni on $(InputPath)
InputPath="other.idl"

BuildCmds= \
	$(IDL2JNI_ROOT)\bin\idl2jni -DUSE_LOCAL -DIDL2JNI_VERSION=1.0 $(InputPath) \
	echo Input: other \

"otherJC.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"otherJC.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"otherJS.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"otherJS.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"SomeSortOfTypedefHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

USERDEP__other="$(IDL2JNI_ROOT)\bin\idl2jni.exe" "SomeSortOfTypedefHelper.java" "simpleJC.h"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking $(IDL2JNI_ROOT)\bin\idl2jni on $(InputPath)
InputPath="other.idl"

BuildCmds= \
	$(IDL2JNI_ROOT)\bin\idl2jni -DUSE_LOCAL -DIDL2JNI_VERSION=1.0 $(InputPath) \
	echo Input: other \

"otherJC.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"otherJC.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"otherJS.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"otherJS.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"SomeSortOfTypedefHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="otherTypeSupport.idl"

!IF  "$(CFG)" == "simple - Win32 Debug"

USERDEP__otherTypeSupport="$(IDL2JNI_ROOT)\bin\idl2jni.exe" "SomeSortOfTypedefHelper.java"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking $(IDL2JNI_ROOT)\bin\idl2jni on $(InputPath)
InputPath="otherTypeSupport.idl"

BuildCmds= \
	$(IDL2JNI_ROOT)\bin\idl2jni -DUSE_LOCAL -DIDL2JNI_VERSION=1.0 $(InputPath) \
	echo Input: otherTypeSupport \

"otherTypeSupportJC.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"otherTypeSupportJC.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"otherTypeSupportJS.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"otherTypeSupportJS.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

USERDEP__otherTypeSupport="$(IDL2JNI_ROOT)\bin\idl2jni.exe" "SomeSortOfTypedefHelper.java"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking $(IDL2JNI_ROOT)\bin\idl2jni on $(InputPath)
InputPath="otherTypeSupport.idl"

BuildCmds= \
	$(IDL2JNI_ROOT)\bin\idl2jni -DUSE_LOCAL -DIDL2JNI_VERSION=1.0 $(InputPath) \
	echo Input: otherTypeSupport \

"otherTypeSupportJC.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"otherTypeSupportJC.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"otherTypeSupportJS.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"otherTypeSupportJS.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple.idl"

!IF  "$(CFG)" == "simple - Win32 Debug"

USERDEP__simple="$(IDL2JNI_ROOT)\bin\idl2jni.exe" "SomeSortOfTypedefHelper.java"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking $(IDL2JNI_ROOT)\bin\idl2jni on $(InputPath)
InputPath="simple.idl"

BuildCmds= \
	$(IDL2JNI_ROOT)\bin\idl2jni -DUSE_LOCAL -DIDL2JNI_VERSION=1.0 $(InputPath) \
	echo Input: simple \

"simple\_Local2LocalBase.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\_Local2TAOPeer.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\_Local3LocalBase.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\_Local3TAOPeer.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\_TestInterf2Stub.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\_TestInterf3Stub.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\_TestInterfStub.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\_TestLILocalBase.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\_TestLITAOPeer.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\ArrayBounds.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\EnumArrayHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\EnumArrayHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\EnumSeqHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\EnumSeqHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\Local2.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\Local2Helper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\Local2Holder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\Local2Operations.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\Local2SeqHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\Local2SeqHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\Local3.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\Local3Helper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\Local3Holder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\Local3Operations.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\LongSeqSeqHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\LongSeqSeqHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\LongSeqSeqSeqHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\LongSeqSeqSeqHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\SeqOfTypedefedLongHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\SeqOfTypedefedLongHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\StringSeqHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\StringSeqHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\StringSeqSeqHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\StringSeqSeqHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\StringSeqSeqSeqHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\StringSeqSeqSeqHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\StructWithObjref.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\StructWithObjrefHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\StructWithObjrefHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestArrayTypedef2Helper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestArrayTypedefHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestArrayTypedefHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestConstBool.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestConstDouble.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestConstFloat.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestConstLong.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestConstString.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestConstTypedef.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestEnum.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestEnumHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestEnumHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestInterf.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestInterf2.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestInterf2Helper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestInterf2Holder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestInterf2Operations.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestInterf3.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestInterf3Helper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestInterf3Holder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestInterf3Operations.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestInterfHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestInterfHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestInterfOperations.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestLI.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestLIHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestLIHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestLIOperations.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestNestedStruct.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestNestedStructHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestNestedStructHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestSeqTypedefHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestSeqTypedefHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestStringArrayHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestStringArrayHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestStruct.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestStructArrayHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestStructArrayHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestStructHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestStructHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestStructSequenceHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestStructSequenceHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestStructWithEnum.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestStructWithEnumHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestStructWithEnumHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestTypedefHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TIMESTAMP_INVALID_NSEC.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simpleJC.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simpleJC.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simpleJS.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

USERDEP__simple="$(IDL2JNI_ROOT)\bin\idl2jni.exe" "SomeSortOfTypedefHelper.java"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking $(IDL2JNI_ROOT)\bin\idl2jni on $(InputPath)
InputPath="simple.idl"

BuildCmds= \
	$(IDL2JNI_ROOT)\bin\idl2jni -DUSE_LOCAL -DIDL2JNI_VERSION=1.0 $(InputPath) \
	echo Input: simple \

"simple\_Local2LocalBase.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\_Local2TAOPeer.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\_Local3LocalBase.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\_Local3TAOPeer.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\_TestInterf2Stub.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\_TestInterf3Stub.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\_TestInterfStub.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\_TestLILocalBase.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\_TestLITAOPeer.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\ArrayBounds.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\EnumArrayHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\EnumArrayHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\EnumSeqHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\EnumSeqHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\Local2.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\Local2Helper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\Local2Holder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\Local2Operations.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\Local2SeqHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\Local2SeqHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\Local3.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\Local3Helper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\Local3Holder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\Local3Operations.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\LongSeqSeqHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\LongSeqSeqHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\LongSeqSeqSeqHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\LongSeqSeqSeqHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\SeqOfTypedefedLongHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\SeqOfTypedefedLongHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\StringSeqHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\StringSeqHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\StringSeqSeqHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\StringSeqSeqHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\StringSeqSeqSeqHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\StringSeqSeqSeqHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\StructWithObjref.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\StructWithObjrefHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\StructWithObjrefHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestArrayTypedef2Helper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestArrayTypedefHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestArrayTypedefHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestConstBool.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestConstDouble.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestConstFloat.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestConstLong.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestConstString.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestConstTypedef.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestEnum.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestEnumHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestEnumHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestInterf.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestInterf2.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestInterf2Helper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestInterf2Holder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestInterf2Operations.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestInterf3.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestInterf3Helper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestInterf3Holder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestInterf3Operations.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestInterfHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestInterfHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestInterfOperations.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestLI.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestLIHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestLIHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestLIOperations.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestNestedStruct.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestNestedStructHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestNestedStructHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestSeqTypedefHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestSeqTypedefHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestStringArrayHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestStringArrayHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestStruct.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestStructArrayHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestStructArrayHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestStructHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestStructHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestStructSequenceHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestStructSequenceHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestStructWithEnum.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestStructWithEnumHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestStructWithEnumHolder.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TestTypedefHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\TIMESTAMP_INVALID_NSEC.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simpleJC.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simpleJC.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simpleJS.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# End Group
# End Target
# End Project
