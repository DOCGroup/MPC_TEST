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

SOURCE="simpleJC.cpp"
# End Source File
# End Group
# Begin Group "Java Files"

# PROP Default_Filter "java"
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

USERDEP__other="$(IDL2JNI_ROOT)\bin\idl2jni.exe" "simpleJC.h"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking $(IDL2JNI_ROOT)\bin\idl2jni on $(InputPath)
InputPath="other.idl"

BuildCmds= \
	PATH=%PATH%;$(ACE_ROOT)\lib \
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

"SomeSortOfTypedefHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "simple - Win32 Release"

USERDEP__other="$(IDL2JNI_ROOT)\bin\idl2jni.exe" "simpleJC.h"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking $(IDL2JNI_ROOT)\bin\idl2jni on $(InputPath)
InputPath="other.idl"

BuildCmds= \
	PATH=%PATH%;$(ACE_ROOT)\lib \
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

"SomeSortOfTypedefHelper.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="simple.idl"

!IF  "$(CFG)" == "simple - Win32 Debug"

USERDEP__simple="$(IDL2JNI_ROOT)\bin\idl2jni.exe"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking $(IDL2JNI_ROOT)\bin\idl2jni on $(InputPath)
InputPath="simple.idl"

BuildCmds= \
	PATH=%PATH%;$(ACE_ROOT)\lib \
	$(IDL2JNI_ROOT)\bin\idl2jni -DUSE_LOCAL -DIDL2JNI_VERSION=1.0 $(InputPath) \
	echo Input: simple \

"simple\_Local2LocalBase.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\_Local3LocalBase.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\_TestInterf2Stub.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\_TestInterf3Stub.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\_TestInterfStub.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\_TestLILocalBase.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
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

USERDEP__simple="$(IDL2JNI_ROOT)\bin\idl2jni.exe"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking $(IDL2JNI_ROOT)\bin\idl2jni on $(InputPath)
InputPath="simple.idl"

BuildCmds= \
	PATH=%PATH%;$(ACE_ROOT)\lib \
	$(IDL2JNI_ROOT)\bin\idl2jni -DUSE_LOCAL -DIDL2JNI_VERSION=1.0 $(InputPath) \
	echo Input: simple \

"simple\_Local2LocalBase.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\_Local3LocalBase.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\_TestInterf2Stub.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\_TestInterf3Stub.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\_TestInterfStub.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"simple\_TestLILocalBase.java" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
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
