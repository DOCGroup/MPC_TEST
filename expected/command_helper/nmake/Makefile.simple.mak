# Microsoft Developer Studio Generated NMAKE File
!IF "$(CFG)" == ""
CFG=Win32 Debug
!MESSAGE No configuration specified. Defaulting to Win32 Debug.
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release"
!ELSE
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE
!MESSAGE NMAKE /f "Makefile.simple.mak" CFG="Win32 Debug"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "Win32 Static Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "Win32 Static Release" (based on "Win32 (x86) Static Library")
!MESSAGE
!ERROR An invalid configuration was specified.
!ENDIF

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF

!IF "$(DEPGEN)" == ""
!IF EXISTS("$(MPC_ROOT)/depgen.pl")
DEPGEN=perl $(MPC_ROOT)/depgen.pl -i -t nmake
!ELSEIF EXISTS("$(DEPGEN_ROOT)/depgen.pl")
DEPGEN=perl $(DEPGEN_ROOT)/depgen.pl -i -t nmake
!ELSEIF EXISTS("$(ACE_ROOT)/bin/depgen.pl")
DEPGEN=perl $(ACE_ROOT)/bin/depgen.pl -i -t nmake
!ENDIF
!ENDIF

GENERATED_DIRTY = "simple\_Local2LocalBase.class" "simple\_Local2TAOPeer.class" "simple\_Local3LocalBase.class" "simple\_Local3TAOPeer.class" "simple\_TestInterf2Stub.class" "simple\_TestInterf3Stub.class" "simple\_TestInterfStub.class" "simple\_TestLILocalBase.class" "simple\_TestLITAOPeer.class" "simple\ArrayBounds.class" "simple\EnumArrayHelper.class" "simple\EnumArrayHolder.class" "simple\EnumSeqHelper.class" "simple\EnumSeqHolder.class" "simple\Local2.class" "simple\Local2Helper.class" "simple\Local2Holder.class" "simple\Local2Operations.class" "simple\Local2SeqHelper.class" "simple\Local2SeqHolder.class" "simple\Local3.class" "simple\Local3Helper.class" "simple\Local3Holder.class" "simple\Local3Operations.class" "simple\LongSeqSeqHelper.class" "simple\LongSeqSeqHolder.class" "simple\LongSeqSeqSeqHelper.class" "simple\LongSeqSeqSeqHolder.class" "simple\SeqOfTypedefedLongHelper.class" "simple\SeqOfTypedefedLongHolder.class" "simple\StringSeqHelper.class" "simple\StringSeqHolder.class" "simple\StringSeqSeqHelper.class" "simple\StringSeqSeqHolder.class" "simple\StringSeqSeqSeqHelper.class" "simple\StringSeqSeqSeqHolder.class" "simple\StructWithObjref.class" "simple\StructWithObjrefHelper.class" "simple\StructWithObjrefHolder.class" "simple\TestArrayTypedef2Helper.class" "simple\TestArrayTypedefHelper.class" "simple\TestArrayTypedefHolder.class" "simple\TestConstBool.class" "simple\TestConstDouble.class" "simple\TestConstFloat.class" "simple\TestConstLong.class" "simple\TestConstString.class" "simple\TestConstTypedef.class" "simple\TestEnum.class" "simple\TestEnumHelper.class" "simple\TestEnumHolder.class" "simple\TestInterf.class" "simple\TestInterf2.class" "simple\TestInterf2Helper.class" "simple\TestInterf2Holder.class" "simple\TestInterf2Operations.class" "simple\TestInterf3.class" "simple\TestInterf3Helper.class" "simple\TestInterf3Holder.class" "simple\TestInterf3Operations.class" "simple\TestInterfHelper.class" "simple\TestInterfHolder.class" "simple\TestInterfOperations.class" "simple\TestLI.class" "simple\TestLIHelper.class" "simple\TestLIHolder.class" "simple\TestLIOperations.class" "simple\TestNestedStruct.class" "simple\TestNestedStructHelper.class" "simple\TestNestedStructHolder.class" "simple\TestSeqTypedefHelper.class" "simple\TestSeqTypedefHolder.class" "simple\TestStringArrayHelper.class" "simple\TestStringArrayHolder.class" "simple\TestStruct.class" "simple\TestStructArrayHelper.class" "simple\TestStructArrayHolder.class" "simple\TestStructHelper.class" "simple\TestStructHolder.class" "simple\TestStructSequenceHelper.class" "simple\TestStructSequenceHolder.class" "simple\TestStructWithEnum.class" "simple\TestStructWithEnumHelper.class" "simple\TestStructWithEnumHolder.class" "simple\TestTypedefHelper.class" "simple\TIMESTAMP_INVALID_NSEC.class" "SomeSortOfTypedefHelper.class" "otherJC.cpp" "otherJC.h" "otherJS.cpp" "otherJS.h" "SomeSortOfTypedefHelper.java" "otherTypeSupportJC.cpp" "otherTypeSupportJC.h" "otherTypeSupportJS.cpp" "otherTypeSupportJS.h" "simple\_Local2LocalBase.java" "simple\_Local2TAOPeer.java" "simple\_Local3LocalBase.java" "simple\_Local3TAOPeer.java" "simple\_TestInterf2Stub.java" "simple\_TestInterf3Stub.java" "simple\_TestInterfStub.java" "simple\_TestLILocalBase.java" "simple\_TestLITAOPeer.java" "simple\ArrayBounds.java" "simple\EnumArrayHelper.java" "simple\EnumArrayHolder.java" "simple\EnumSeqHelper.java" "simple\EnumSeqHolder.java" "simple\Local2.java" "simple\Local2Helper.java" "simple\Local2Holder.java" "simple\Local2Operations.java" "simple\Local2SeqHelper.java" "simple\Local2SeqHolder.java" "simple\Local3.java" "simple\Local3Helper.java" "simple\Local3Holder.java" "simple\Local3Operations.java" "simple\LongSeqSeqHelper.java" "simple\LongSeqSeqHolder.java" "simple\LongSeqSeqSeqHelper.java" "simple\LongSeqSeqSeqHolder.java" "simple\SeqOfTypedefedLongHelper.java" "simple\SeqOfTypedefedLongHolder.java" "simple\StringSeqHelper.java" "simple\StringSeqHolder.java" "simple\StringSeqSeqHelper.java" "simple\StringSeqSeqHolder.java" "simple\StringSeqSeqSeqHelper.java" "simple\StringSeqSeqSeqHolder.java" "simple\StructWithObjref.java" "simple\StructWithObjrefHelper.java" "simple\StructWithObjrefHolder.java" "simple\TestArrayTypedef2Helper.java" "simple\TestArrayTypedefHelper.java" "simple\TestArrayTypedefHolder.java" "simple\TestConstBool.java" "simple\TestConstDouble.java" "simple\TestConstFloat.java" "simple\TestConstLong.java" "simple\TestConstString.java" "simple\TestConstTypedef.java" "simple\TestEnum.java" "simple\TestEnumHelper.java" "simple\TestEnumHolder.java" "simple\TestInterf.java" "simple\TestInterf2.java" "simple\TestInterf2Helper.java" "simple\TestInterf2Holder.java" "simple\TestInterf2Operations.java" "simple\TestInterf3.java" "simple\TestInterf3Helper.java" "simple\TestInterf3Holder.java" "simple\TestInterf3Operations.java" "simple\TestInterfHelper.java" "simple\TestInterfHolder.java" "simple\TestInterfOperations.java" "simple\TestLI.java" "simple\TestLIHelper.java" "simple\TestLIHolder.java" "simple\TestLIOperations.java" "simple\TestNestedStruct.java" "simple\TestNestedStructHelper.java" "simple\TestNestedStructHolder.java" "simple\TestSeqTypedefHelper.java" "simple\TestSeqTypedefHolder.java" "simple\TestStringArrayHelper.java" "simple\TestStringArrayHolder.java" "simple\TestStruct.java" "simple\TestStructArrayHelper.java" "simple\TestStructArrayHolder.java" "simple\TestStructHelper.java" "simple\TestStructHolder.java" "simple\TestStructSequenceHelper.java" "simple\TestStructSequenceHolder.java" "simple\TestStructWithEnum.java" "simple\TestStructWithEnumHelper.java" "simple\TestStructWithEnumHolder.java" "simple\TestTypedefHelper.java" "simple\TIMESTAMP_INVALID_NSEC.java" "simpleJC.cpp" "simpleJC.h" "simpleJS.h"

!IF  "$(CFG)" == "Win32 Debug"

OUTDIR=.
INTDIR=Debug\simple\I386

ALL : "$(INTDIR)" "$(OUTDIR)" __prebuild__ DEPENDCHECK $(GENERATED_DIRTY) ".\weird$$named.dll" __postbuild__

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"$(IDL2JNI_ROOT)\runtime" -I"$(JAVA_HOME)\include" -I"$(JAVA_HOME)\include\$(JAVA_PLATFORM)" -I"something" -D_DEBUG -DWIN32 -D_WINDOWS -DUSING_PCH -f "Makefile.simple.dep" "otherJC.cpp" "otherJS.cpp" "otherTypeSupportJC.cpp" "otherTypeSupportJS.cpp" "simpleJC.cpp" "simple_pch.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(OUTDIR)\weird$$named.pdb"
	-@del /f/q ".\weird$$named.dll"
	-@del /f/q "$(OUTDIR)\weird$$named.lib"
	-@del /f/q "$(OUTDIR)\weird$$named.exp"
	-@del /f/q "$(OUTDIR)\weird$$named.ilk"
	-@del /f/q "simple\_Local2LocalBase.class"
	-@del /f/q "simple\_Local2TAOPeer.class"
	-@del /f/q "simple\_Local3LocalBase.class"
	-@del /f/q "simple\_Local3TAOPeer.class"
	-@del /f/q "simple\_TestInterf2Stub.class"
	-@del /f/q "simple\_TestInterf3Stub.class"
	-@del /f/q "simple\_TestInterfStub.class"
	-@del /f/q "simple\_TestLILocalBase.class"
	-@del /f/q "simple\_TestLITAOPeer.class"
	-@del /f/q "simple\ArrayBounds.class"
	-@del /f/q "simple\EnumArrayHelper.class"
	-@del /f/q "simple\EnumArrayHolder.class"
	-@del /f/q "simple\EnumSeqHelper.class"
	-@del /f/q "simple\EnumSeqHolder.class"
	-@del /f/q "simple\Local2.class"
	-@del /f/q "simple\Local2Helper.class"
	-@del /f/q "simple\Local2Holder.class"
	-@del /f/q "simple\Local2Operations.class"
	-@del /f/q "simple\Local2SeqHelper.class"
	-@del /f/q "simple\Local2SeqHolder.class"
	-@del /f/q "simple\Local3.class"
	-@del /f/q "simple\Local3Helper.class"
	-@del /f/q "simple\Local3Holder.class"
	-@del /f/q "simple\Local3Operations.class"
	-@del /f/q "simple\LongSeqSeqHelper.class"
	-@del /f/q "simple\LongSeqSeqHolder.class"
	-@del /f/q "simple\LongSeqSeqSeqHelper.class"
	-@del /f/q "simple\LongSeqSeqSeqHolder.class"
	-@del /f/q "simple\SeqOfTypedefedLongHelper.class"
	-@del /f/q "simple\SeqOfTypedefedLongHolder.class"
	-@del /f/q "simple\StringSeqHelper.class"
	-@del /f/q "simple\StringSeqHolder.class"
	-@del /f/q "simple\StringSeqSeqHelper.class"
	-@del /f/q "simple\StringSeqSeqHolder.class"
	-@del /f/q "simple\StringSeqSeqSeqHelper.class"
	-@del /f/q "simple\StringSeqSeqSeqHolder.class"
	-@del /f/q "simple\StructWithObjref.class"
	-@del /f/q "simple\StructWithObjrefHelper.class"
	-@del /f/q "simple\StructWithObjrefHolder.class"
	-@del /f/q "simple\TestArrayTypedef2Helper.class"
	-@del /f/q "simple\TestArrayTypedefHelper.class"
	-@del /f/q "simple\TestArrayTypedefHolder.class"
	-@del /f/q "simple\TestConstBool.class"
	-@del /f/q "simple\TestConstDouble.class"
	-@del /f/q "simple\TestConstFloat.class"
	-@del /f/q "simple\TestConstLong.class"
	-@del /f/q "simple\TestConstString.class"
	-@del /f/q "simple\TestConstTypedef.class"
	-@del /f/q "simple\TestEnum.class"
	-@del /f/q "simple\TestEnumHelper.class"
	-@del /f/q "simple\TestEnumHolder.class"
	-@del /f/q "simple\TestInterf.class"
	-@del /f/q "simple\TestInterf2.class"
	-@del /f/q "simple\TestInterf2Helper.class"
	-@del /f/q "simple\TestInterf2Holder.class"
	-@del /f/q "simple\TestInterf2Operations.class"
	-@del /f/q "simple\TestInterf3.class"
	-@del /f/q "simple\TestInterf3Helper.class"
	-@del /f/q "simple\TestInterf3Holder.class"
	-@del /f/q "simple\TestInterf3Operations.class"
	-@del /f/q "simple\TestInterfHelper.class"
	-@del /f/q "simple\TestInterfHolder.class"
	-@del /f/q "simple\TestInterfOperations.class"
	-@del /f/q "simple\TestLI.class"
	-@del /f/q "simple\TestLIHelper.class"
	-@del /f/q "simple\TestLIHolder.class"
	-@del /f/q "simple\TestLIOperations.class"
	-@del /f/q "simple\TestNestedStruct.class"
	-@del /f/q "simple\TestNestedStructHelper.class"
	-@del /f/q "simple\TestNestedStructHolder.class"
	-@del /f/q "simple\TestSeqTypedefHelper.class"
	-@del /f/q "simple\TestSeqTypedefHolder.class"
	-@del /f/q "simple\TestStringArrayHelper.class"
	-@del /f/q "simple\TestStringArrayHolder.class"
	-@del /f/q "simple\TestStruct.class"
	-@del /f/q "simple\TestStructArrayHelper.class"
	-@del /f/q "simple\TestStructArrayHolder.class"
	-@del /f/q "simple\TestStructHelper.class"
	-@del /f/q "simple\TestStructHolder.class"
	-@del /f/q "simple\TestStructSequenceHelper.class"
	-@del /f/q "simple\TestStructSequenceHolder.class"
	-@del /f/q "simple\TestStructWithEnum.class"
	-@del /f/q "simple\TestStructWithEnumHelper.class"
	-@del /f/q "simple\TestStructWithEnumHolder.class"
	-@del /f/q "simple\TestTypedefHelper.class"
	-@del /f/q "simple\TIMESTAMP_INVALID_NSEC.class"
	-@del /f/q "SomeSortOfTypedefHelper.class"
	-@del /f/q "otherJC.cpp"
	-@del /f/q "otherJC.h"
	-@del /f/q "otherJS.cpp"
	-@del /f/q "otherJS.h"
	-@del /f/q "SomeSortOfTypedefHelper.java"
	-@del /f/q "otherTypeSupportJC.cpp"
	-@del /f/q "otherTypeSupportJC.h"
	-@del /f/q "otherTypeSupportJS.cpp"
	-@del /f/q "otherTypeSupportJS.h"
	-@del /f/q "simple\_Local2LocalBase.java"
	-@del /f/q "simple\_Local2TAOPeer.java"
	-@del /f/q "simple\_Local3LocalBase.java"
	-@del /f/q "simple\_Local3TAOPeer.java"
	-@del /f/q "simple\_TestInterf2Stub.java"
	-@del /f/q "simple\_TestInterf3Stub.java"
	-@del /f/q "simple\_TestInterfStub.java"
	-@del /f/q "simple\_TestLILocalBase.java"
	-@del /f/q "simple\_TestLITAOPeer.java"
	-@del /f/q "simple\ArrayBounds.java"
	-@del /f/q "simple\EnumArrayHelper.java"
	-@del /f/q "simple\EnumArrayHolder.java"
	-@del /f/q "simple\EnumSeqHelper.java"
	-@del /f/q "simple\EnumSeqHolder.java"
	-@del /f/q "simple\Local2.java"
	-@del /f/q "simple\Local2Helper.java"
	-@del /f/q "simple\Local2Holder.java"
	-@del /f/q "simple\Local2Operations.java"
	-@del /f/q "simple\Local2SeqHelper.java"
	-@del /f/q "simple\Local2SeqHolder.java"
	-@del /f/q "simple\Local3.java"
	-@del /f/q "simple\Local3Helper.java"
	-@del /f/q "simple\Local3Holder.java"
	-@del /f/q "simple\Local3Operations.java"
	-@del /f/q "simple\LongSeqSeqHelper.java"
	-@del /f/q "simple\LongSeqSeqHolder.java"
	-@del /f/q "simple\LongSeqSeqSeqHelper.java"
	-@del /f/q "simple\LongSeqSeqSeqHolder.java"
	-@del /f/q "simple\SeqOfTypedefedLongHelper.java"
	-@del /f/q "simple\SeqOfTypedefedLongHolder.java"
	-@del /f/q "simple\StringSeqHelper.java"
	-@del /f/q "simple\StringSeqHolder.java"
	-@del /f/q "simple\StringSeqSeqHelper.java"
	-@del /f/q "simple\StringSeqSeqHolder.java"
	-@del /f/q "simple\StringSeqSeqSeqHelper.java"
	-@del /f/q "simple\StringSeqSeqSeqHolder.java"
	-@del /f/q "simple\StructWithObjref.java"
	-@del /f/q "simple\StructWithObjrefHelper.java"
	-@del /f/q "simple\StructWithObjrefHolder.java"
	-@del /f/q "simple\TestArrayTypedef2Helper.java"
	-@del /f/q "simple\TestArrayTypedefHelper.java"
	-@del /f/q "simple\TestArrayTypedefHolder.java"
	-@del /f/q "simple\TestConstBool.java"
	-@del /f/q "simple\TestConstDouble.java"
	-@del /f/q "simple\TestConstFloat.java"
	-@del /f/q "simple\TestConstLong.java"
	-@del /f/q "simple\TestConstString.java"
	-@del /f/q "simple\TestConstTypedef.java"
	-@del /f/q "simple\TestEnum.java"
	-@del /f/q "simple\TestEnumHelper.java"
	-@del /f/q "simple\TestEnumHolder.java"
	-@del /f/q "simple\TestInterf.java"
	-@del /f/q "simple\TestInterf2.java"
	-@del /f/q "simple\TestInterf2Helper.java"
	-@del /f/q "simple\TestInterf2Holder.java"
	-@del /f/q "simple\TestInterf2Operations.java"
	-@del /f/q "simple\TestInterf3.java"
	-@del /f/q "simple\TestInterf3Helper.java"
	-@del /f/q "simple\TestInterf3Holder.java"
	-@del /f/q "simple\TestInterf3Operations.java"
	-@del /f/q "simple\TestInterfHelper.java"
	-@del /f/q "simple\TestInterfHolder.java"
	-@del /f/q "simple\TestInterfOperations.java"
	-@del /f/q "simple\TestLI.java"
	-@del /f/q "simple\TestLIHelper.java"
	-@del /f/q "simple\TestLIHolder.java"
	-@del /f/q "simple\TestLIOperations.java"
	-@del /f/q "simple\TestNestedStruct.java"
	-@del /f/q "simple\TestNestedStructHelper.java"
	-@del /f/q "simple\TestNestedStructHolder.java"
	-@del /f/q "simple\TestSeqTypedefHelper.java"
	-@del /f/q "simple\TestSeqTypedefHolder.java"
	-@del /f/q "simple\TestStringArrayHelper.java"
	-@del /f/q "simple\TestStringArrayHolder.java"
	-@del /f/q "simple\TestStruct.java"
	-@del /f/q "simple\TestStructArrayHelper.java"
	-@del /f/q "simple\TestStructArrayHolder.java"
	-@del /f/q "simple\TestStructHelper.java"
	-@del /f/q "simple\TestStructHolder.java"
	-@del /f/q "simple\TestStructSequenceHelper.java"
	-@del /f/q "simple\TestStructSequenceHolder.java"
	-@del /f/q "simple\TestStructWithEnum.java"
	-@del /f/q "simple\TestStructWithEnumHelper.java"
	-@del /f/q "simple\TestStructWithEnumHolder.java"
	-@del /f/q "simple\TestTypedefHelper.java"
	-@del /f/q "simple\TIMESTAMP_INVALID_NSEC.java"
	-@del /f/q "simpleJC.cpp"
	-@del /f/q "simpleJC.h"
	-@del /f/q "simpleJS.h"
	-del /f/s/q classes ./simple.jar & del /f/s/q simple

"$(INTDIR)" :
	if not exist "Debug\$(NULL)" mkdir "Debug"
	if not exist "Debug\simple\$(NULL)" mkdir "Debug\simple"
	if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /I "$(IDL2JNI_ROOT)\runtime" /I "$(JAVA_HOME)\include" /I "$(JAVA_HOME)\include\$(JAVA_PLATFORM)" /I "something" /D _DEBUG /D WIN32 /D _WINDOWS  /FD /c
CPP_PCH=/D USING_PCH /Yu"simple_pch.h" /Fp"$(INTDIR)\simple_pch.pch"
CPP_PROJ=$(CPP_COMMON) $(CPP_PCH) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO idl2jni_runtimed.lib /libpath:"." /libpath:"$(IDL2JNI_ROOT)\lib" /nologo /version:1.6653 /subsystem:windows /dll /debug /pdb:".\weird$$named.pdb" /machine:I386 /out:".\weird$$named.dll" /implib:"$(OUTDIR)\weird$$named.lib"
LINK32_OBJS= \
	"$(INTDIR)\simple_pch.obj" \
	"$(INTDIR)\otherJC.obj" \
	"$(INTDIR)\otherJS.obj" \
	"$(INTDIR)\otherTypeSupportJC.obj" \
	"$(INTDIR)\otherTypeSupportJS.obj" \
	"$(INTDIR)\simpleJC.obj"

".\weird$$named.dll" : $(DEF_FILE) $(LINK32_OBJS)
	$(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
	if exist ".\weird$$named.dll.manifest" mt.exe -manifest ".\weird$$named.dll.manifest" -outputresource:$@;2

__prebuild__:
	@mkdir classes 2> nul || type nul > nul

__postbuild__:
	@"$(JAVA_HOME)/bin/jar" -cf ./simple.jar -C classes .

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=.
INTDIR=Release\simple\I386

ALL : "$(INTDIR)" "$(OUTDIR)" __prebuild__ DEPENDCHECK $(GENERATED_DIRTY) ".\weird$$name.dll" __postbuild__

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"$(IDL2JNI_ROOT)\runtime" -I"$(JAVA_HOME)\include" -I"$(JAVA_HOME)\include\$(JAVA_PLATFORM)" -I"something" -DNDEBUG -DWIN32 -D_WINDOWS -DUSING_PCH -f "Makefile.simple.dep" "otherJC.cpp" "otherJS.cpp" "otherTypeSupportJC.cpp" "otherTypeSupportJS.cpp" "simpleJC.cpp" "simple_pch.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q ".\weird$$name.dll"
	-@del /f/q "$(OUTDIR)\weird$$name.lib"
	-@del /f/q "$(OUTDIR)\weird$$name.exp"
	-@del /f/q "$(OUTDIR)\weird$$name.ilk"
	-@del /f/q "simple\_Local2LocalBase.class"
	-@del /f/q "simple\_Local2TAOPeer.class"
	-@del /f/q "simple\_Local3LocalBase.class"
	-@del /f/q "simple\_Local3TAOPeer.class"
	-@del /f/q "simple\_TestInterf2Stub.class"
	-@del /f/q "simple\_TestInterf3Stub.class"
	-@del /f/q "simple\_TestInterfStub.class"
	-@del /f/q "simple\_TestLILocalBase.class"
	-@del /f/q "simple\_TestLITAOPeer.class"
	-@del /f/q "simple\ArrayBounds.class"
	-@del /f/q "simple\EnumArrayHelper.class"
	-@del /f/q "simple\EnumArrayHolder.class"
	-@del /f/q "simple\EnumSeqHelper.class"
	-@del /f/q "simple\EnumSeqHolder.class"
	-@del /f/q "simple\Local2.class"
	-@del /f/q "simple\Local2Helper.class"
	-@del /f/q "simple\Local2Holder.class"
	-@del /f/q "simple\Local2Operations.class"
	-@del /f/q "simple\Local2SeqHelper.class"
	-@del /f/q "simple\Local2SeqHolder.class"
	-@del /f/q "simple\Local3.class"
	-@del /f/q "simple\Local3Helper.class"
	-@del /f/q "simple\Local3Holder.class"
	-@del /f/q "simple\Local3Operations.class"
	-@del /f/q "simple\LongSeqSeqHelper.class"
	-@del /f/q "simple\LongSeqSeqHolder.class"
	-@del /f/q "simple\LongSeqSeqSeqHelper.class"
	-@del /f/q "simple\LongSeqSeqSeqHolder.class"
	-@del /f/q "simple\SeqOfTypedefedLongHelper.class"
	-@del /f/q "simple\SeqOfTypedefedLongHolder.class"
	-@del /f/q "simple\StringSeqHelper.class"
	-@del /f/q "simple\StringSeqHolder.class"
	-@del /f/q "simple\StringSeqSeqHelper.class"
	-@del /f/q "simple\StringSeqSeqHolder.class"
	-@del /f/q "simple\StringSeqSeqSeqHelper.class"
	-@del /f/q "simple\StringSeqSeqSeqHolder.class"
	-@del /f/q "simple\StructWithObjref.class"
	-@del /f/q "simple\StructWithObjrefHelper.class"
	-@del /f/q "simple\StructWithObjrefHolder.class"
	-@del /f/q "simple\TestArrayTypedef2Helper.class"
	-@del /f/q "simple\TestArrayTypedefHelper.class"
	-@del /f/q "simple\TestArrayTypedefHolder.class"
	-@del /f/q "simple\TestConstBool.class"
	-@del /f/q "simple\TestConstDouble.class"
	-@del /f/q "simple\TestConstFloat.class"
	-@del /f/q "simple\TestConstLong.class"
	-@del /f/q "simple\TestConstString.class"
	-@del /f/q "simple\TestConstTypedef.class"
	-@del /f/q "simple\TestEnum.class"
	-@del /f/q "simple\TestEnumHelper.class"
	-@del /f/q "simple\TestEnumHolder.class"
	-@del /f/q "simple\TestInterf.class"
	-@del /f/q "simple\TestInterf2.class"
	-@del /f/q "simple\TestInterf2Helper.class"
	-@del /f/q "simple\TestInterf2Holder.class"
	-@del /f/q "simple\TestInterf2Operations.class"
	-@del /f/q "simple\TestInterf3.class"
	-@del /f/q "simple\TestInterf3Helper.class"
	-@del /f/q "simple\TestInterf3Holder.class"
	-@del /f/q "simple\TestInterf3Operations.class"
	-@del /f/q "simple\TestInterfHelper.class"
	-@del /f/q "simple\TestInterfHolder.class"
	-@del /f/q "simple\TestInterfOperations.class"
	-@del /f/q "simple\TestLI.class"
	-@del /f/q "simple\TestLIHelper.class"
	-@del /f/q "simple\TestLIHolder.class"
	-@del /f/q "simple\TestLIOperations.class"
	-@del /f/q "simple\TestNestedStruct.class"
	-@del /f/q "simple\TestNestedStructHelper.class"
	-@del /f/q "simple\TestNestedStructHolder.class"
	-@del /f/q "simple\TestSeqTypedefHelper.class"
	-@del /f/q "simple\TestSeqTypedefHolder.class"
	-@del /f/q "simple\TestStringArrayHelper.class"
	-@del /f/q "simple\TestStringArrayHolder.class"
	-@del /f/q "simple\TestStruct.class"
	-@del /f/q "simple\TestStructArrayHelper.class"
	-@del /f/q "simple\TestStructArrayHolder.class"
	-@del /f/q "simple\TestStructHelper.class"
	-@del /f/q "simple\TestStructHolder.class"
	-@del /f/q "simple\TestStructSequenceHelper.class"
	-@del /f/q "simple\TestStructSequenceHolder.class"
	-@del /f/q "simple\TestStructWithEnum.class"
	-@del /f/q "simple\TestStructWithEnumHelper.class"
	-@del /f/q "simple\TestStructWithEnumHolder.class"
	-@del /f/q "simple\TestTypedefHelper.class"
	-@del /f/q "simple\TIMESTAMP_INVALID_NSEC.class"
	-@del /f/q "SomeSortOfTypedefHelper.class"
	-@del /f/q "otherJC.cpp"
	-@del /f/q "otherJC.h"
	-@del /f/q "otherJS.cpp"
	-@del /f/q "otherJS.h"
	-@del /f/q "SomeSortOfTypedefHelper.java"
	-@del /f/q "otherTypeSupportJC.cpp"
	-@del /f/q "otherTypeSupportJC.h"
	-@del /f/q "otherTypeSupportJS.cpp"
	-@del /f/q "otherTypeSupportJS.h"
	-@del /f/q "simple\_Local2LocalBase.java"
	-@del /f/q "simple\_Local2TAOPeer.java"
	-@del /f/q "simple\_Local3LocalBase.java"
	-@del /f/q "simple\_Local3TAOPeer.java"
	-@del /f/q "simple\_TestInterf2Stub.java"
	-@del /f/q "simple\_TestInterf3Stub.java"
	-@del /f/q "simple\_TestInterfStub.java"
	-@del /f/q "simple\_TestLILocalBase.java"
	-@del /f/q "simple\_TestLITAOPeer.java"
	-@del /f/q "simple\ArrayBounds.java"
	-@del /f/q "simple\EnumArrayHelper.java"
	-@del /f/q "simple\EnumArrayHolder.java"
	-@del /f/q "simple\EnumSeqHelper.java"
	-@del /f/q "simple\EnumSeqHolder.java"
	-@del /f/q "simple\Local2.java"
	-@del /f/q "simple\Local2Helper.java"
	-@del /f/q "simple\Local2Holder.java"
	-@del /f/q "simple\Local2Operations.java"
	-@del /f/q "simple\Local2SeqHelper.java"
	-@del /f/q "simple\Local2SeqHolder.java"
	-@del /f/q "simple\Local3.java"
	-@del /f/q "simple\Local3Helper.java"
	-@del /f/q "simple\Local3Holder.java"
	-@del /f/q "simple\Local3Operations.java"
	-@del /f/q "simple\LongSeqSeqHelper.java"
	-@del /f/q "simple\LongSeqSeqHolder.java"
	-@del /f/q "simple\LongSeqSeqSeqHelper.java"
	-@del /f/q "simple\LongSeqSeqSeqHolder.java"
	-@del /f/q "simple\SeqOfTypedefedLongHelper.java"
	-@del /f/q "simple\SeqOfTypedefedLongHolder.java"
	-@del /f/q "simple\StringSeqHelper.java"
	-@del /f/q "simple\StringSeqHolder.java"
	-@del /f/q "simple\StringSeqSeqHelper.java"
	-@del /f/q "simple\StringSeqSeqHolder.java"
	-@del /f/q "simple\StringSeqSeqSeqHelper.java"
	-@del /f/q "simple\StringSeqSeqSeqHolder.java"
	-@del /f/q "simple\StructWithObjref.java"
	-@del /f/q "simple\StructWithObjrefHelper.java"
	-@del /f/q "simple\StructWithObjrefHolder.java"
	-@del /f/q "simple\TestArrayTypedef2Helper.java"
	-@del /f/q "simple\TestArrayTypedefHelper.java"
	-@del /f/q "simple\TestArrayTypedefHolder.java"
	-@del /f/q "simple\TestConstBool.java"
	-@del /f/q "simple\TestConstDouble.java"
	-@del /f/q "simple\TestConstFloat.java"
	-@del /f/q "simple\TestConstLong.java"
	-@del /f/q "simple\TestConstString.java"
	-@del /f/q "simple\TestConstTypedef.java"
	-@del /f/q "simple\TestEnum.java"
	-@del /f/q "simple\TestEnumHelper.java"
	-@del /f/q "simple\TestEnumHolder.java"
	-@del /f/q "simple\TestInterf.java"
	-@del /f/q "simple\TestInterf2.java"
	-@del /f/q "simple\TestInterf2Helper.java"
	-@del /f/q "simple\TestInterf2Holder.java"
	-@del /f/q "simple\TestInterf2Operations.java"
	-@del /f/q "simple\TestInterf3.java"
	-@del /f/q "simple\TestInterf3Helper.java"
	-@del /f/q "simple\TestInterf3Holder.java"
	-@del /f/q "simple\TestInterf3Operations.java"
	-@del /f/q "simple\TestInterfHelper.java"
	-@del /f/q "simple\TestInterfHolder.java"
	-@del /f/q "simple\TestInterfOperations.java"
	-@del /f/q "simple\TestLI.java"
	-@del /f/q "simple\TestLIHelper.java"
	-@del /f/q "simple\TestLIHolder.java"
	-@del /f/q "simple\TestLIOperations.java"
	-@del /f/q "simple\TestNestedStruct.java"
	-@del /f/q "simple\TestNestedStructHelper.java"
	-@del /f/q "simple\TestNestedStructHolder.java"
	-@del /f/q "simple\TestSeqTypedefHelper.java"
	-@del /f/q "simple\TestSeqTypedefHolder.java"
	-@del /f/q "simple\TestStringArrayHelper.java"
	-@del /f/q "simple\TestStringArrayHolder.java"
	-@del /f/q "simple\TestStruct.java"
	-@del /f/q "simple\TestStructArrayHelper.java"
	-@del /f/q "simple\TestStructArrayHolder.java"
	-@del /f/q "simple\TestStructHelper.java"
	-@del /f/q "simple\TestStructHolder.java"
	-@del /f/q "simple\TestStructSequenceHelper.java"
	-@del /f/q "simple\TestStructSequenceHolder.java"
	-@del /f/q "simple\TestStructWithEnum.java"
	-@del /f/q "simple\TestStructWithEnumHelper.java"
	-@del /f/q "simple\TestStructWithEnumHolder.java"
	-@del /f/q "simple\TestTypedefHelper.java"
	-@del /f/q "simple\TIMESTAMP_INVALID_NSEC.java"
	-@del /f/q "simpleJC.cpp"
	-@del /f/q "simpleJC.h"
	-@del /f/q "simpleJS.h"
	-del /f/s/q classes ./simple.jar & del /f/s/q simple

"$(INTDIR)" :
	if not exist "Release\$(NULL)" mkdir "Release"
	if not exist "Release\simple\$(NULL)" mkdir "Release\simple"
	if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /I "$(IDL2JNI_ROOT)\runtime" /I "$(JAVA_HOME)\include" /I "$(JAVA_HOME)\include\$(JAVA_PLATFORM)" /I "something" /D NDEBUG /D WIN32 /D _WINDOWS  /FD /c
CPP_PCH=/D USING_PCH /Yu"simple_pch.h" /Fp"$(INTDIR)\simple_pch.pch"
CPP_PROJ=$(CPP_COMMON) $(CPP_PCH) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO idl2jni_runtime.lib /libpath:"." /libpath:"$(IDL2JNI_ROOT)\lib" /nologo /version:1.6653 /subsystem:windows /dll  /machine:I386 /out:".\weird$$name.dll" /implib:"$(OUTDIR)\weird$$name.lib"
LINK32_OBJS= \
	"$(INTDIR)\simple_pch.obj" \
	"$(INTDIR)\otherJC.obj" \
	"$(INTDIR)\otherJS.obj" \
	"$(INTDIR)\otherTypeSupportJC.obj" \
	"$(INTDIR)\otherTypeSupportJS.obj" \
	"$(INTDIR)\simpleJC.obj"

".\weird$$name.dll" : $(DEF_FILE) $(LINK32_OBJS)
	$(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
	if exist ".\weird$$name.dll.manifest" mt.exe -manifest ".\weird$$name.dll.manifest" -outputresource:$@;2

__prebuild__:
	@mkdir classes 2> nul || type nul > nul

__postbuild__:
	@"$(JAVA_HOME)/bin/jar" -cf ./simple.jar -C classes .

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=.
INTDIR=Static_Debug\simple\I386

ALL : "$(INTDIR)" "$(OUTDIR)" __prebuild__ DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\weird$$namesd.lib" __postbuild__

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"$(IDL2JNI_ROOT)\runtime" -I"$(JAVA_HOME)\include" -I"$(JAVA_HOME)\include\$(JAVA_PLATFORM)" -I"something" -D_DEBUG -DWIN32 -D_WINDOWS -DUSING_PCH -f "Makefile.simple.dep" "otherJC.cpp" "otherJS.cpp" "otherTypeSupportJC.cpp" "otherTypeSupportJS.cpp" "simpleJC.cpp" "simple_pch.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(OUTDIR)\weird$$namesd.lib"
	-@del /f/q "$(OUTDIR)\weird$$namesd.exp"
	-@del /f/q "$(OUTDIR)\weird$$namesd.ilk"
	-@del /f/q ".\weird$$namesd.pdb"
	-@del /f/q "simple\_Local2LocalBase.class"
	-@del /f/q "simple\_Local2TAOPeer.class"
	-@del /f/q "simple\_Local3LocalBase.class"
	-@del /f/q "simple\_Local3TAOPeer.class"
	-@del /f/q "simple\_TestInterf2Stub.class"
	-@del /f/q "simple\_TestInterf3Stub.class"
	-@del /f/q "simple\_TestInterfStub.class"
	-@del /f/q "simple\_TestLILocalBase.class"
	-@del /f/q "simple\_TestLITAOPeer.class"
	-@del /f/q "simple\ArrayBounds.class"
	-@del /f/q "simple\EnumArrayHelper.class"
	-@del /f/q "simple\EnumArrayHolder.class"
	-@del /f/q "simple\EnumSeqHelper.class"
	-@del /f/q "simple\EnumSeqHolder.class"
	-@del /f/q "simple\Local2.class"
	-@del /f/q "simple\Local2Helper.class"
	-@del /f/q "simple\Local2Holder.class"
	-@del /f/q "simple\Local2Operations.class"
	-@del /f/q "simple\Local2SeqHelper.class"
	-@del /f/q "simple\Local2SeqHolder.class"
	-@del /f/q "simple\Local3.class"
	-@del /f/q "simple\Local3Helper.class"
	-@del /f/q "simple\Local3Holder.class"
	-@del /f/q "simple\Local3Operations.class"
	-@del /f/q "simple\LongSeqSeqHelper.class"
	-@del /f/q "simple\LongSeqSeqHolder.class"
	-@del /f/q "simple\LongSeqSeqSeqHelper.class"
	-@del /f/q "simple\LongSeqSeqSeqHolder.class"
	-@del /f/q "simple\SeqOfTypedefedLongHelper.class"
	-@del /f/q "simple\SeqOfTypedefedLongHolder.class"
	-@del /f/q "simple\StringSeqHelper.class"
	-@del /f/q "simple\StringSeqHolder.class"
	-@del /f/q "simple\StringSeqSeqHelper.class"
	-@del /f/q "simple\StringSeqSeqHolder.class"
	-@del /f/q "simple\StringSeqSeqSeqHelper.class"
	-@del /f/q "simple\StringSeqSeqSeqHolder.class"
	-@del /f/q "simple\StructWithObjref.class"
	-@del /f/q "simple\StructWithObjrefHelper.class"
	-@del /f/q "simple\StructWithObjrefHolder.class"
	-@del /f/q "simple\TestArrayTypedef2Helper.class"
	-@del /f/q "simple\TestArrayTypedefHelper.class"
	-@del /f/q "simple\TestArrayTypedefHolder.class"
	-@del /f/q "simple\TestConstBool.class"
	-@del /f/q "simple\TestConstDouble.class"
	-@del /f/q "simple\TestConstFloat.class"
	-@del /f/q "simple\TestConstLong.class"
	-@del /f/q "simple\TestConstString.class"
	-@del /f/q "simple\TestConstTypedef.class"
	-@del /f/q "simple\TestEnum.class"
	-@del /f/q "simple\TestEnumHelper.class"
	-@del /f/q "simple\TestEnumHolder.class"
	-@del /f/q "simple\TestInterf.class"
	-@del /f/q "simple\TestInterf2.class"
	-@del /f/q "simple\TestInterf2Helper.class"
	-@del /f/q "simple\TestInterf2Holder.class"
	-@del /f/q "simple\TestInterf2Operations.class"
	-@del /f/q "simple\TestInterf3.class"
	-@del /f/q "simple\TestInterf3Helper.class"
	-@del /f/q "simple\TestInterf3Holder.class"
	-@del /f/q "simple\TestInterf3Operations.class"
	-@del /f/q "simple\TestInterfHelper.class"
	-@del /f/q "simple\TestInterfHolder.class"
	-@del /f/q "simple\TestInterfOperations.class"
	-@del /f/q "simple\TestLI.class"
	-@del /f/q "simple\TestLIHelper.class"
	-@del /f/q "simple\TestLIHolder.class"
	-@del /f/q "simple\TestLIOperations.class"
	-@del /f/q "simple\TestNestedStruct.class"
	-@del /f/q "simple\TestNestedStructHelper.class"
	-@del /f/q "simple\TestNestedStructHolder.class"
	-@del /f/q "simple\TestSeqTypedefHelper.class"
	-@del /f/q "simple\TestSeqTypedefHolder.class"
	-@del /f/q "simple\TestStringArrayHelper.class"
	-@del /f/q "simple\TestStringArrayHolder.class"
	-@del /f/q "simple\TestStruct.class"
	-@del /f/q "simple\TestStructArrayHelper.class"
	-@del /f/q "simple\TestStructArrayHolder.class"
	-@del /f/q "simple\TestStructHelper.class"
	-@del /f/q "simple\TestStructHolder.class"
	-@del /f/q "simple\TestStructSequenceHelper.class"
	-@del /f/q "simple\TestStructSequenceHolder.class"
	-@del /f/q "simple\TestStructWithEnum.class"
	-@del /f/q "simple\TestStructWithEnumHelper.class"
	-@del /f/q "simple\TestStructWithEnumHolder.class"
	-@del /f/q "simple\TestTypedefHelper.class"
	-@del /f/q "simple\TIMESTAMP_INVALID_NSEC.class"
	-@del /f/q "SomeSortOfTypedefHelper.class"
	-@del /f/q "otherJC.cpp"
	-@del /f/q "otherJC.h"
	-@del /f/q "otherJS.cpp"
	-@del /f/q "otherJS.h"
	-@del /f/q "SomeSortOfTypedefHelper.java"
	-@del /f/q "otherTypeSupportJC.cpp"
	-@del /f/q "otherTypeSupportJC.h"
	-@del /f/q "otherTypeSupportJS.cpp"
	-@del /f/q "otherTypeSupportJS.h"
	-@del /f/q "simple\_Local2LocalBase.java"
	-@del /f/q "simple\_Local2TAOPeer.java"
	-@del /f/q "simple\_Local3LocalBase.java"
	-@del /f/q "simple\_Local3TAOPeer.java"
	-@del /f/q "simple\_TestInterf2Stub.java"
	-@del /f/q "simple\_TestInterf3Stub.java"
	-@del /f/q "simple\_TestInterfStub.java"
	-@del /f/q "simple\_TestLILocalBase.java"
	-@del /f/q "simple\_TestLITAOPeer.java"
	-@del /f/q "simple\ArrayBounds.java"
	-@del /f/q "simple\EnumArrayHelper.java"
	-@del /f/q "simple\EnumArrayHolder.java"
	-@del /f/q "simple\EnumSeqHelper.java"
	-@del /f/q "simple\EnumSeqHolder.java"
	-@del /f/q "simple\Local2.java"
	-@del /f/q "simple\Local2Helper.java"
	-@del /f/q "simple\Local2Holder.java"
	-@del /f/q "simple\Local2Operations.java"
	-@del /f/q "simple\Local2SeqHelper.java"
	-@del /f/q "simple\Local2SeqHolder.java"
	-@del /f/q "simple\Local3.java"
	-@del /f/q "simple\Local3Helper.java"
	-@del /f/q "simple\Local3Holder.java"
	-@del /f/q "simple\Local3Operations.java"
	-@del /f/q "simple\LongSeqSeqHelper.java"
	-@del /f/q "simple\LongSeqSeqHolder.java"
	-@del /f/q "simple\LongSeqSeqSeqHelper.java"
	-@del /f/q "simple\LongSeqSeqSeqHolder.java"
	-@del /f/q "simple\SeqOfTypedefedLongHelper.java"
	-@del /f/q "simple\SeqOfTypedefedLongHolder.java"
	-@del /f/q "simple\StringSeqHelper.java"
	-@del /f/q "simple\StringSeqHolder.java"
	-@del /f/q "simple\StringSeqSeqHelper.java"
	-@del /f/q "simple\StringSeqSeqHolder.java"
	-@del /f/q "simple\StringSeqSeqSeqHelper.java"
	-@del /f/q "simple\StringSeqSeqSeqHolder.java"
	-@del /f/q "simple\StructWithObjref.java"
	-@del /f/q "simple\StructWithObjrefHelper.java"
	-@del /f/q "simple\StructWithObjrefHolder.java"
	-@del /f/q "simple\TestArrayTypedef2Helper.java"
	-@del /f/q "simple\TestArrayTypedefHelper.java"
	-@del /f/q "simple\TestArrayTypedefHolder.java"
	-@del /f/q "simple\TestConstBool.java"
	-@del /f/q "simple\TestConstDouble.java"
	-@del /f/q "simple\TestConstFloat.java"
	-@del /f/q "simple\TestConstLong.java"
	-@del /f/q "simple\TestConstString.java"
	-@del /f/q "simple\TestConstTypedef.java"
	-@del /f/q "simple\TestEnum.java"
	-@del /f/q "simple\TestEnumHelper.java"
	-@del /f/q "simple\TestEnumHolder.java"
	-@del /f/q "simple\TestInterf.java"
	-@del /f/q "simple\TestInterf2.java"
	-@del /f/q "simple\TestInterf2Helper.java"
	-@del /f/q "simple\TestInterf2Holder.java"
	-@del /f/q "simple\TestInterf2Operations.java"
	-@del /f/q "simple\TestInterf3.java"
	-@del /f/q "simple\TestInterf3Helper.java"
	-@del /f/q "simple\TestInterf3Holder.java"
	-@del /f/q "simple\TestInterf3Operations.java"
	-@del /f/q "simple\TestInterfHelper.java"
	-@del /f/q "simple\TestInterfHolder.java"
	-@del /f/q "simple\TestInterfOperations.java"
	-@del /f/q "simple\TestLI.java"
	-@del /f/q "simple\TestLIHelper.java"
	-@del /f/q "simple\TestLIHolder.java"
	-@del /f/q "simple\TestLIOperations.java"
	-@del /f/q "simple\TestNestedStruct.java"
	-@del /f/q "simple\TestNestedStructHelper.java"
	-@del /f/q "simple\TestNestedStructHolder.java"
	-@del /f/q "simple\TestSeqTypedefHelper.java"
	-@del /f/q "simple\TestSeqTypedefHolder.java"
	-@del /f/q "simple\TestStringArrayHelper.java"
	-@del /f/q "simple\TestStringArrayHolder.java"
	-@del /f/q "simple\TestStruct.java"
	-@del /f/q "simple\TestStructArrayHelper.java"
	-@del /f/q "simple\TestStructArrayHolder.java"
	-@del /f/q "simple\TestStructHelper.java"
	-@del /f/q "simple\TestStructHolder.java"
	-@del /f/q "simple\TestStructSequenceHelper.java"
	-@del /f/q "simple\TestStructSequenceHolder.java"
	-@del /f/q "simple\TestStructWithEnum.java"
	-@del /f/q "simple\TestStructWithEnumHelper.java"
	-@del /f/q "simple\TestStructWithEnumHolder.java"
	-@del /f/q "simple\TestTypedefHelper.java"
	-@del /f/q "simple\TIMESTAMP_INVALID_NSEC.java"
	-@del /f/q "simpleJC.cpp"
	-@del /f/q "simpleJC.h"
	-@del /f/q "simpleJS.h"
	-del /f/s/q classes ./simple.jar & del /f/s/q simple

"$(INTDIR)" :
	if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
	if not exist "Static_Debug\simple\$(NULL)" mkdir "Static_Debug\simple"
	if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /GR /Gy /MDd /Fd".\weird$$namesd.pdb" /I "$(IDL2JNI_ROOT)\runtime" /I "$(JAVA_HOME)\include" /I "$(JAVA_HOME)\include\$(JAVA_PLATFORM)" /I "something" /D _DEBUG /D WIN32 /D _WINDOWS  /FD /c
CPP_PCH=/D USING_PCH /Yu"simple_pch.h" /Fp"$(INTDIR)\simple_pch.pch"
CPP_PROJ=$(CPP_COMMON) $(CPP_PCH) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\weird$$namesd.lib"
LINK32_OBJS= \
	"$(INTDIR)\simple_pch.obj" \
	"$(INTDIR)\otherJC.obj" \
	"$(INTDIR)\otherJS.obj" \
	"$(INTDIR)\otherTypeSupportJC.obj" \
	"$(INTDIR)\otherTypeSupportJS.obj" \
	"$(INTDIR)\simpleJC.obj"

"$(OUTDIR)\weird$$namesd.lib" : $(DEF_FILE) $(LINK32_OBJS)
	$(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
	if exist "$(OUTDIR)\weird$$namesd.lib.manifest" mt.exe -manifest "$(OUTDIR)\weird$$namesd.lib.manifest" -outputresource:$@;2

__prebuild__:
	@mkdir classes 2> nul || type nul > nul

__postbuild__:
	@"$(JAVA_HOME)/bin/jar" -cf ./simple.jar -C classes .

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=.
INTDIR=Static_Release\simple\I386

ALL : "$(INTDIR)" "$(OUTDIR)" __prebuild__ DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\weird$$names.lib" __postbuild__

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"$(IDL2JNI_ROOT)\runtime" -I"$(JAVA_HOME)\include" -I"$(JAVA_HOME)\include\$(JAVA_PLATFORM)" -I"something" -DNDEBUG -DWIN32 -D_WINDOWS -DUSING_PCH -f "Makefile.simple.dep" "otherJC.cpp" "otherJS.cpp" "otherTypeSupportJC.cpp" "otherTypeSupportJS.cpp" "simpleJC.cpp" "simple_pch.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(OUTDIR)\weird$$names.lib"
	-@del /f/q "$(OUTDIR)\weird$$names.exp"
	-@del /f/q "$(OUTDIR)\weird$$names.ilk"
	-@del /f/q "simple\_Local2LocalBase.class"
	-@del /f/q "simple\_Local2TAOPeer.class"
	-@del /f/q "simple\_Local3LocalBase.class"
	-@del /f/q "simple\_Local3TAOPeer.class"
	-@del /f/q "simple\_TestInterf2Stub.class"
	-@del /f/q "simple\_TestInterf3Stub.class"
	-@del /f/q "simple\_TestInterfStub.class"
	-@del /f/q "simple\_TestLILocalBase.class"
	-@del /f/q "simple\_TestLITAOPeer.class"
	-@del /f/q "simple\ArrayBounds.class"
	-@del /f/q "simple\EnumArrayHelper.class"
	-@del /f/q "simple\EnumArrayHolder.class"
	-@del /f/q "simple\EnumSeqHelper.class"
	-@del /f/q "simple\EnumSeqHolder.class"
	-@del /f/q "simple\Local2.class"
	-@del /f/q "simple\Local2Helper.class"
	-@del /f/q "simple\Local2Holder.class"
	-@del /f/q "simple\Local2Operations.class"
	-@del /f/q "simple\Local2SeqHelper.class"
	-@del /f/q "simple\Local2SeqHolder.class"
	-@del /f/q "simple\Local3.class"
	-@del /f/q "simple\Local3Helper.class"
	-@del /f/q "simple\Local3Holder.class"
	-@del /f/q "simple\Local3Operations.class"
	-@del /f/q "simple\LongSeqSeqHelper.class"
	-@del /f/q "simple\LongSeqSeqHolder.class"
	-@del /f/q "simple\LongSeqSeqSeqHelper.class"
	-@del /f/q "simple\LongSeqSeqSeqHolder.class"
	-@del /f/q "simple\SeqOfTypedefedLongHelper.class"
	-@del /f/q "simple\SeqOfTypedefedLongHolder.class"
	-@del /f/q "simple\StringSeqHelper.class"
	-@del /f/q "simple\StringSeqHolder.class"
	-@del /f/q "simple\StringSeqSeqHelper.class"
	-@del /f/q "simple\StringSeqSeqHolder.class"
	-@del /f/q "simple\StringSeqSeqSeqHelper.class"
	-@del /f/q "simple\StringSeqSeqSeqHolder.class"
	-@del /f/q "simple\StructWithObjref.class"
	-@del /f/q "simple\StructWithObjrefHelper.class"
	-@del /f/q "simple\StructWithObjrefHolder.class"
	-@del /f/q "simple\TestArrayTypedef2Helper.class"
	-@del /f/q "simple\TestArrayTypedefHelper.class"
	-@del /f/q "simple\TestArrayTypedefHolder.class"
	-@del /f/q "simple\TestConstBool.class"
	-@del /f/q "simple\TestConstDouble.class"
	-@del /f/q "simple\TestConstFloat.class"
	-@del /f/q "simple\TestConstLong.class"
	-@del /f/q "simple\TestConstString.class"
	-@del /f/q "simple\TestConstTypedef.class"
	-@del /f/q "simple\TestEnum.class"
	-@del /f/q "simple\TestEnumHelper.class"
	-@del /f/q "simple\TestEnumHolder.class"
	-@del /f/q "simple\TestInterf.class"
	-@del /f/q "simple\TestInterf2.class"
	-@del /f/q "simple\TestInterf2Helper.class"
	-@del /f/q "simple\TestInterf2Holder.class"
	-@del /f/q "simple\TestInterf2Operations.class"
	-@del /f/q "simple\TestInterf3.class"
	-@del /f/q "simple\TestInterf3Helper.class"
	-@del /f/q "simple\TestInterf3Holder.class"
	-@del /f/q "simple\TestInterf3Operations.class"
	-@del /f/q "simple\TestInterfHelper.class"
	-@del /f/q "simple\TestInterfHolder.class"
	-@del /f/q "simple\TestInterfOperations.class"
	-@del /f/q "simple\TestLI.class"
	-@del /f/q "simple\TestLIHelper.class"
	-@del /f/q "simple\TestLIHolder.class"
	-@del /f/q "simple\TestLIOperations.class"
	-@del /f/q "simple\TestNestedStruct.class"
	-@del /f/q "simple\TestNestedStructHelper.class"
	-@del /f/q "simple\TestNestedStructHolder.class"
	-@del /f/q "simple\TestSeqTypedefHelper.class"
	-@del /f/q "simple\TestSeqTypedefHolder.class"
	-@del /f/q "simple\TestStringArrayHelper.class"
	-@del /f/q "simple\TestStringArrayHolder.class"
	-@del /f/q "simple\TestStruct.class"
	-@del /f/q "simple\TestStructArrayHelper.class"
	-@del /f/q "simple\TestStructArrayHolder.class"
	-@del /f/q "simple\TestStructHelper.class"
	-@del /f/q "simple\TestStructHolder.class"
	-@del /f/q "simple\TestStructSequenceHelper.class"
	-@del /f/q "simple\TestStructSequenceHolder.class"
	-@del /f/q "simple\TestStructWithEnum.class"
	-@del /f/q "simple\TestStructWithEnumHelper.class"
	-@del /f/q "simple\TestStructWithEnumHolder.class"
	-@del /f/q "simple\TestTypedefHelper.class"
	-@del /f/q "simple\TIMESTAMP_INVALID_NSEC.class"
	-@del /f/q "SomeSortOfTypedefHelper.class"
	-@del /f/q "otherJC.cpp"
	-@del /f/q "otherJC.h"
	-@del /f/q "otherJS.cpp"
	-@del /f/q "otherJS.h"
	-@del /f/q "SomeSortOfTypedefHelper.java"
	-@del /f/q "otherTypeSupportJC.cpp"
	-@del /f/q "otherTypeSupportJC.h"
	-@del /f/q "otherTypeSupportJS.cpp"
	-@del /f/q "otherTypeSupportJS.h"
	-@del /f/q "simple\_Local2LocalBase.java"
	-@del /f/q "simple\_Local2TAOPeer.java"
	-@del /f/q "simple\_Local3LocalBase.java"
	-@del /f/q "simple\_Local3TAOPeer.java"
	-@del /f/q "simple\_TestInterf2Stub.java"
	-@del /f/q "simple\_TestInterf3Stub.java"
	-@del /f/q "simple\_TestInterfStub.java"
	-@del /f/q "simple\_TestLILocalBase.java"
	-@del /f/q "simple\_TestLITAOPeer.java"
	-@del /f/q "simple\ArrayBounds.java"
	-@del /f/q "simple\EnumArrayHelper.java"
	-@del /f/q "simple\EnumArrayHolder.java"
	-@del /f/q "simple\EnumSeqHelper.java"
	-@del /f/q "simple\EnumSeqHolder.java"
	-@del /f/q "simple\Local2.java"
	-@del /f/q "simple\Local2Helper.java"
	-@del /f/q "simple\Local2Holder.java"
	-@del /f/q "simple\Local2Operations.java"
	-@del /f/q "simple\Local2SeqHelper.java"
	-@del /f/q "simple\Local2SeqHolder.java"
	-@del /f/q "simple\Local3.java"
	-@del /f/q "simple\Local3Helper.java"
	-@del /f/q "simple\Local3Holder.java"
	-@del /f/q "simple\Local3Operations.java"
	-@del /f/q "simple\LongSeqSeqHelper.java"
	-@del /f/q "simple\LongSeqSeqHolder.java"
	-@del /f/q "simple\LongSeqSeqSeqHelper.java"
	-@del /f/q "simple\LongSeqSeqSeqHolder.java"
	-@del /f/q "simple\SeqOfTypedefedLongHelper.java"
	-@del /f/q "simple\SeqOfTypedefedLongHolder.java"
	-@del /f/q "simple\StringSeqHelper.java"
	-@del /f/q "simple\StringSeqHolder.java"
	-@del /f/q "simple\StringSeqSeqHelper.java"
	-@del /f/q "simple\StringSeqSeqHolder.java"
	-@del /f/q "simple\StringSeqSeqSeqHelper.java"
	-@del /f/q "simple\StringSeqSeqSeqHolder.java"
	-@del /f/q "simple\StructWithObjref.java"
	-@del /f/q "simple\StructWithObjrefHelper.java"
	-@del /f/q "simple\StructWithObjrefHolder.java"
	-@del /f/q "simple\TestArrayTypedef2Helper.java"
	-@del /f/q "simple\TestArrayTypedefHelper.java"
	-@del /f/q "simple\TestArrayTypedefHolder.java"
	-@del /f/q "simple\TestConstBool.java"
	-@del /f/q "simple\TestConstDouble.java"
	-@del /f/q "simple\TestConstFloat.java"
	-@del /f/q "simple\TestConstLong.java"
	-@del /f/q "simple\TestConstString.java"
	-@del /f/q "simple\TestConstTypedef.java"
	-@del /f/q "simple\TestEnum.java"
	-@del /f/q "simple\TestEnumHelper.java"
	-@del /f/q "simple\TestEnumHolder.java"
	-@del /f/q "simple\TestInterf.java"
	-@del /f/q "simple\TestInterf2.java"
	-@del /f/q "simple\TestInterf2Helper.java"
	-@del /f/q "simple\TestInterf2Holder.java"
	-@del /f/q "simple\TestInterf2Operations.java"
	-@del /f/q "simple\TestInterf3.java"
	-@del /f/q "simple\TestInterf3Helper.java"
	-@del /f/q "simple\TestInterf3Holder.java"
	-@del /f/q "simple\TestInterf3Operations.java"
	-@del /f/q "simple\TestInterfHelper.java"
	-@del /f/q "simple\TestInterfHolder.java"
	-@del /f/q "simple\TestInterfOperations.java"
	-@del /f/q "simple\TestLI.java"
	-@del /f/q "simple\TestLIHelper.java"
	-@del /f/q "simple\TestLIHolder.java"
	-@del /f/q "simple\TestLIOperations.java"
	-@del /f/q "simple\TestNestedStruct.java"
	-@del /f/q "simple\TestNestedStructHelper.java"
	-@del /f/q "simple\TestNestedStructHolder.java"
	-@del /f/q "simple\TestSeqTypedefHelper.java"
	-@del /f/q "simple\TestSeqTypedefHolder.java"
	-@del /f/q "simple\TestStringArrayHelper.java"
	-@del /f/q "simple\TestStringArrayHolder.java"
	-@del /f/q "simple\TestStruct.java"
	-@del /f/q "simple\TestStructArrayHelper.java"
	-@del /f/q "simple\TestStructArrayHolder.java"
	-@del /f/q "simple\TestStructHelper.java"
	-@del /f/q "simple\TestStructHolder.java"
	-@del /f/q "simple\TestStructSequenceHelper.java"
	-@del /f/q "simple\TestStructSequenceHolder.java"
	-@del /f/q "simple\TestStructWithEnum.java"
	-@del /f/q "simple\TestStructWithEnumHelper.java"
	-@del /f/q "simple\TestStructWithEnumHolder.java"
	-@del /f/q "simple\TestTypedefHelper.java"
	-@del /f/q "simple\TIMESTAMP_INVALID_NSEC.java"
	-@del /f/q "simpleJC.cpp"
	-@del /f/q "simpleJC.h"
	-@del /f/q "simpleJS.h"
	-del /f/s/q classes ./simple.jar & del /f/s/q simple

"$(INTDIR)" :
	if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
	if not exist "Static_Release\simple\$(NULL)" mkdir "Static_Release\simple"
	if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /I "$(IDL2JNI_ROOT)\runtime" /I "$(JAVA_HOME)\include" /I "$(JAVA_HOME)\include\$(JAVA_PLATFORM)" /I "something" /D NDEBUG /D WIN32 /D _WINDOWS  /FD /c
CPP_PCH=/D USING_PCH /Yu"simple_pch.h" /Fp"$(INTDIR)\simple_pch.pch"
CPP_PROJ=$(CPP_COMMON) $(CPP_PCH) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\weird$$names.lib"
LINK32_OBJS= \
	"$(INTDIR)\simple_pch.obj" \
	"$(INTDIR)\otherJC.obj" \
	"$(INTDIR)\otherJS.obj" \
	"$(INTDIR)\otherTypeSupportJC.obj" \
	"$(INTDIR)\otherTypeSupportJS.obj" \
	"$(INTDIR)\simpleJC.obj"

"$(OUTDIR)\weird$$names.lib" : $(DEF_FILE) $(LINK32_OBJS)
	$(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
	if exist "$(OUTDIR)\weird$$names.lib.manifest" mt.exe -manifest "$(OUTDIR)\weird$$names.lib.manifest" -outputresource:$@;2

__prebuild__:
	@mkdir classes 2> nul || type nul > nul

__postbuild__:
	@"$(JAVA_HOME)/bin/jar" -cf ./simple.jar -C classes .

!ENDIF

CLEAN :
	-@del /f/s/q "$(INTDIR)"

"$(OUTDIR)" :
	if not exist "$(OUTDIR)\$(NULL)" mkdir "$(OUTDIR)"

.c{$(INTDIR)}.obj::
	$(CPP) @<<
   $(CPP_PROJ) $<
<<

.cpp{$(INTDIR)}.obj::
	$(CPP) @<<
   $(CPP_PROJ) $<
<<

.cxx{$(INTDIR)}.obj::
	$(CPP) @<<
   $(CPP_PROJ) $<
<<

.c{$(INTDIR)}.sbr::
	$(CPP) @<<
   $(CPP_PROJ) $<
<<

.cpp{$(INTDIR)}.sbr::
	$(CPP) @<<
   $(CPP_PROJ) $<
<<

.cxx{$(INTDIR)}.sbr::
	$(CPP) @<<
   $(CPP_PROJ) $<
<<

!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.simple.dep")
!INCLUDE "Makefile.simple.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" 
SOURCE="simple_pch.cpp"

!IF  "$(CFG)" == "Win32 Debug"

CPP_SWITCHES=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /I "$(IDL2JNI_ROOT)\runtime" /I "$(JAVA_HOME)\include" /I "$(JAVA_HOME)\include\$(JAVA_PLATFORM)" /I "something" /D _DEBUG /D WIN32 /D _WINDOWS /D USING_PCH /Fp"$(INTDIR)\simple_pch.pch" /Yc"simple_pch.h" /FD /c

"$(INTDIR)\simple_pch.obj" "$(INTDIR)\simple_pch.pch" : $(SOURCE)
	$(CPP) @<<
  $(CPP_SWITCHES) /Fo"$(INTDIR)\simple_pch.obj" $(SOURCE)
<<

!ELSEIF  "$(CFG)" == "Win32 Release"

CPP_SWITCHES=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /I "$(IDL2JNI_ROOT)\runtime" /I "$(JAVA_HOME)\include" /I "$(JAVA_HOME)\include\$(JAVA_PLATFORM)" /I "something" /D NDEBUG /D WIN32 /D _WINDOWS /D USING_PCH /Fp"$(INTDIR)\simple_pch.pch" /Yc"simple_pch.h" /FD /c

"$(INTDIR)\simple_pch.obj" "$(INTDIR)\simple_pch.pch" : $(SOURCE)
	$(CPP) @<<
  $(CPP_SWITCHES) /Fo"$(INTDIR)\simple_pch.obj" $(SOURCE)
<<

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

CPP_SWITCHES=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /GR /Gy /MDd /Fd".\weird$$namesd.pdb" /I "$(IDL2JNI_ROOT)\runtime" /I "$(JAVA_HOME)\include" /I "$(JAVA_HOME)\include\$(JAVA_PLATFORM)" /I "something" /D _DEBUG /D WIN32 /D _WINDOWS /D USING_PCH /Fp"$(INTDIR)\simple_pch.pch" /Yc"simple_pch.h" /FD /c

"$(INTDIR)\simple_pch.obj" "$(INTDIR)\simple_pch.pch" : $(SOURCE)
	$(CPP) @<<
  $(CPP_SWITCHES) /Fo"$(INTDIR)\simple_pch.obj" $(SOURCE)
<<

!ELSEIF  "$(CFG)" == "Win32 Static Release"

CPP_SWITCHES=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /I "$(IDL2JNI_ROOT)\runtime" /I "$(JAVA_HOME)\include" /I "$(JAVA_HOME)\include\$(JAVA_PLATFORM)" /I "something" /D NDEBUG /D WIN32 /D _WINDOWS /D USING_PCH /Fp"$(INTDIR)\simple_pch.pch" /Yc"simple_pch.h" /FD /c

"$(INTDIR)\simple_pch.obj" "$(INTDIR)\simple_pch.pch" : $(SOURCE)
	$(CPP) @<<
  $(CPP_SWITCHES) /Fo"$(INTDIR)\simple_pch.obj" $(SOURCE)
<<

!ENDIF

SOURCE="otherJC.cpp"

"$(INTDIR)\otherJC.obj" : $(SOURCE)
	$(CPP) $(CPP_PCH) $(CPP_COMMON) /Fo"$(INTDIR)\otherJC.obj" $(SOURCE)

SOURCE="otherJS.cpp"

"$(INTDIR)\otherJS.obj" : $(SOURCE)
	$(CPP) $(CPP_PCH) $(CPP_COMMON) /Fo"$(INTDIR)\otherJS.obj" $(SOURCE)

SOURCE="otherTypeSupportJC.cpp"

"$(INTDIR)\otherTypeSupportJC.obj" : $(SOURCE)
	$(CPP) $(CPP_PCH) $(CPP_COMMON) /Fo"$(INTDIR)\otherTypeSupportJC.obj" $(SOURCE)

SOURCE="otherTypeSupportJS.cpp"

"$(INTDIR)\otherTypeSupportJS.obj" : $(SOURCE)
	$(CPP) $(CPP_PCH) $(CPP_COMMON) /Fo"$(INTDIR)\otherTypeSupportJS.obj" $(SOURCE)

SOURCE="simpleJC.cpp"

"$(INTDIR)\simpleJC.obj" : $(SOURCE)
	$(CPP) $(CPP_PCH) $(CPP_COMMON) /Fo"$(INTDIR)\simpleJC.obj" $(SOURCE)

!IF  "$(CFG)" == "Win32 Debug"
SOURCE="simple\_Local2LocalBase.java"

InputPath=simple\_Local2LocalBase.java

"simple\_Local2LocalBase.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple__Local2LocalBase_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_Local2LocalBase.class classes\simple > nul
<<

SOURCE="simple\_Local2TAOPeer.java"

InputPath=simple\_Local2TAOPeer.java

"simple\_Local2TAOPeer.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple__Local2TAOPeer_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_Local2TAOPeer.class classes\simple > nul
<<

SOURCE="simple\_Local3LocalBase.java"

InputPath=simple\_Local3LocalBase.java

"simple\_Local3LocalBase.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple__Local3LocalBase_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_Local3LocalBase.class classes\simple > nul
<<

SOURCE="simple\_Local3TAOPeer.java"

InputPath=simple\_Local3TAOPeer.java

"simple\_Local3TAOPeer.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple__Local3TAOPeer_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_Local3TAOPeer.class classes\simple > nul
<<

SOURCE="simple\_TestInterf2Stub.java"

InputPath=simple\_TestInterf2Stub.java

"simple\_TestInterf2Stub.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple__TestInterf2Stub_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_TestInterf2Stub.class classes\simple > nul
<<

SOURCE="simple\_TestInterf3Stub.java"

InputPath=simple\_TestInterf3Stub.java

"simple\_TestInterf3Stub.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple__TestInterf3Stub_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_TestInterf3Stub.class classes\simple > nul
<<

SOURCE="simple\_TestInterfStub.java"

InputPath=simple\_TestInterfStub.java

"simple\_TestInterfStub.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple__TestInterfStub_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_TestInterfStub.class classes\simple > nul
<<

SOURCE="simple\_TestLILocalBase.java"

InputPath=simple\_TestLILocalBase.java

"simple\_TestLILocalBase.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple__TestLILocalBase_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_TestLILocalBase.class classes\simple > nul
<<

SOURCE="simple\_TestLITAOPeer.java"

InputPath=simple\_TestLITAOPeer.java

"simple\_TestLITAOPeer.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple__TestLITAOPeer_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_TestLITAOPeer.class classes\simple > nul
<<

SOURCE="simple\ArrayBounds.java"

InputPath=simple\ArrayBounds.java

"simple\ArrayBounds.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_ArrayBounds_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\ArrayBounds.class classes\simple > nul
<<

SOURCE="simple\EnumArrayHelper.java"

InputPath=simple\EnumArrayHelper.java

"simple\EnumArrayHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_EnumArrayHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\EnumArrayHelper.class classes\simple > nul
<<

SOURCE="simple\EnumArrayHolder.java"

InputPath=simple\EnumArrayHolder.java

"simple\EnumArrayHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_EnumArrayHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\EnumArrayHolder.class classes\simple > nul
<<

SOURCE="simple\EnumSeqHelper.java"

InputPath=simple\EnumSeqHelper.java

"simple\EnumSeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_EnumSeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\EnumSeqHelper.class classes\simple > nul
<<

SOURCE="simple\EnumSeqHolder.java"

InputPath=simple\EnumSeqHolder.java

"simple\EnumSeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_EnumSeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\EnumSeqHolder.class classes\simple > nul
<<

SOURCE="simple\Local2.java"

InputPath=simple\Local2.java

"simple\Local2.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_Local2_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local2.class classes\simple > nul
<<

SOURCE="simple\Local2Helper.java"

InputPath=simple\Local2Helper.java

"simple\Local2Helper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_Local2Helper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local2Helper.class classes\simple > nul
<<

SOURCE="simple\Local2Holder.java"

InputPath=simple\Local2Holder.java

"simple\Local2Holder.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_Local2Holder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local2Holder.class classes\simple > nul
<<

SOURCE="simple\Local2Operations.java"

InputPath=simple\Local2Operations.java

"simple\Local2Operations.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_Local2Operations_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local2Operations.class classes\simple > nul
<<

SOURCE="simple\Local2SeqHelper.java"

InputPath=simple\Local2SeqHelper.java

"simple\Local2SeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_Local2SeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local2SeqHelper.class classes\simple > nul
<<

SOURCE="simple\Local2SeqHolder.java"

InputPath=simple\Local2SeqHolder.java

"simple\Local2SeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_Local2SeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local2SeqHolder.class classes\simple > nul
<<

SOURCE="simple\Local3.java"

InputPath=simple\Local3.java

"simple\Local3.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_Local3_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local3.class classes\simple > nul
<<

SOURCE="simple\Local3Helper.java"

InputPath=simple\Local3Helper.java

"simple\Local3Helper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_Local3Helper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local3Helper.class classes\simple > nul
<<

SOURCE="simple\Local3Holder.java"

InputPath=simple\Local3Holder.java

"simple\Local3Holder.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_Local3Holder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local3Holder.class classes\simple > nul
<<

SOURCE="simple\Local3Operations.java"

InputPath=simple\Local3Operations.java

"simple\Local3Operations.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_Local3Operations_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local3Operations.class classes\simple > nul
<<

SOURCE="simple\LongSeqSeqHelper.java"

InputPath=simple\LongSeqSeqHelper.java

"simple\LongSeqSeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_LongSeqSeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\LongSeqSeqHelper.class classes\simple > nul
<<

SOURCE="simple\LongSeqSeqHolder.java"

InputPath=simple\LongSeqSeqHolder.java

"simple\LongSeqSeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_LongSeqSeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\LongSeqSeqHolder.class classes\simple > nul
<<

SOURCE="simple\LongSeqSeqSeqHelper.java"

InputPath=simple\LongSeqSeqSeqHelper.java

"simple\LongSeqSeqSeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_LongSeqSeqSeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\LongSeqSeqSeqHelper.class classes\simple > nul
<<

SOURCE="simple\LongSeqSeqSeqHolder.java"

InputPath=simple\LongSeqSeqSeqHolder.java

"simple\LongSeqSeqSeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_LongSeqSeqSeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\LongSeqSeqSeqHolder.class classes\simple > nul
<<

SOURCE="simple\SeqOfTypedefedLongHelper.java"

InputPath=simple\SeqOfTypedefedLongHelper.java

"simple\SeqOfTypedefedLongHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_SeqOfTypedefedLongHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\SeqOfTypedefedLongHelper.class classes\simple > nul
<<

SOURCE="simple\SeqOfTypedefedLongHolder.java"

InputPath=simple\SeqOfTypedefedLongHolder.java

"simple\SeqOfTypedefedLongHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_SeqOfTypedefedLongHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\SeqOfTypedefedLongHolder.class classes\simple > nul
<<

SOURCE="simple\StringSeqHelper.java"

InputPath=simple\StringSeqHelper.java

"simple\StringSeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_StringSeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StringSeqHelper.class classes\simple > nul
<<

SOURCE="simple\StringSeqHolder.java"

InputPath=simple\StringSeqHolder.java

"simple\StringSeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_StringSeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StringSeqHolder.class classes\simple > nul
<<

SOURCE="simple\StringSeqSeqHelper.java"

InputPath=simple\StringSeqSeqHelper.java

"simple\StringSeqSeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_StringSeqSeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StringSeqSeqHelper.class classes\simple > nul
<<

SOURCE="simple\StringSeqSeqHolder.java"

InputPath=simple\StringSeqSeqHolder.java

"simple\StringSeqSeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_StringSeqSeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StringSeqSeqHolder.class classes\simple > nul
<<

SOURCE="simple\StringSeqSeqSeqHelper.java"

InputPath=simple\StringSeqSeqSeqHelper.java

"simple\StringSeqSeqSeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_StringSeqSeqSeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StringSeqSeqSeqHelper.class classes\simple > nul
<<

SOURCE="simple\StringSeqSeqSeqHolder.java"

InputPath=simple\StringSeqSeqSeqHolder.java

"simple\StringSeqSeqSeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_StringSeqSeqSeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StringSeqSeqSeqHolder.class classes\simple > nul
<<

SOURCE="simple\StructWithObjref.java"

InputPath=simple\StructWithObjref.java

"simple\StructWithObjref.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_StructWithObjref_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StructWithObjref.class classes\simple > nul
<<

SOURCE="simple\StructWithObjrefHelper.java"

InputPath=simple\StructWithObjrefHelper.java

"simple\StructWithObjrefHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_StructWithObjrefHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StructWithObjrefHelper.class classes\simple > nul
<<

SOURCE="simple\StructWithObjrefHolder.java"

InputPath=simple\StructWithObjrefHolder.java

"simple\StructWithObjrefHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_StructWithObjrefHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StructWithObjrefHolder.class classes\simple > nul
<<

SOURCE="simple\TestArrayTypedef2Helper.java"

InputPath=simple\TestArrayTypedef2Helper.java

"simple\TestArrayTypedef2Helper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestArrayTypedef2Helper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestArrayTypedef2Helper.class classes\simple > nul
<<

SOURCE="simple\TestArrayTypedefHelper.java"

InputPath=simple\TestArrayTypedefHelper.java

"simple\TestArrayTypedefHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestArrayTypedefHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestArrayTypedefHelper.class classes\simple > nul
<<

SOURCE="simple\TestArrayTypedefHolder.java"

InputPath=simple\TestArrayTypedefHolder.java

"simple\TestArrayTypedefHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestArrayTypedefHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestArrayTypedefHolder.class classes\simple > nul
<<

SOURCE="simple\TestConstBool.java"

InputPath=simple\TestConstBool.java

"simple\TestConstBool.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestConstBool_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestConstBool.class classes\simple > nul
<<

SOURCE="simple\TestConstDouble.java"

InputPath=simple\TestConstDouble.java

"simple\TestConstDouble.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestConstDouble_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestConstDouble.class classes\simple > nul
<<

SOURCE="simple\TestConstFloat.java"

InputPath=simple\TestConstFloat.java

"simple\TestConstFloat.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestConstFloat_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestConstFloat.class classes\simple > nul
<<

SOURCE="simple\TestConstLong.java"

InputPath=simple\TestConstLong.java

"simple\TestConstLong.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestConstLong_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestConstLong.class classes\simple > nul
<<

SOURCE="simple\TestConstString.java"

InputPath=simple\TestConstString.java

"simple\TestConstString.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestConstString_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestConstString.class classes\simple > nul
<<

SOURCE="simple\TestConstTypedef.java"

InputPath=simple\TestConstTypedef.java

"simple\TestConstTypedef.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestConstTypedef_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestConstTypedef.class classes\simple > nul
<<

SOURCE="simple\TestEnum.java"

InputPath=simple\TestEnum.java

"simple\TestEnum.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestEnum_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestEnum.class classes\simple > nul
<<

SOURCE="simple\TestEnumHelper.java"

InputPath=simple\TestEnumHelper.java

"simple\TestEnumHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestEnumHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestEnumHelper.class classes\simple > nul
<<

SOURCE="simple\TestEnumHolder.java"

InputPath=simple\TestEnumHolder.java

"simple\TestEnumHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestEnumHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestEnumHolder.class classes\simple > nul
<<

SOURCE="simple\TestInterf.java"

InputPath=simple\TestInterf.java

"simple\TestInterf.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestInterf_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf.class classes\simple > nul
<<

SOURCE="simple\TestInterf2.java"

InputPath=simple\TestInterf2.java

"simple\TestInterf2.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestInterf2_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf2.class classes\simple > nul
<<

SOURCE="simple\TestInterf2Helper.java"

InputPath=simple\TestInterf2Helper.java

"simple\TestInterf2Helper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestInterf2Helper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf2Helper.class classes\simple > nul
<<

SOURCE="simple\TestInterf2Holder.java"

InputPath=simple\TestInterf2Holder.java

"simple\TestInterf2Holder.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestInterf2Holder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf2Holder.class classes\simple > nul
<<

SOURCE="simple\TestInterf2Operations.java"

InputPath=simple\TestInterf2Operations.java

"simple\TestInterf2Operations.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestInterf2Operations_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf2Operations.class classes\simple > nul
<<

SOURCE="simple\TestInterf3.java"

InputPath=simple\TestInterf3.java

"simple\TestInterf3.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestInterf3_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf3.class classes\simple > nul
<<

SOURCE="simple\TestInterf3Helper.java"

InputPath=simple\TestInterf3Helper.java

"simple\TestInterf3Helper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestInterf3Helper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf3Helper.class classes\simple > nul
<<

SOURCE="simple\TestInterf3Holder.java"

InputPath=simple\TestInterf3Holder.java

"simple\TestInterf3Holder.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestInterf3Holder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf3Holder.class classes\simple > nul
<<

SOURCE="simple\TestInterf3Operations.java"

InputPath=simple\TestInterf3Operations.java

"simple\TestInterf3Operations.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestInterf3Operations_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf3Operations.class classes\simple > nul
<<

SOURCE="simple\TestInterfHelper.java"

InputPath=simple\TestInterfHelper.java

"simple\TestInterfHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestInterfHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterfHelper.class classes\simple > nul
<<

SOURCE="simple\TestInterfHolder.java"

InputPath=simple\TestInterfHolder.java

"simple\TestInterfHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestInterfHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterfHolder.class classes\simple > nul
<<

SOURCE="simple\TestInterfOperations.java"

InputPath=simple\TestInterfOperations.java

"simple\TestInterfOperations.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestInterfOperations_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterfOperations.class classes\simple > nul
<<

SOURCE="simple\TestLI.java"

InputPath=simple\TestLI.java

"simple\TestLI.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestLI_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestLI.class classes\simple > nul
<<

SOURCE="simple\TestLIHelper.java"

InputPath=simple\TestLIHelper.java

"simple\TestLIHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestLIHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestLIHelper.class classes\simple > nul
<<

SOURCE="simple\TestLIHolder.java"

InputPath=simple\TestLIHolder.java

"simple\TestLIHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestLIHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestLIHolder.class classes\simple > nul
<<

SOURCE="simple\TestLIOperations.java"

InputPath=simple\TestLIOperations.java

"simple\TestLIOperations.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestLIOperations_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestLIOperations.class classes\simple > nul
<<

SOURCE="simple\TestNestedStruct.java"

InputPath=simple\TestNestedStruct.java

"simple\TestNestedStruct.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestNestedStruct_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestNestedStruct.class classes\simple > nul
<<

SOURCE="simple\TestNestedStructHelper.java"

InputPath=simple\TestNestedStructHelper.java

"simple\TestNestedStructHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestNestedStructHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestNestedStructHelper.class classes\simple > nul
<<

SOURCE="simple\TestNestedStructHolder.java"

InputPath=simple\TestNestedStructHolder.java

"simple\TestNestedStructHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestNestedStructHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestNestedStructHolder.class classes\simple > nul
<<

SOURCE="simple\TestSeqTypedefHelper.java"

InputPath=simple\TestSeqTypedefHelper.java

"simple\TestSeqTypedefHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestSeqTypedefHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestSeqTypedefHelper.class classes\simple > nul
<<

SOURCE="simple\TestSeqTypedefHolder.java"

InputPath=simple\TestSeqTypedefHolder.java

"simple\TestSeqTypedefHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestSeqTypedefHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestSeqTypedefHolder.class classes\simple > nul
<<

SOURCE="simple\TestStringArrayHelper.java"

InputPath=simple\TestStringArrayHelper.java

"simple\TestStringArrayHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestStringArrayHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStringArrayHelper.class classes\simple > nul
<<

SOURCE="simple\TestStringArrayHolder.java"

InputPath=simple\TestStringArrayHolder.java

"simple\TestStringArrayHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestStringArrayHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStringArrayHolder.class classes\simple > nul
<<

SOURCE="simple\TestStruct.java"

InputPath=simple\TestStruct.java

"simple\TestStruct.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestStruct_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStruct.class classes\simple > nul
<<

SOURCE="simple\TestStructArrayHelper.java"

InputPath=simple\TestStructArrayHelper.java

"simple\TestStructArrayHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestStructArrayHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructArrayHelper.class classes\simple > nul
<<

SOURCE="simple\TestStructArrayHolder.java"

InputPath=simple\TestStructArrayHolder.java

"simple\TestStructArrayHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestStructArrayHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructArrayHolder.class classes\simple > nul
<<

SOURCE="simple\TestStructHelper.java"

InputPath=simple\TestStructHelper.java

"simple\TestStructHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestStructHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructHelper.class classes\simple > nul
<<

SOURCE="simple\TestStructHolder.java"

InputPath=simple\TestStructHolder.java

"simple\TestStructHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestStructHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructHolder.class classes\simple > nul
<<

SOURCE="simple\TestStructSequenceHelper.java"

InputPath=simple\TestStructSequenceHelper.java

"simple\TestStructSequenceHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestStructSequenceHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructSequenceHelper.class classes\simple > nul
<<

SOURCE="simple\TestStructSequenceHolder.java"

InputPath=simple\TestStructSequenceHolder.java

"simple\TestStructSequenceHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestStructSequenceHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructSequenceHolder.class classes\simple > nul
<<

SOURCE="simple\TestStructWithEnum.java"

InputPath=simple\TestStructWithEnum.java

"simple\TestStructWithEnum.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestStructWithEnum_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructWithEnum.class classes\simple > nul
<<

SOURCE="simple\TestStructWithEnumHelper.java"

InputPath=simple\TestStructWithEnumHelper.java

"simple\TestStructWithEnumHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestStructWithEnumHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructWithEnumHelper.class classes\simple > nul
<<

SOURCE="simple\TestStructWithEnumHolder.java"

InputPath=simple\TestStructWithEnumHolder.java

"simple\TestStructWithEnumHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestStructWithEnumHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructWithEnumHolder.class classes\simple > nul
<<

SOURCE="simple\TestTypedefHelper.java"

InputPath=simple\TestTypedefHelper.java

"simple\TestTypedefHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TestTypedefHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestTypedefHelper.class classes\simple > nul
<<

SOURCE="simple\TIMESTAMP_INVALID_NSEC.java"

InputPath=simple\TIMESTAMP_INVALID_NSEC.java

"simple\TIMESTAMP_INVALID_NSEC.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-simple_TIMESTAMP_INVALID_NSEC_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TIMESTAMP_INVALID_NSEC.class classes\simple > nul
<<

SOURCE="SomeSortOfTypedefHelper.java"

InputPath=SomeSortOfTypedefHelper.java

"SomeSortOfTypedefHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Debug-java_files-SomeSortOfTypedefHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\. 2> nul & copy /y SomeSortOfTypedefHelper.class classes\. > nul
<<

SOURCE="other.idl"

InputPath=other.idl

"otherJC.cpp" "otherJC.h" "otherJS.cpp" "otherJS.h" "SomeSortOfTypedefHelper.java" : $(SOURCE)  "simpleJC.h" "$(IDL2JNI_ROOT)\bin\idl2jni.exe" "SomeSortOfTypedefHelper.java"
	<<tempfile-Win32-Debug-idl2jni_files-other_idl.bat
	@echo off
	$(IDL2JNI_ROOT)\bin\idl2jni -DUSE_LOCAL -DIDL2JNI_VERSION=1.0 "$(InputPath)"
	echo Input: other
<<

SOURCE="otherTypeSupport.idl"

InputPath=otherTypeSupport.idl

"otherTypeSupportJC.cpp" "otherTypeSupportJC.h" "otherTypeSupportJS.cpp" "otherTypeSupportJS.h" : $(SOURCE)  "$(IDL2JNI_ROOT)\bin\idl2jni.exe" "SomeSortOfTypedefHelper.java"
	<<tempfile-Win32-Debug-idl2jni_files-otherTypeSupport_idl.bat
	@echo off
	$(IDL2JNI_ROOT)\bin\idl2jni -DUSE_LOCAL -DIDL2JNI_VERSION=1.0 "$(InputPath)"
	echo Input: otherTypeSupport
<<

SOURCE="simple.idl"

InputPath=simple.idl

"simple\_Local2LocalBase.java" "simple\_Local2TAOPeer.java" "simple\_Local3LocalBase.java" "simple\_Local3TAOPeer.java" "simple\_TestInterf2Stub.java" "simple\_TestInterf3Stub.java" "simple\_TestInterfStub.java" "simple\_TestLILocalBase.java" "simple\_TestLITAOPeer.java" "simple\ArrayBounds.java" "simple\EnumArrayHelper.java" "simple\EnumArrayHolder.java" "simple\EnumSeqHelper.java" "simple\EnumSeqHolder.java" "simple\Local2.java" "simple\Local2Helper.java" "simple\Local2Holder.java" "simple\Local2Operations.java" "simple\Local2SeqHelper.java" "simple\Local2SeqHolder.java" "simple\Local3.java" "simple\Local3Helper.java" "simple\Local3Holder.java" "simple\Local3Operations.java" "simple\LongSeqSeqHelper.java" "simple\LongSeqSeqHolder.java" "simple\LongSeqSeqSeqHelper.java" "simple\LongSeqSeqSeqHolder.java" "simple\SeqOfTypedefedLongHelper.java" "simple\SeqOfTypedefedLongHolder.java" "simple\StringSeqHelper.java" "simple\StringSeqHolder.java" "simple\StringSeqSeqHelper.java" "simple\StringSeqSeqHolder.java" "simple\StringSeqSeqSeqHelper.java" "simple\StringSeqSeqSeqHolder.java" "simple\StructWithObjref.java" "simple\StructWithObjrefHelper.java" "simple\StructWithObjrefHolder.java" "simple\TestArrayTypedef2Helper.java" "simple\TestArrayTypedefHelper.java" "simple\TestArrayTypedefHolder.java" "simple\TestConstBool.java" "simple\TestConstDouble.java" "simple\TestConstFloat.java" "simple\TestConstLong.java" "simple\TestConstString.java" "simple\TestConstTypedef.java" "simple\TestEnum.java" "simple\TestEnumHelper.java" "simple\TestEnumHolder.java" "simple\TestInterf.java" "simple\TestInterf2.java" "simple\TestInterf2Helper.java" "simple\TestInterf2Holder.java" "simple\TestInterf2Operations.java" "simple\TestInterf3.java" "simple\TestInterf3Helper.java" "simple\TestInterf3Holder.java" "simple\TestInterf3Operations.java" "simple\TestInterfHelper.java" "simple\TestInterfHolder.java" "simple\TestInterfOperations.java" "simple\TestLI.java" "simple\TestLIHelper.java" "simple\TestLIHolder.java" "simple\TestLIOperations.java" "simple\TestNestedStruct.java" "simple\TestNestedStructHelper.java" "simple\TestNestedStructHolder.java" "simple\TestSeqTypedefHelper.java" "simple\TestSeqTypedefHolder.java" "simple\TestStringArrayHelper.java" "simple\TestStringArrayHolder.java" "simple\TestStruct.java" "simple\TestStructArrayHelper.java" "simple\TestStructArrayHolder.java" "simple\TestStructHelper.java" "simple\TestStructHolder.java" "simple\TestStructSequenceHelper.java" "simple\TestStructSequenceHolder.java" "simple\TestStructWithEnum.java" "simple\TestStructWithEnumHelper.java" "simple\TestStructWithEnumHolder.java" "simple\TestTypedefHelper.java" "simple\TIMESTAMP_INVALID_NSEC.java" "simpleJC.cpp" "simpleJC.h" "simpleJS.h" : $(SOURCE)  "$(IDL2JNI_ROOT)\bin\idl2jni.exe" "SomeSortOfTypedefHelper.java"
	<<tempfile-Win32-Debug-idl2jni_files-simple_idl.bat
	@echo off
	$(IDL2JNI_ROOT)\bin\idl2jni -DUSE_LOCAL -DIDL2JNI_VERSION=1.0 "$(InputPath)"
	echo Input: simple
<<

!ELSEIF  "$(CFG)" == "Win32 Release"
SOURCE="simple\_Local2LocalBase.java"

InputPath=simple\_Local2LocalBase.java

"simple\_Local2LocalBase.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple__Local2LocalBase_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_Local2LocalBase.class classes\simple > nul
<<

SOURCE="simple\_Local2TAOPeer.java"

InputPath=simple\_Local2TAOPeer.java

"simple\_Local2TAOPeer.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple__Local2TAOPeer_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_Local2TAOPeer.class classes\simple > nul
<<

SOURCE="simple\_Local3LocalBase.java"

InputPath=simple\_Local3LocalBase.java

"simple\_Local3LocalBase.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple__Local3LocalBase_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_Local3LocalBase.class classes\simple > nul
<<

SOURCE="simple\_Local3TAOPeer.java"

InputPath=simple\_Local3TAOPeer.java

"simple\_Local3TAOPeer.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple__Local3TAOPeer_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_Local3TAOPeer.class classes\simple > nul
<<

SOURCE="simple\_TestInterf2Stub.java"

InputPath=simple\_TestInterf2Stub.java

"simple\_TestInterf2Stub.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple__TestInterf2Stub_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_TestInterf2Stub.class classes\simple > nul
<<

SOURCE="simple\_TestInterf3Stub.java"

InputPath=simple\_TestInterf3Stub.java

"simple\_TestInterf3Stub.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple__TestInterf3Stub_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_TestInterf3Stub.class classes\simple > nul
<<

SOURCE="simple\_TestInterfStub.java"

InputPath=simple\_TestInterfStub.java

"simple\_TestInterfStub.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple__TestInterfStub_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_TestInterfStub.class classes\simple > nul
<<

SOURCE="simple\_TestLILocalBase.java"

InputPath=simple\_TestLILocalBase.java

"simple\_TestLILocalBase.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple__TestLILocalBase_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_TestLILocalBase.class classes\simple > nul
<<

SOURCE="simple\_TestLITAOPeer.java"

InputPath=simple\_TestLITAOPeer.java

"simple\_TestLITAOPeer.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple__TestLITAOPeer_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_TestLITAOPeer.class classes\simple > nul
<<

SOURCE="simple\ArrayBounds.java"

InputPath=simple\ArrayBounds.java

"simple\ArrayBounds.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_ArrayBounds_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\ArrayBounds.class classes\simple > nul
<<

SOURCE="simple\EnumArrayHelper.java"

InputPath=simple\EnumArrayHelper.java

"simple\EnumArrayHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_EnumArrayHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\EnumArrayHelper.class classes\simple > nul
<<

SOURCE="simple\EnumArrayHolder.java"

InputPath=simple\EnumArrayHolder.java

"simple\EnumArrayHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_EnumArrayHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\EnumArrayHolder.class classes\simple > nul
<<

SOURCE="simple\EnumSeqHelper.java"

InputPath=simple\EnumSeqHelper.java

"simple\EnumSeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_EnumSeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\EnumSeqHelper.class classes\simple > nul
<<

SOURCE="simple\EnumSeqHolder.java"

InputPath=simple\EnumSeqHolder.java

"simple\EnumSeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_EnumSeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\EnumSeqHolder.class classes\simple > nul
<<

SOURCE="simple\Local2.java"

InputPath=simple\Local2.java

"simple\Local2.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_Local2_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local2.class classes\simple > nul
<<

SOURCE="simple\Local2Helper.java"

InputPath=simple\Local2Helper.java

"simple\Local2Helper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_Local2Helper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local2Helper.class classes\simple > nul
<<

SOURCE="simple\Local2Holder.java"

InputPath=simple\Local2Holder.java

"simple\Local2Holder.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_Local2Holder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local2Holder.class classes\simple > nul
<<

SOURCE="simple\Local2Operations.java"

InputPath=simple\Local2Operations.java

"simple\Local2Operations.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_Local2Operations_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local2Operations.class classes\simple > nul
<<

SOURCE="simple\Local2SeqHelper.java"

InputPath=simple\Local2SeqHelper.java

"simple\Local2SeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_Local2SeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local2SeqHelper.class classes\simple > nul
<<

SOURCE="simple\Local2SeqHolder.java"

InputPath=simple\Local2SeqHolder.java

"simple\Local2SeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_Local2SeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local2SeqHolder.class classes\simple > nul
<<

SOURCE="simple\Local3.java"

InputPath=simple\Local3.java

"simple\Local3.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_Local3_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local3.class classes\simple > nul
<<

SOURCE="simple\Local3Helper.java"

InputPath=simple\Local3Helper.java

"simple\Local3Helper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_Local3Helper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local3Helper.class classes\simple > nul
<<

SOURCE="simple\Local3Holder.java"

InputPath=simple\Local3Holder.java

"simple\Local3Holder.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_Local3Holder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local3Holder.class classes\simple > nul
<<

SOURCE="simple\Local3Operations.java"

InputPath=simple\Local3Operations.java

"simple\Local3Operations.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_Local3Operations_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local3Operations.class classes\simple > nul
<<

SOURCE="simple\LongSeqSeqHelper.java"

InputPath=simple\LongSeqSeqHelper.java

"simple\LongSeqSeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_LongSeqSeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\LongSeqSeqHelper.class classes\simple > nul
<<

SOURCE="simple\LongSeqSeqHolder.java"

InputPath=simple\LongSeqSeqHolder.java

"simple\LongSeqSeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_LongSeqSeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\LongSeqSeqHolder.class classes\simple > nul
<<

SOURCE="simple\LongSeqSeqSeqHelper.java"

InputPath=simple\LongSeqSeqSeqHelper.java

"simple\LongSeqSeqSeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_LongSeqSeqSeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\LongSeqSeqSeqHelper.class classes\simple > nul
<<

SOURCE="simple\LongSeqSeqSeqHolder.java"

InputPath=simple\LongSeqSeqSeqHolder.java

"simple\LongSeqSeqSeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_LongSeqSeqSeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\LongSeqSeqSeqHolder.class classes\simple > nul
<<

SOURCE="simple\SeqOfTypedefedLongHelper.java"

InputPath=simple\SeqOfTypedefedLongHelper.java

"simple\SeqOfTypedefedLongHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_SeqOfTypedefedLongHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\SeqOfTypedefedLongHelper.class classes\simple > nul
<<

SOURCE="simple\SeqOfTypedefedLongHolder.java"

InputPath=simple\SeqOfTypedefedLongHolder.java

"simple\SeqOfTypedefedLongHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_SeqOfTypedefedLongHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\SeqOfTypedefedLongHolder.class classes\simple > nul
<<

SOURCE="simple\StringSeqHelper.java"

InputPath=simple\StringSeqHelper.java

"simple\StringSeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_StringSeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StringSeqHelper.class classes\simple > nul
<<

SOURCE="simple\StringSeqHolder.java"

InputPath=simple\StringSeqHolder.java

"simple\StringSeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_StringSeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StringSeqHolder.class classes\simple > nul
<<

SOURCE="simple\StringSeqSeqHelper.java"

InputPath=simple\StringSeqSeqHelper.java

"simple\StringSeqSeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_StringSeqSeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StringSeqSeqHelper.class classes\simple > nul
<<

SOURCE="simple\StringSeqSeqHolder.java"

InputPath=simple\StringSeqSeqHolder.java

"simple\StringSeqSeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_StringSeqSeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StringSeqSeqHolder.class classes\simple > nul
<<

SOURCE="simple\StringSeqSeqSeqHelper.java"

InputPath=simple\StringSeqSeqSeqHelper.java

"simple\StringSeqSeqSeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_StringSeqSeqSeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StringSeqSeqSeqHelper.class classes\simple > nul
<<

SOURCE="simple\StringSeqSeqSeqHolder.java"

InputPath=simple\StringSeqSeqSeqHolder.java

"simple\StringSeqSeqSeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_StringSeqSeqSeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StringSeqSeqSeqHolder.class classes\simple > nul
<<

SOURCE="simple\StructWithObjref.java"

InputPath=simple\StructWithObjref.java

"simple\StructWithObjref.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_StructWithObjref_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StructWithObjref.class classes\simple > nul
<<

SOURCE="simple\StructWithObjrefHelper.java"

InputPath=simple\StructWithObjrefHelper.java

"simple\StructWithObjrefHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_StructWithObjrefHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StructWithObjrefHelper.class classes\simple > nul
<<

SOURCE="simple\StructWithObjrefHolder.java"

InputPath=simple\StructWithObjrefHolder.java

"simple\StructWithObjrefHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_StructWithObjrefHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StructWithObjrefHolder.class classes\simple > nul
<<

SOURCE="simple\TestArrayTypedef2Helper.java"

InputPath=simple\TestArrayTypedef2Helper.java

"simple\TestArrayTypedef2Helper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestArrayTypedef2Helper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestArrayTypedef2Helper.class classes\simple > nul
<<

SOURCE="simple\TestArrayTypedefHelper.java"

InputPath=simple\TestArrayTypedefHelper.java

"simple\TestArrayTypedefHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestArrayTypedefHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestArrayTypedefHelper.class classes\simple > nul
<<

SOURCE="simple\TestArrayTypedefHolder.java"

InputPath=simple\TestArrayTypedefHolder.java

"simple\TestArrayTypedefHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestArrayTypedefHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestArrayTypedefHolder.class classes\simple > nul
<<

SOURCE="simple\TestConstBool.java"

InputPath=simple\TestConstBool.java

"simple\TestConstBool.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestConstBool_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestConstBool.class classes\simple > nul
<<

SOURCE="simple\TestConstDouble.java"

InputPath=simple\TestConstDouble.java

"simple\TestConstDouble.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestConstDouble_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestConstDouble.class classes\simple > nul
<<

SOURCE="simple\TestConstFloat.java"

InputPath=simple\TestConstFloat.java

"simple\TestConstFloat.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestConstFloat_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestConstFloat.class classes\simple > nul
<<

SOURCE="simple\TestConstLong.java"

InputPath=simple\TestConstLong.java

"simple\TestConstLong.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestConstLong_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestConstLong.class classes\simple > nul
<<

SOURCE="simple\TestConstString.java"

InputPath=simple\TestConstString.java

"simple\TestConstString.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestConstString_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestConstString.class classes\simple > nul
<<

SOURCE="simple\TestConstTypedef.java"

InputPath=simple\TestConstTypedef.java

"simple\TestConstTypedef.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestConstTypedef_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestConstTypedef.class classes\simple > nul
<<

SOURCE="simple\TestEnum.java"

InputPath=simple\TestEnum.java

"simple\TestEnum.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestEnum_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestEnum.class classes\simple > nul
<<

SOURCE="simple\TestEnumHelper.java"

InputPath=simple\TestEnumHelper.java

"simple\TestEnumHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestEnumHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestEnumHelper.class classes\simple > nul
<<

SOURCE="simple\TestEnumHolder.java"

InputPath=simple\TestEnumHolder.java

"simple\TestEnumHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestEnumHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestEnumHolder.class classes\simple > nul
<<

SOURCE="simple\TestInterf.java"

InputPath=simple\TestInterf.java

"simple\TestInterf.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestInterf_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf.class classes\simple > nul
<<

SOURCE="simple\TestInterf2.java"

InputPath=simple\TestInterf2.java

"simple\TestInterf2.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestInterf2_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf2.class classes\simple > nul
<<

SOURCE="simple\TestInterf2Helper.java"

InputPath=simple\TestInterf2Helper.java

"simple\TestInterf2Helper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestInterf2Helper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf2Helper.class classes\simple > nul
<<

SOURCE="simple\TestInterf2Holder.java"

InputPath=simple\TestInterf2Holder.java

"simple\TestInterf2Holder.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestInterf2Holder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf2Holder.class classes\simple > nul
<<

SOURCE="simple\TestInterf2Operations.java"

InputPath=simple\TestInterf2Operations.java

"simple\TestInterf2Operations.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestInterf2Operations_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf2Operations.class classes\simple > nul
<<

SOURCE="simple\TestInterf3.java"

InputPath=simple\TestInterf3.java

"simple\TestInterf3.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestInterf3_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf3.class classes\simple > nul
<<

SOURCE="simple\TestInterf3Helper.java"

InputPath=simple\TestInterf3Helper.java

"simple\TestInterf3Helper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestInterf3Helper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf3Helper.class classes\simple > nul
<<

SOURCE="simple\TestInterf3Holder.java"

InputPath=simple\TestInterf3Holder.java

"simple\TestInterf3Holder.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestInterf3Holder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf3Holder.class classes\simple > nul
<<

SOURCE="simple\TestInterf3Operations.java"

InputPath=simple\TestInterf3Operations.java

"simple\TestInterf3Operations.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestInterf3Operations_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf3Operations.class classes\simple > nul
<<

SOURCE="simple\TestInterfHelper.java"

InputPath=simple\TestInterfHelper.java

"simple\TestInterfHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestInterfHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterfHelper.class classes\simple > nul
<<

SOURCE="simple\TestInterfHolder.java"

InputPath=simple\TestInterfHolder.java

"simple\TestInterfHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestInterfHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterfHolder.class classes\simple > nul
<<

SOURCE="simple\TestInterfOperations.java"

InputPath=simple\TestInterfOperations.java

"simple\TestInterfOperations.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestInterfOperations_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterfOperations.class classes\simple > nul
<<

SOURCE="simple\TestLI.java"

InputPath=simple\TestLI.java

"simple\TestLI.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestLI_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestLI.class classes\simple > nul
<<

SOURCE="simple\TestLIHelper.java"

InputPath=simple\TestLIHelper.java

"simple\TestLIHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestLIHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestLIHelper.class classes\simple > nul
<<

SOURCE="simple\TestLIHolder.java"

InputPath=simple\TestLIHolder.java

"simple\TestLIHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestLIHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestLIHolder.class classes\simple > nul
<<

SOURCE="simple\TestLIOperations.java"

InputPath=simple\TestLIOperations.java

"simple\TestLIOperations.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestLIOperations_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestLIOperations.class classes\simple > nul
<<

SOURCE="simple\TestNestedStruct.java"

InputPath=simple\TestNestedStruct.java

"simple\TestNestedStruct.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestNestedStruct_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestNestedStruct.class classes\simple > nul
<<

SOURCE="simple\TestNestedStructHelper.java"

InputPath=simple\TestNestedStructHelper.java

"simple\TestNestedStructHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestNestedStructHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestNestedStructHelper.class classes\simple > nul
<<

SOURCE="simple\TestNestedStructHolder.java"

InputPath=simple\TestNestedStructHolder.java

"simple\TestNestedStructHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestNestedStructHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestNestedStructHolder.class classes\simple > nul
<<

SOURCE="simple\TestSeqTypedefHelper.java"

InputPath=simple\TestSeqTypedefHelper.java

"simple\TestSeqTypedefHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestSeqTypedefHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestSeqTypedefHelper.class classes\simple > nul
<<

SOURCE="simple\TestSeqTypedefHolder.java"

InputPath=simple\TestSeqTypedefHolder.java

"simple\TestSeqTypedefHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestSeqTypedefHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestSeqTypedefHolder.class classes\simple > nul
<<

SOURCE="simple\TestStringArrayHelper.java"

InputPath=simple\TestStringArrayHelper.java

"simple\TestStringArrayHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestStringArrayHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStringArrayHelper.class classes\simple > nul
<<

SOURCE="simple\TestStringArrayHolder.java"

InputPath=simple\TestStringArrayHolder.java

"simple\TestStringArrayHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestStringArrayHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStringArrayHolder.class classes\simple > nul
<<

SOURCE="simple\TestStruct.java"

InputPath=simple\TestStruct.java

"simple\TestStruct.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestStruct_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStruct.class classes\simple > nul
<<

SOURCE="simple\TestStructArrayHelper.java"

InputPath=simple\TestStructArrayHelper.java

"simple\TestStructArrayHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestStructArrayHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructArrayHelper.class classes\simple > nul
<<

SOURCE="simple\TestStructArrayHolder.java"

InputPath=simple\TestStructArrayHolder.java

"simple\TestStructArrayHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestStructArrayHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructArrayHolder.class classes\simple > nul
<<

SOURCE="simple\TestStructHelper.java"

InputPath=simple\TestStructHelper.java

"simple\TestStructHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestStructHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructHelper.class classes\simple > nul
<<

SOURCE="simple\TestStructHolder.java"

InputPath=simple\TestStructHolder.java

"simple\TestStructHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestStructHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructHolder.class classes\simple > nul
<<

SOURCE="simple\TestStructSequenceHelper.java"

InputPath=simple\TestStructSequenceHelper.java

"simple\TestStructSequenceHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestStructSequenceHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructSequenceHelper.class classes\simple > nul
<<

SOURCE="simple\TestStructSequenceHolder.java"

InputPath=simple\TestStructSequenceHolder.java

"simple\TestStructSequenceHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestStructSequenceHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructSequenceHolder.class classes\simple > nul
<<

SOURCE="simple\TestStructWithEnum.java"

InputPath=simple\TestStructWithEnum.java

"simple\TestStructWithEnum.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestStructWithEnum_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructWithEnum.class classes\simple > nul
<<

SOURCE="simple\TestStructWithEnumHelper.java"

InputPath=simple\TestStructWithEnumHelper.java

"simple\TestStructWithEnumHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestStructWithEnumHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructWithEnumHelper.class classes\simple > nul
<<

SOURCE="simple\TestStructWithEnumHolder.java"

InputPath=simple\TestStructWithEnumHolder.java

"simple\TestStructWithEnumHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestStructWithEnumHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructWithEnumHolder.class classes\simple > nul
<<

SOURCE="simple\TestTypedefHelper.java"

InputPath=simple\TestTypedefHelper.java

"simple\TestTypedefHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TestTypedefHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestTypedefHelper.class classes\simple > nul
<<

SOURCE="simple\TIMESTAMP_INVALID_NSEC.java"

InputPath=simple\TIMESTAMP_INVALID_NSEC.java

"simple\TIMESTAMP_INVALID_NSEC.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-simple_TIMESTAMP_INVALID_NSEC_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TIMESTAMP_INVALID_NSEC.class classes\simple > nul
<<

SOURCE="SomeSortOfTypedefHelper.java"

InputPath=SomeSortOfTypedefHelper.java

"SomeSortOfTypedefHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Release-java_files-SomeSortOfTypedefHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\. 2> nul & copy /y SomeSortOfTypedefHelper.class classes\. > nul
<<

SOURCE="other.idl"

InputPath=other.idl

"otherJC.cpp" "otherJC.h" "otherJS.cpp" "otherJS.h" "SomeSortOfTypedefHelper.java" : $(SOURCE)  "simpleJC.h" "$(IDL2JNI_ROOT)\bin\idl2jni.exe" "SomeSortOfTypedefHelper.java"
	<<tempfile-Win32-Release-idl2jni_files-other_idl.bat
	@echo off
	$(IDL2JNI_ROOT)\bin\idl2jni -DUSE_LOCAL -DIDL2JNI_VERSION=1.0 "$(InputPath)"
	echo Input: other
<<

SOURCE="otherTypeSupport.idl"

InputPath=otherTypeSupport.idl

"otherTypeSupportJC.cpp" "otherTypeSupportJC.h" "otherTypeSupportJS.cpp" "otherTypeSupportJS.h" : $(SOURCE)  "$(IDL2JNI_ROOT)\bin\idl2jni.exe" "SomeSortOfTypedefHelper.java"
	<<tempfile-Win32-Release-idl2jni_files-otherTypeSupport_idl.bat
	@echo off
	$(IDL2JNI_ROOT)\bin\idl2jni -DUSE_LOCAL -DIDL2JNI_VERSION=1.0 "$(InputPath)"
	echo Input: otherTypeSupport
<<

SOURCE="simple.idl"

InputPath=simple.idl

"simple\_Local2LocalBase.java" "simple\_Local2TAOPeer.java" "simple\_Local3LocalBase.java" "simple\_Local3TAOPeer.java" "simple\_TestInterf2Stub.java" "simple\_TestInterf3Stub.java" "simple\_TestInterfStub.java" "simple\_TestLILocalBase.java" "simple\_TestLITAOPeer.java" "simple\ArrayBounds.java" "simple\EnumArrayHelper.java" "simple\EnumArrayHolder.java" "simple\EnumSeqHelper.java" "simple\EnumSeqHolder.java" "simple\Local2.java" "simple\Local2Helper.java" "simple\Local2Holder.java" "simple\Local2Operations.java" "simple\Local2SeqHelper.java" "simple\Local2SeqHolder.java" "simple\Local3.java" "simple\Local3Helper.java" "simple\Local3Holder.java" "simple\Local3Operations.java" "simple\LongSeqSeqHelper.java" "simple\LongSeqSeqHolder.java" "simple\LongSeqSeqSeqHelper.java" "simple\LongSeqSeqSeqHolder.java" "simple\SeqOfTypedefedLongHelper.java" "simple\SeqOfTypedefedLongHolder.java" "simple\StringSeqHelper.java" "simple\StringSeqHolder.java" "simple\StringSeqSeqHelper.java" "simple\StringSeqSeqHolder.java" "simple\StringSeqSeqSeqHelper.java" "simple\StringSeqSeqSeqHolder.java" "simple\StructWithObjref.java" "simple\StructWithObjrefHelper.java" "simple\StructWithObjrefHolder.java" "simple\TestArrayTypedef2Helper.java" "simple\TestArrayTypedefHelper.java" "simple\TestArrayTypedefHolder.java" "simple\TestConstBool.java" "simple\TestConstDouble.java" "simple\TestConstFloat.java" "simple\TestConstLong.java" "simple\TestConstString.java" "simple\TestConstTypedef.java" "simple\TestEnum.java" "simple\TestEnumHelper.java" "simple\TestEnumHolder.java" "simple\TestInterf.java" "simple\TestInterf2.java" "simple\TestInterf2Helper.java" "simple\TestInterf2Holder.java" "simple\TestInterf2Operations.java" "simple\TestInterf3.java" "simple\TestInterf3Helper.java" "simple\TestInterf3Holder.java" "simple\TestInterf3Operations.java" "simple\TestInterfHelper.java" "simple\TestInterfHolder.java" "simple\TestInterfOperations.java" "simple\TestLI.java" "simple\TestLIHelper.java" "simple\TestLIHolder.java" "simple\TestLIOperations.java" "simple\TestNestedStruct.java" "simple\TestNestedStructHelper.java" "simple\TestNestedStructHolder.java" "simple\TestSeqTypedefHelper.java" "simple\TestSeqTypedefHolder.java" "simple\TestStringArrayHelper.java" "simple\TestStringArrayHolder.java" "simple\TestStruct.java" "simple\TestStructArrayHelper.java" "simple\TestStructArrayHolder.java" "simple\TestStructHelper.java" "simple\TestStructHolder.java" "simple\TestStructSequenceHelper.java" "simple\TestStructSequenceHolder.java" "simple\TestStructWithEnum.java" "simple\TestStructWithEnumHelper.java" "simple\TestStructWithEnumHolder.java" "simple\TestTypedefHelper.java" "simple\TIMESTAMP_INVALID_NSEC.java" "simpleJC.cpp" "simpleJC.h" "simpleJS.h" : $(SOURCE)  "$(IDL2JNI_ROOT)\bin\idl2jni.exe" "SomeSortOfTypedefHelper.java"
	<<tempfile-Win32-Release-idl2jni_files-simple_idl.bat
	@echo off
	$(IDL2JNI_ROOT)\bin\idl2jni -DUSE_LOCAL -DIDL2JNI_VERSION=1.0 "$(InputPath)"
	echo Input: simple
<<

!ELSEIF  "$(CFG)" == "Win32 Static Debug"
SOURCE="simple\_Local2LocalBase.java"

InputPath=simple\_Local2LocalBase.java

"simple\_Local2LocalBase.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple__Local2LocalBase_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_Local2LocalBase.class classes\simple > nul
<<

SOURCE="simple\_Local2TAOPeer.java"

InputPath=simple\_Local2TAOPeer.java

"simple\_Local2TAOPeer.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple__Local2TAOPeer_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_Local2TAOPeer.class classes\simple > nul
<<

SOURCE="simple\_Local3LocalBase.java"

InputPath=simple\_Local3LocalBase.java

"simple\_Local3LocalBase.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple__Local3LocalBase_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_Local3LocalBase.class classes\simple > nul
<<

SOURCE="simple\_Local3TAOPeer.java"

InputPath=simple\_Local3TAOPeer.java

"simple\_Local3TAOPeer.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple__Local3TAOPeer_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_Local3TAOPeer.class classes\simple > nul
<<

SOURCE="simple\_TestInterf2Stub.java"

InputPath=simple\_TestInterf2Stub.java

"simple\_TestInterf2Stub.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple__TestInterf2Stub_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_TestInterf2Stub.class classes\simple > nul
<<

SOURCE="simple\_TestInterf3Stub.java"

InputPath=simple\_TestInterf3Stub.java

"simple\_TestInterf3Stub.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple__TestInterf3Stub_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_TestInterf3Stub.class classes\simple > nul
<<

SOURCE="simple\_TestInterfStub.java"

InputPath=simple\_TestInterfStub.java

"simple\_TestInterfStub.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple__TestInterfStub_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_TestInterfStub.class classes\simple > nul
<<

SOURCE="simple\_TestLILocalBase.java"

InputPath=simple\_TestLILocalBase.java

"simple\_TestLILocalBase.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple__TestLILocalBase_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_TestLILocalBase.class classes\simple > nul
<<

SOURCE="simple\_TestLITAOPeer.java"

InputPath=simple\_TestLITAOPeer.java

"simple\_TestLITAOPeer.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple__TestLITAOPeer_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_TestLITAOPeer.class classes\simple > nul
<<

SOURCE="simple\ArrayBounds.java"

InputPath=simple\ArrayBounds.java

"simple\ArrayBounds.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_ArrayBounds_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\ArrayBounds.class classes\simple > nul
<<

SOURCE="simple\EnumArrayHelper.java"

InputPath=simple\EnumArrayHelper.java

"simple\EnumArrayHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_EnumArrayHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\EnumArrayHelper.class classes\simple > nul
<<

SOURCE="simple\EnumArrayHolder.java"

InputPath=simple\EnumArrayHolder.java

"simple\EnumArrayHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_EnumArrayHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\EnumArrayHolder.class classes\simple > nul
<<

SOURCE="simple\EnumSeqHelper.java"

InputPath=simple\EnumSeqHelper.java

"simple\EnumSeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_EnumSeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\EnumSeqHelper.class classes\simple > nul
<<

SOURCE="simple\EnumSeqHolder.java"

InputPath=simple\EnumSeqHolder.java

"simple\EnumSeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_EnumSeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\EnumSeqHolder.class classes\simple > nul
<<

SOURCE="simple\Local2.java"

InputPath=simple\Local2.java

"simple\Local2.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_Local2_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local2.class classes\simple > nul
<<

SOURCE="simple\Local2Helper.java"

InputPath=simple\Local2Helper.java

"simple\Local2Helper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_Local2Helper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local2Helper.class classes\simple > nul
<<

SOURCE="simple\Local2Holder.java"

InputPath=simple\Local2Holder.java

"simple\Local2Holder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_Local2Holder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local2Holder.class classes\simple > nul
<<

SOURCE="simple\Local2Operations.java"

InputPath=simple\Local2Operations.java

"simple\Local2Operations.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_Local2Operations_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local2Operations.class classes\simple > nul
<<

SOURCE="simple\Local2SeqHelper.java"

InputPath=simple\Local2SeqHelper.java

"simple\Local2SeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_Local2SeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local2SeqHelper.class classes\simple > nul
<<

SOURCE="simple\Local2SeqHolder.java"

InputPath=simple\Local2SeqHolder.java

"simple\Local2SeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_Local2SeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local2SeqHolder.class classes\simple > nul
<<

SOURCE="simple\Local3.java"

InputPath=simple\Local3.java

"simple\Local3.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_Local3_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local3.class classes\simple > nul
<<

SOURCE="simple\Local3Helper.java"

InputPath=simple\Local3Helper.java

"simple\Local3Helper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_Local3Helper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local3Helper.class classes\simple > nul
<<

SOURCE="simple\Local3Holder.java"

InputPath=simple\Local3Holder.java

"simple\Local3Holder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_Local3Holder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local3Holder.class classes\simple > nul
<<

SOURCE="simple\Local3Operations.java"

InputPath=simple\Local3Operations.java

"simple\Local3Operations.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_Local3Operations_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local3Operations.class classes\simple > nul
<<

SOURCE="simple\LongSeqSeqHelper.java"

InputPath=simple\LongSeqSeqHelper.java

"simple\LongSeqSeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_LongSeqSeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\LongSeqSeqHelper.class classes\simple > nul
<<

SOURCE="simple\LongSeqSeqHolder.java"

InputPath=simple\LongSeqSeqHolder.java

"simple\LongSeqSeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_LongSeqSeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\LongSeqSeqHolder.class classes\simple > nul
<<

SOURCE="simple\LongSeqSeqSeqHelper.java"

InputPath=simple\LongSeqSeqSeqHelper.java

"simple\LongSeqSeqSeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_LongSeqSeqSeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\LongSeqSeqSeqHelper.class classes\simple > nul
<<

SOURCE="simple\LongSeqSeqSeqHolder.java"

InputPath=simple\LongSeqSeqSeqHolder.java

"simple\LongSeqSeqSeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_LongSeqSeqSeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\LongSeqSeqSeqHolder.class classes\simple > nul
<<

SOURCE="simple\SeqOfTypedefedLongHelper.java"

InputPath=simple\SeqOfTypedefedLongHelper.java

"simple\SeqOfTypedefedLongHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_SeqOfTypedefedLongHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\SeqOfTypedefedLongHelper.class classes\simple > nul
<<

SOURCE="simple\SeqOfTypedefedLongHolder.java"

InputPath=simple\SeqOfTypedefedLongHolder.java

"simple\SeqOfTypedefedLongHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_SeqOfTypedefedLongHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\SeqOfTypedefedLongHolder.class classes\simple > nul
<<

SOURCE="simple\StringSeqHelper.java"

InputPath=simple\StringSeqHelper.java

"simple\StringSeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_StringSeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StringSeqHelper.class classes\simple > nul
<<

SOURCE="simple\StringSeqHolder.java"

InputPath=simple\StringSeqHolder.java

"simple\StringSeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_StringSeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StringSeqHolder.class classes\simple > nul
<<

SOURCE="simple\StringSeqSeqHelper.java"

InputPath=simple\StringSeqSeqHelper.java

"simple\StringSeqSeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_StringSeqSeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StringSeqSeqHelper.class classes\simple > nul
<<

SOURCE="simple\StringSeqSeqHolder.java"

InputPath=simple\StringSeqSeqHolder.java

"simple\StringSeqSeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_StringSeqSeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StringSeqSeqHolder.class classes\simple > nul
<<

SOURCE="simple\StringSeqSeqSeqHelper.java"

InputPath=simple\StringSeqSeqSeqHelper.java

"simple\StringSeqSeqSeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_StringSeqSeqSeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StringSeqSeqSeqHelper.class classes\simple > nul
<<

SOURCE="simple\StringSeqSeqSeqHolder.java"

InputPath=simple\StringSeqSeqSeqHolder.java

"simple\StringSeqSeqSeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_StringSeqSeqSeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StringSeqSeqSeqHolder.class classes\simple > nul
<<

SOURCE="simple\StructWithObjref.java"

InputPath=simple\StructWithObjref.java

"simple\StructWithObjref.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_StructWithObjref_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StructWithObjref.class classes\simple > nul
<<

SOURCE="simple\StructWithObjrefHelper.java"

InputPath=simple\StructWithObjrefHelper.java

"simple\StructWithObjrefHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_StructWithObjrefHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StructWithObjrefHelper.class classes\simple > nul
<<

SOURCE="simple\StructWithObjrefHolder.java"

InputPath=simple\StructWithObjrefHolder.java

"simple\StructWithObjrefHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_StructWithObjrefHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StructWithObjrefHolder.class classes\simple > nul
<<

SOURCE="simple\TestArrayTypedef2Helper.java"

InputPath=simple\TestArrayTypedef2Helper.java

"simple\TestArrayTypedef2Helper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestArrayTypedef2Helper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestArrayTypedef2Helper.class classes\simple > nul
<<

SOURCE="simple\TestArrayTypedefHelper.java"

InputPath=simple\TestArrayTypedefHelper.java

"simple\TestArrayTypedefHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestArrayTypedefHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestArrayTypedefHelper.class classes\simple > nul
<<

SOURCE="simple\TestArrayTypedefHolder.java"

InputPath=simple\TestArrayTypedefHolder.java

"simple\TestArrayTypedefHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestArrayTypedefHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestArrayTypedefHolder.class classes\simple > nul
<<

SOURCE="simple\TestConstBool.java"

InputPath=simple\TestConstBool.java

"simple\TestConstBool.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestConstBool_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestConstBool.class classes\simple > nul
<<

SOURCE="simple\TestConstDouble.java"

InputPath=simple\TestConstDouble.java

"simple\TestConstDouble.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestConstDouble_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestConstDouble.class classes\simple > nul
<<

SOURCE="simple\TestConstFloat.java"

InputPath=simple\TestConstFloat.java

"simple\TestConstFloat.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestConstFloat_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestConstFloat.class classes\simple > nul
<<

SOURCE="simple\TestConstLong.java"

InputPath=simple\TestConstLong.java

"simple\TestConstLong.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestConstLong_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestConstLong.class classes\simple > nul
<<

SOURCE="simple\TestConstString.java"

InputPath=simple\TestConstString.java

"simple\TestConstString.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestConstString_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestConstString.class classes\simple > nul
<<

SOURCE="simple\TestConstTypedef.java"

InputPath=simple\TestConstTypedef.java

"simple\TestConstTypedef.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestConstTypedef_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestConstTypedef.class classes\simple > nul
<<

SOURCE="simple\TestEnum.java"

InputPath=simple\TestEnum.java

"simple\TestEnum.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestEnum_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestEnum.class classes\simple > nul
<<

SOURCE="simple\TestEnumHelper.java"

InputPath=simple\TestEnumHelper.java

"simple\TestEnumHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestEnumHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestEnumHelper.class classes\simple > nul
<<

SOURCE="simple\TestEnumHolder.java"

InputPath=simple\TestEnumHolder.java

"simple\TestEnumHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestEnumHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestEnumHolder.class classes\simple > nul
<<

SOURCE="simple\TestInterf.java"

InputPath=simple\TestInterf.java

"simple\TestInterf.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestInterf_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf.class classes\simple > nul
<<

SOURCE="simple\TestInterf2.java"

InputPath=simple\TestInterf2.java

"simple\TestInterf2.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestInterf2_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf2.class classes\simple > nul
<<

SOURCE="simple\TestInterf2Helper.java"

InputPath=simple\TestInterf2Helper.java

"simple\TestInterf2Helper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestInterf2Helper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf2Helper.class classes\simple > nul
<<

SOURCE="simple\TestInterf2Holder.java"

InputPath=simple\TestInterf2Holder.java

"simple\TestInterf2Holder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestInterf2Holder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf2Holder.class classes\simple > nul
<<

SOURCE="simple\TestInterf2Operations.java"

InputPath=simple\TestInterf2Operations.java

"simple\TestInterf2Operations.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestInterf2Operations_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf2Operations.class classes\simple > nul
<<

SOURCE="simple\TestInterf3.java"

InputPath=simple\TestInterf3.java

"simple\TestInterf3.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestInterf3_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf3.class classes\simple > nul
<<

SOURCE="simple\TestInterf3Helper.java"

InputPath=simple\TestInterf3Helper.java

"simple\TestInterf3Helper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestInterf3Helper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf3Helper.class classes\simple > nul
<<

SOURCE="simple\TestInterf3Holder.java"

InputPath=simple\TestInterf3Holder.java

"simple\TestInterf3Holder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestInterf3Holder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf3Holder.class classes\simple > nul
<<

SOURCE="simple\TestInterf3Operations.java"

InputPath=simple\TestInterf3Operations.java

"simple\TestInterf3Operations.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestInterf3Operations_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf3Operations.class classes\simple > nul
<<

SOURCE="simple\TestInterfHelper.java"

InputPath=simple\TestInterfHelper.java

"simple\TestInterfHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestInterfHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterfHelper.class classes\simple > nul
<<

SOURCE="simple\TestInterfHolder.java"

InputPath=simple\TestInterfHolder.java

"simple\TestInterfHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestInterfHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterfHolder.class classes\simple > nul
<<

SOURCE="simple\TestInterfOperations.java"

InputPath=simple\TestInterfOperations.java

"simple\TestInterfOperations.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestInterfOperations_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterfOperations.class classes\simple > nul
<<

SOURCE="simple\TestLI.java"

InputPath=simple\TestLI.java

"simple\TestLI.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestLI_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestLI.class classes\simple > nul
<<

SOURCE="simple\TestLIHelper.java"

InputPath=simple\TestLIHelper.java

"simple\TestLIHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestLIHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestLIHelper.class classes\simple > nul
<<

SOURCE="simple\TestLIHolder.java"

InputPath=simple\TestLIHolder.java

"simple\TestLIHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestLIHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestLIHolder.class classes\simple > nul
<<

SOURCE="simple\TestLIOperations.java"

InputPath=simple\TestLIOperations.java

"simple\TestLIOperations.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestLIOperations_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestLIOperations.class classes\simple > nul
<<

SOURCE="simple\TestNestedStruct.java"

InputPath=simple\TestNestedStruct.java

"simple\TestNestedStruct.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestNestedStruct_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestNestedStruct.class classes\simple > nul
<<

SOURCE="simple\TestNestedStructHelper.java"

InputPath=simple\TestNestedStructHelper.java

"simple\TestNestedStructHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestNestedStructHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestNestedStructHelper.class classes\simple > nul
<<

SOURCE="simple\TestNestedStructHolder.java"

InputPath=simple\TestNestedStructHolder.java

"simple\TestNestedStructHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestNestedStructHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestNestedStructHolder.class classes\simple > nul
<<

SOURCE="simple\TestSeqTypedefHelper.java"

InputPath=simple\TestSeqTypedefHelper.java

"simple\TestSeqTypedefHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestSeqTypedefHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestSeqTypedefHelper.class classes\simple > nul
<<

SOURCE="simple\TestSeqTypedefHolder.java"

InputPath=simple\TestSeqTypedefHolder.java

"simple\TestSeqTypedefHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestSeqTypedefHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestSeqTypedefHolder.class classes\simple > nul
<<

SOURCE="simple\TestStringArrayHelper.java"

InputPath=simple\TestStringArrayHelper.java

"simple\TestStringArrayHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestStringArrayHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStringArrayHelper.class classes\simple > nul
<<

SOURCE="simple\TestStringArrayHolder.java"

InputPath=simple\TestStringArrayHolder.java

"simple\TestStringArrayHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestStringArrayHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStringArrayHolder.class classes\simple > nul
<<

SOURCE="simple\TestStruct.java"

InputPath=simple\TestStruct.java

"simple\TestStruct.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestStruct_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStruct.class classes\simple > nul
<<

SOURCE="simple\TestStructArrayHelper.java"

InputPath=simple\TestStructArrayHelper.java

"simple\TestStructArrayHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestStructArrayHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructArrayHelper.class classes\simple > nul
<<

SOURCE="simple\TestStructArrayHolder.java"

InputPath=simple\TestStructArrayHolder.java

"simple\TestStructArrayHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestStructArrayHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructArrayHolder.class classes\simple > nul
<<

SOURCE="simple\TestStructHelper.java"

InputPath=simple\TestStructHelper.java

"simple\TestStructHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestStructHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructHelper.class classes\simple > nul
<<

SOURCE="simple\TestStructHolder.java"

InputPath=simple\TestStructHolder.java

"simple\TestStructHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestStructHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructHolder.class classes\simple > nul
<<

SOURCE="simple\TestStructSequenceHelper.java"

InputPath=simple\TestStructSequenceHelper.java

"simple\TestStructSequenceHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestStructSequenceHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructSequenceHelper.class classes\simple > nul
<<

SOURCE="simple\TestStructSequenceHolder.java"

InputPath=simple\TestStructSequenceHolder.java

"simple\TestStructSequenceHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestStructSequenceHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructSequenceHolder.class classes\simple > nul
<<

SOURCE="simple\TestStructWithEnum.java"

InputPath=simple\TestStructWithEnum.java

"simple\TestStructWithEnum.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestStructWithEnum_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructWithEnum.class classes\simple > nul
<<

SOURCE="simple\TestStructWithEnumHelper.java"

InputPath=simple\TestStructWithEnumHelper.java

"simple\TestStructWithEnumHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestStructWithEnumHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructWithEnumHelper.class classes\simple > nul
<<

SOURCE="simple\TestStructWithEnumHolder.java"

InputPath=simple\TestStructWithEnumHolder.java

"simple\TestStructWithEnumHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestStructWithEnumHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructWithEnumHolder.class classes\simple > nul
<<

SOURCE="simple\TestTypedefHelper.java"

InputPath=simple\TestTypedefHelper.java

"simple\TestTypedefHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TestTypedefHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestTypedefHelper.class classes\simple > nul
<<

SOURCE="simple\TIMESTAMP_INVALID_NSEC.java"

InputPath=simple\TIMESTAMP_INVALID_NSEC.java

"simple\TIMESTAMP_INVALID_NSEC.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-simple_TIMESTAMP_INVALID_NSEC_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TIMESTAMP_INVALID_NSEC.class classes\simple > nul
<<

SOURCE="SomeSortOfTypedefHelper.java"

InputPath=SomeSortOfTypedefHelper.java

"SomeSortOfTypedefHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Debug-java_files-SomeSortOfTypedefHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\. 2> nul & copy /y SomeSortOfTypedefHelper.class classes\. > nul
<<

SOURCE="other.idl"

InputPath=other.idl

"otherJC.cpp" "otherJC.h" "otherJS.cpp" "otherJS.h" "SomeSortOfTypedefHelper.java" : $(SOURCE)  "simpleJC.h" "$(IDL2JNI_ROOT)\bin\idl2jni.exe" "SomeSortOfTypedefHelper.java"
	<<tempfile-Win32-Static_Debug-idl2jni_files-other_idl.bat
	@echo off
	$(IDL2JNI_ROOT)\bin\idl2jni -DUSE_LOCAL -DIDL2JNI_VERSION=1.0 "$(InputPath)"
	echo Input: other
<<

SOURCE="otherTypeSupport.idl"

InputPath=otherTypeSupport.idl

"otherTypeSupportJC.cpp" "otherTypeSupportJC.h" "otherTypeSupportJS.cpp" "otherTypeSupportJS.h" : $(SOURCE)  "$(IDL2JNI_ROOT)\bin\idl2jni.exe" "SomeSortOfTypedefHelper.java"
	<<tempfile-Win32-Static_Debug-idl2jni_files-otherTypeSupport_idl.bat
	@echo off
	$(IDL2JNI_ROOT)\bin\idl2jni -DUSE_LOCAL -DIDL2JNI_VERSION=1.0 "$(InputPath)"
	echo Input: otherTypeSupport
<<

SOURCE="simple.idl"

InputPath=simple.idl

"simple\_Local2LocalBase.java" "simple\_Local2TAOPeer.java" "simple\_Local3LocalBase.java" "simple\_Local3TAOPeer.java" "simple\_TestInterf2Stub.java" "simple\_TestInterf3Stub.java" "simple\_TestInterfStub.java" "simple\_TestLILocalBase.java" "simple\_TestLITAOPeer.java" "simple\ArrayBounds.java" "simple\EnumArrayHelper.java" "simple\EnumArrayHolder.java" "simple\EnumSeqHelper.java" "simple\EnumSeqHolder.java" "simple\Local2.java" "simple\Local2Helper.java" "simple\Local2Holder.java" "simple\Local2Operations.java" "simple\Local2SeqHelper.java" "simple\Local2SeqHolder.java" "simple\Local3.java" "simple\Local3Helper.java" "simple\Local3Holder.java" "simple\Local3Operations.java" "simple\LongSeqSeqHelper.java" "simple\LongSeqSeqHolder.java" "simple\LongSeqSeqSeqHelper.java" "simple\LongSeqSeqSeqHolder.java" "simple\SeqOfTypedefedLongHelper.java" "simple\SeqOfTypedefedLongHolder.java" "simple\StringSeqHelper.java" "simple\StringSeqHolder.java" "simple\StringSeqSeqHelper.java" "simple\StringSeqSeqHolder.java" "simple\StringSeqSeqSeqHelper.java" "simple\StringSeqSeqSeqHolder.java" "simple\StructWithObjref.java" "simple\StructWithObjrefHelper.java" "simple\StructWithObjrefHolder.java" "simple\TestArrayTypedef2Helper.java" "simple\TestArrayTypedefHelper.java" "simple\TestArrayTypedefHolder.java" "simple\TestConstBool.java" "simple\TestConstDouble.java" "simple\TestConstFloat.java" "simple\TestConstLong.java" "simple\TestConstString.java" "simple\TestConstTypedef.java" "simple\TestEnum.java" "simple\TestEnumHelper.java" "simple\TestEnumHolder.java" "simple\TestInterf.java" "simple\TestInterf2.java" "simple\TestInterf2Helper.java" "simple\TestInterf2Holder.java" "simple\TestInterf2Operations.java" "simple\TestInterf3.java" "simple\TestInterf3Helper.java" "simple\TestInterf3Holder.java" "simple\TestInterf3Operations.java" "simple\TestInterfHelper.java" "simple\TestInterfHolder.java" "simple\TestInterfOperations.java" "simple\TestLI.java" "simple\TestLIHelper.java" "simple\TestLIHolder.java" "simple\TestLIOperations.java" "simple\TestNestedStruct.java" "simple\TestNestedStructHelper.java" "simple\TestNestedStructHolder.java" "simple\TestSeqTypedefHelper.java" "simple\TestSeqTypedefHolder.java" "simple\TestStringArrayHelper.java" "simple\TestStringArrayHolder.java" "simple\TestStruct.java" "simple\TestStructArrayHelper.java" "simple\TestStructArrayHolder.java" "simple\TestStructHelper.java" "simple\TestStructHolder.java" "simple\TestStructSequenceHelper.java" "simple\TestStructSequenceHolder.java" "simple\TestStructWithEnum.java" "simple\TestStructWithEnumHelper.java" "simple\TestStructWithEnumHolder.java" "simple\TestTypedefHelper.java" "simple\TIMESTAMP_INVALID_NSEC.java" "simpleJC.cpp" "simpleJC.h" "simpleJS.h" : $(SOURCE)  "$(IDL2JNI_ROOT)\bin\idl2jni.exe" "SomeSortOfTypedefHelper.java"
	<<tempfile-Win32-Static_Debug-idl2jni_files-simple_idl.bat
	@echo off
	$(IDL2JNI_ROOT)\bin\idl2jni -DUSE_LOCAL -DIDL2JNI_VERSION=1.0 "$(InputPath)"
	echo Input: simple
<<

!ELSEIF  "$(CFG)" == "Win32 Static Release"
SOURCE="simple\_Local2LocalBase.java"

InputPath=simple\_Local2LocalBase.java

"simple\_Local2LocalBase.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple__Local2LocalBase_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_Local2LocalBase.class classes\simple > nul
<<

SOURCE="simple\_Local2TAOPeer.java"

InputPath=simple\_Local2TAOPeer.java

"simple\_Local2TAOPeer.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple__Local2TAOPeer_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_Local2TAOPeer.class classes\simple > nul
<<

SOURCE="simple\_Local3LocalBase.java"

InputPath=simple\_Local3LocalBase.java

"simple\_Local3LocalBase.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple__Local3LocalBase_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_Local3LocalBase.class classes\simple > nul
<<

SOURCE="simple\_Local3TAOPeer.java"

InputPath=simple\_Local3TAOPeer.java

"simple\_Local3TAOPeer.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple__Local3TAOPeer_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_Local3TAOPeer.class classes\simple > nul
<<

SOURCE="simple\_TestInterf2Stub.java"

InputPath=simple\_TestInterf2Stub.java

"simple\_TestInterf2Stub.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple__TestInterf2Stub_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_TestInterf2Stub.class classes\simple > nul
<<

SOURCE="simple\_TestInterf3Stub.java"

InputPath=simple\_TestInterf3Stub.java

"simple\_TestInterf3Stub.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple__TestInterf3Stub_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_TestInterf3Stub.class classes\simple > nul
<<

SOURCE="simple\_TestInterfStub.java"

InputPath=simple\_TestInterfStub.java

"simple\_TestInterfStub.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple__TestInterfStub_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_TestInterfStub.class classes\simple > nul
<<

SOURCE="simple\_TestLILocalBase.java"

InputPath=simple\_TestLILocalBase.java

"simple\_TestLILocalBase.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple__TestLILocalBase_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_TestLILocalBase.class classes\simple > nul
<<

SOURCE="simple\_TestLITAOPeer.java"

InputPath=simple\_TestLITAOPeer.java

"simple\_TestLITAOPeer.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple__TestLITAOPeer_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\_TestLITAOPeer.class classes\simple > nul
<<

SOURCE="simple\ArrayBounds.java"

InputPath=simple\ArrayBounds.java

"simple\ArrayBounds.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_ArrayBounds_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\ArrayBounds.class classes\simple > nul
<<

SOURCE="simple\EnumArrayHelper.java"

InputPath=simple\EnumArrayHelper.java

"simple\EnumArrayHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_EnumArrayHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\EnumArrayHelper.class classes\simple > nul
<<

SOURCE="simple\EnumArrayHolder.java"

InputPath=simple\EnumArrayHolder.java

"simple\EnumArrayHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_EnumArrayHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\EnumArrayHolder.class classes\simple > nul
<<

SOURCE="simple\EnumSeqHelper.java"

InputPath=simple\EnumSeqHelper.java

"simple\EnumSeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_EnumSeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\EnumSeqHelper.class classes\simple > nul
<<

SOURCE="simple\EnumSeqHolder.java"

InputPath=simple\EnumSeqHolder.java

"simple\EnumSeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_EnumSeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\EnumSeqHolder.class classes\simple > nul
<<

SOURCE="simple\Local2.java"

InputPath=simple\Local2.java

"simple\Local2.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_Local2_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local2.class classes\simple > nul
<<

SOURCE="simple\Local2Helper.java"

InputPath=simple\Local2Helper.java

"simple\Local2Helper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_Local2Helper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local2Helper.class classes\simple > nul
<<

SOURCE="simple\Local2Holder.java"

InputPath=simple\Local2Holder.java

"simple\Local2Holder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_Local2Holder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local2Holder.class classes\simple > nul
<<

SOURCE="simple\Local2Operations.java"

InputPath=simple\Local2Operations.java

"simple\Local2Operations.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_Local2Operations_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local2Operations.class classes\simple > nul
<<

SOURCE="simple\Local2SeqHelper.java"

InputPath=simple\Local2SeqHelper.java

"simple\Local2SeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_Local2SeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local2SeqHelper.class classes\simple > nul
<<

SOURCE="simple\Local2SeqHolder.java"

InputPath=simple\Local2SeqHolder.java

"simple\Local2SeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_Local2SeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local2SeqHolder.class classes\simple > nul
<<

SOURCE="simple\Local3.java"

InputPath=simple\Local3.java

"simple\Local3.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_Local3_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local3.class classes\simple > nul
<<

SOURCE="simple\Local3Helper.java"

InputPath=simple\Local3Helper.java

"simple\Local3Helper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_Local3Helper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local3Helper.class classes\simple > nul
<<

SOURCE="simple\Local3Holder.java"

InputPath=simple\Local3Holder.java

"simple\Local3Holder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_Local3Holder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local3Holder.class classes\simple > nul
<<

SOURCE="simple\Local3Operations.java"

InputPath=simple\Local3Operations.java

"simple\Local3Operations.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_Local3Operations_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\Local3Operations.class classes\simple > nul
<<

SOURCE="simple\LongSeqSeqHelper.java"

InputPath=simple\LongSeqSeqHelper.java

"simple\LongSeqSeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_LongSeqSeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\LongSeqSeqHelper.class classes\simple > nul
<<

SOURCE="simple\LongSeqSeqHolder.java"

InputPath=simple\LongSeqSeqHolder.java

"simple\LongSeqSeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_LongSeqSeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\LongSeqSeqHolder.class classes\simple > nul
<<

SOURCE="simple\LongSeqSeqSeqHelper.java"

InputPath=simple\LongSeqSeqSeqHelper.java

"simple\LongSeqSeqSeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_LongSeqSeqSeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\LongSeqSeqSeqHelper.class classes\simple > nul
<<

SOURCE="simple\LongSeqSeqSeqHolder.java"

InputPath=simple\LongSeqSeqSeqHolder.java

"simple\LongSeqSeqSeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_LongSeqSeqSeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\LongSeqSeqSeqHolder.class classes\simple > nul
<<

SOURCE="simple\SeqOfTypedefedLongHelper.java"

InputPath=simple\SeqOfTypedefedLongHelper.java

"simple\SeqOfTypedefedLongHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_SeqOfTypedefedLongHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\SeqOfTypedefedLongHelper.class classes\simple > nul
<<

SOURCE="simple\SeqOfTypedefedLongHolder.java"

InputPath=simple\SeqOfTypedefedLongHolder.java

"simple\SeqOfTypedefedLongHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_SeqOfTypedefedLongHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\SeqOfTypedefedLongHolder.class classes\simple > nul
<<

SOURCE="simple\StringSeqHelper.java"

InputPath=simple\StringSeqHelper.java

"simple\StringSeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_StringSeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StringSeqHelper.class classes\simple > nul
<<

SOURCE="simple\StringSeqHolder.java"

InputPath=simple\StringSeqHolder.java

"simple\StringSeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_StringSeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StringSeqHolder.class classes\simple > nul
<<

SOURCE="simple\StringSeqSeqHelper.java"

InputPath=simple\StringSeqSeqHelper.java

"simple\StringSeqSeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_StringSeqSeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StringSeqSeqHelper.class classes\simple > nul
<<

SOURCE="simple\StringSeqSeqHolder.java"

InputPath=simple\StringSeqSeqHolder.java

"simple\StringSeqSeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_StringSeqSeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StringSeqSeqHolder.class classes\simple > nul
<<

SOURCE="simple\StringSeqSeqSeqHelper.java"

InputPath=simple\StringSeqSeqSeqHelper.java

"simple\StringSeqSeqSeqHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_StringSeqSeqSeqHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StringSeqSeqSeqHelper.class classes\simple > nul
<<

SOURCE="simple\StringSeqSeqSeqHolder.java"

InputPath=simple\StringSeqSeqSeqHolder.java

"simple\StringSeqSeqSeqHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_StringSeqSeqSeqHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StringSeqSeqSeqHolder.class classes\simple > nul
<<

SOURCE="simple\StructWithObjref.java"

InputPath=simple\StructWithObjref.java

"simple\StructWithObjref.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_StructWithObjref_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StructWithObjref.class classes\simple > nul
<<

SOURCE="simple\StructWithObjrefHelper.java"

InputPath=simple\StructWithObjrefHelper.java

"simple\StructWithObjrefHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_StructWithObjrefHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StructWithObjrefHelper.class classes\simple > nul
<<

SOURCE="simple\StructWithObjrefHolder.java"

InputPath=simple\StructWithObjrefHolder.java

"simple\StructWithObjrefHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_StructWithObjrefHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\StructWithObjrefHolder.class classes\simple > nul
<<

SOURCE="simple\TestArrayTypedef2Helper.java"

InputPath=simple\TestArrayTypedef2Helper.java

"simple\TestArrayTypedef2Helper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestArrayTypedef2Helper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestArrayTypedef2Helper.class classes\simple > nul
<<

SOURCE="simple\TestArrayTypedefHelper.java"

InputPath=simple\TestArrayTypedefHelper.java

"simple\TestArrayTypedefHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestArrayTypedefHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestArrayTypedefHelper.class classes\simple > nul
<<

SOURCE="simple\TestArrayTypedefHolder.java"

InputPath=simple\TestArrayTypedefHolder.java

"simple\TestArrayTypedefHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestArrayTypedefHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestArrayTypedefHolder.class classes\simple > nul
<<

SOURCE="simple\TestConstBool.java"

InputPath=simple\TestConstBool.java

"simple\TestConstBool.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestConstBool_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestConstBool.class classes\simple > nul
<<

SOURCE="simple\TestConstDouble.java"

InputPath=simple\TestConstDouble.java

"simple\TestConstDouble.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestConstDouble_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestConstDouble.class classes\simple > nul
<<

SOURCE="simple\TestConstFloat.java"

InputPath=simple\TestConstFloat.java

"simple\TestConstFloat.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestConstFloat_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestConstFloat.class classes\simple > nul
<<

SOURCE="simple\TestConstLong.java"

InputPath=simple\TestConstLong.java

"simple\TestConstLong.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestConstLong_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestConstLong.class classes\simple > nul
<<

SOURCE="simple\TestConstString.java"

InputPath=simple\TestConstString.java

"simple\TestConstString.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestConstString_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestConstString.class classes\simple > nul
<<

SOURCE="simple\TestConstTypedef.java"

InputPath=simple\TestConstTypedef.java

"simple\TestConstTypedef.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestConstTypedef_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestConstTypedef.class classes\simple > nul
<<

SOURCE="simple\TestEnum.java"

InputPath=simple\TestEnum.java

"simple\TestEnum.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestEnum_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestEnum.class classes\simple > nul
<<

SOURCE="simple\TestEnumHelper.java"

InputPath=simple\TestEnumHelper.java

"simple\TestEnumHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestEnumHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestEnumHelper.class classes\simple > nul
<<

SOURCE="simple\TestEnumHolder.java"

InputPath=simple\TestEnumHolder.java

"simple\TestEnumHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestEnumHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestEnumHolder.class classes\simple > nul
<<

SOURCE="simple\TestInterf.java"

InputPath=simple\TestInterf.java

"simple\TestInterf.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestInterf_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf.class classes\simple > nul
<<

SOURCE="simple\TestInterf2.java"

InputPath=simple\TestInterf2.java

"simple\TestInterf2.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestInterf2_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf2.class classes\simple > nul
<<

SOURCE="simple\TestInterf2Helper.java"

InputPath=simple\TestInterf2Helper.java

"simple\TestInterf2Helper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestInterf2Helper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf2Helper.class classes\simple > nul
<<

SOURCE="simple\TestInterf2Holder.java"

InputPath=simple\TestInterf2Holder.java

"simple\TestInterf2Holder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestInterf2Holder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf2Holder.class classes\simple > nul
<<

SOURCE="simple\TestInterf2Operations.java"

InputPath=simple\TestInterf2Operations.java

"simple\TestInterf2Operations.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestInterf2Operations_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf2Operations.class classes\simple > nul
<<

SOURCE="simple\TestInterf3.java"

InputPath=simple\TestInterf3.java

"simple\TestInterf3.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestInterf3_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf3.class classes\simple > nul
<<

SOURCE="simple\TestInterf3Helper.java"

InputPath=simple\TestInterf3Helper.java

"simple\TestInterf3Helper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestInterf3Helper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf3Helper.class classes\simple > nul
<<

SOURCE="simple\TestInterf3Holder.java"

InputPath=simple\TestInterf3Holder.java

"simple\TestInterf3Holder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestInterf3Holder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf3Holder.class classes\simple > nul
<<

SOURCE="simple\TestInterf3Operations.java"

InputPath=simple\TestInterf3Operations.java

"simple\TestInterf3Operations.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestInterf3Operations_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterf3Operations.class classes\simple > nul
<<

SOURCE="simple\TestInterfHelper.java"

InputPath=simple\TestInterfHelper.java

"simple\TestInterfHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestInterfHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterfHelper.class classes\simple > nul
<<

SOURCE="simple\TestInterfHolder.java"

InputPath=simple\TestInterfHolder.java

"simple\TestInterfHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestInterfHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterfHolder.class classes\simple > nul
<<

SOURCE="simple\TestInterfOperations.java"

InputPath=simple\TestInterfOperations.java

"simple\TestInterfOperations.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestInterfOperations_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestInterfOperations.class classes\simple > nul
<<

SOURCE="simple\TestLI.java"

InputPath=simple\TestLI.java

"simple\TestLI.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestLI_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestLI.class classes\simple > nul
<<

SOURCE="simple\TestLIHelper.java"

InputPath=simple\TestLIHelper.java

"simple\TestLIHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestLIHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestLIHelper.class classes\simple > nul
<<

SOURCE="simple\TestLIHolder.java"

InputPath=simple\TestLIHolder.java

"simple\TestLIHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestLIHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestLIHolder.class classes\simple > nul
<<

SOURCE="simple\TestLIOperations.java"

InputPath=simple\TestLIOperations.java

"simple\TestLIOperations.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestLIOperations_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestLIOperations.class classes\simple > nul
<<

SOURCE="simple\TestNestedStruct.java"

InputPath=simple\TestNestedStruct.java

"simple\TestNestedStruct.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestNestedStruct_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestNestedStruct.class classes\simple > nul
<<

SOURCE="simple\TestNestedStructHelper.java"

InputPath=simple\TestNestedStructHelper.java

"simple\TestNestedStructHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestNestedStructHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestNestedStructHelper.class classes\simple > nul
<<

SOURCE="simple\TestNestedStructHolder.java"

InputPath=simple\TestNestedStructHolder.java

"simple\TestNestedStructHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestNestedStructHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestNestedStructHolder.class classes\simple > nul
<<

SOURCE="simple\TestSeqTypedefHelper.java"

InputPath=simple\TestSeqTypedefHelper.java

"simple\TestSeqTypedefHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestSeqTypedefHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestSeqTypedefHelper.class classes\simple > nul
<<

SOURCE="simple\TestSeqTypedefHolder.java"

InputPath=simple\TestSeqTypedefHolder.java

"simple\TestSeqTypedefHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestSeqTypedefHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestSeqTypedefHolder.class classes\simple > nul
<<

SOURCE="simple\TestStringArrayHelper.java"

InputPath=simple\TestStringArrayHelper.java

"simple\TestStringArrayHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestStringArrayHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStringArrayHelper.class classes\simple > nul
<<

SOURCE="simple\TestStringArrayHolder.java"

InputPath=simple\TestStringArrayHolder.java

"simple\TestStringArrayHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestStringArrayHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStringArrayHolder.class classes\simple > nul
<<

SOURCE="simple\TestStruct.java"

InputPath=simple\TestStruct.java

"simple\TestStruct.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestStruct_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStruct.class classes\simple > nul
<<

SOURCE="simple\TestStructArrayHelper.java"

InputPath=simple\TestStructArrayHelper.java

"simple\TestStructArrayHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestStructArrayHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructArrayHelper.class classes\simple > nul
<<

SOURCE="simple\TestStructArrayHolder.java"

InputPath=simple\TestStructArrayHolder.java

"simple\TestStructArrayHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestStructArrayHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructArrayHolder.class classes\simple > nul
<<

SOURCE="simple\TestStructHelper.java"

InputPath=simple\TestStructHelper.java

"simple\TestStructHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestStructHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructHelper.class classes\simple > nul
<<

SOURCE="simple\TestStructHolder.java"

InputPath=simple\TestStructHolder.java

"simple\TestStructHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestStructHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructHolder.class classes\simple > nul
<<

SOURCE="simple\TestStructSequenceHelper.java"

InputPath=simple\TestStructSequenceHelper.java

"simple\TestStructSequenceHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestStructSequenceHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructSequenceHelper.class classes\simple > nul
<<

SOURCE="simple\TestStructSequenceHolder.java"

InputPath=simple\TestStructSequenceHolder.java

"simple\TestStructSequenceHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestStructSequenceHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructSequenceHolder.class classes\simple > nul
<<

SOURCE="simple\TestStructWithEnum.java"

InputPath=simple\TestStructWithEnum.java

"simple\TestStructWithEnum.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestStructWithEnum_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructWithEnum.class classes\simple > nul
<<

SOURCE="simple\TestStructWithEnumHelper.java"

InputPath=simple\TestStructWithEnumHelper.java

"simple\TestStructWithEnumHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestStructWithEnumHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructWithEnumHelper.class classes\simple > nul
<<

SOURCE="simple\TestStructWithEnumHolder.java"

InputPath=simple\TestStructWithEnumHolder.java

"simple\TestStructWithEnumHolder.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestStructWithEnumHolder_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestStructWithEnumHolder.class classes\simple > nul
<<

SOURCE="simple\TestTypedefHelper.java"

InputPath=simple\TestTypedefHelper.java

"simple\TestTypedefHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TestTypedefHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TestTypedefHelper.class classes\simple > nul
<<

SOURCE="simple\TIMESTAMP_INVALID_NSEC.java"

InputPath=simple\TIMESTAMP_INVALID_NSEC.java

"simple\TIMESTAMP_INVALID_NSEC.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-simple_TIMESTAMP_INVALID_NSEC_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\simple 2> nul & copy /y simple\TIMESTAMP_INVALID_NSEC.class classes\simple > nul
<<

SOURCE="SomeSortOfTypedefHelper.java"

InputPath=SomeSortOfTypedefHelper.java

"SomeSortOfTypedefHelper.class" : $(SOURCE) 
	<<tempfile-Win32-Static_Release-java_files-SomeSortOfTypedefHelper_java.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\. 2> nul & copy /y SomeSortOfTypedefHelper.class classes\. > nul
<<

SOURCE="other.idl"

InputPath=other.idl

"otherJC.cpp" "otherJC.h" "otherJS.cpp" "otherJS.h" "SomeSortOfTypedefHelper.java" : $(SOURCE)  "simpleJC.h" "$(IDL2JNI_ROOT)\bin\idl2jni.exe" "SomeSortOfTypedefHelper.java"
	<<tempfile-Win32-Static_Release-idl2jni_files-other_idl.bat
	@echo off
	$(IDL2JNI_ROOT)\bin\idl2jni -DUSE_LOCAL -DIDL2JNI_VERSION=1.0 "$(InputPath)"
	echo Input: other
<<

SOURCE="otherTypeSupport.idl"

InputPath=otherTypeSupport.idl

"otherTypeSupportJC.cpp" "otherTypeSupportJC.h" "otherTypeSupportJS.cpp" "otherTypeSupportJS.h" : $(SOURCE)  "$(IDL2JNI_ROOT)\bin\idl2jni.exe" "SomeSortOfTypedefHelper.java"
	<<tempfile-Win32-Static_Release-idl2jni_files-otherTypeSupport_idl.bat
	@echo off
	$(IDL2JNI_ROOT)\bin\idl2jni -DUSE_LOCAL -DIDL2JNI_VERSION=1.0 "$(InputPath)"
	echo Input: otherTypeSupport
<<

SOURCE="simple.idl"

InputPath=simple.idl

"simple\_Local2LocalBase.java" "simple\_Local2TAOPeer.java" "simple\_Local3LocalBase.java" "simple\_Local3TAOPeer.java" "simple\_TestInterf2Stub.java" "simple\_TestInterf3Stub.java" "simple\_TestInterfStub.java" "simple\_TestLILocalBase.java" "simple\_TestLITAOPeer.java" "simple\ArrayBounds.java" "simple\EnumArrayHelper.java" "simple\EnumArrayHolder.java" "simple\EnumSeqHelper.java" "simple\EnumSeqHolder.java" "simple\Local2.java" "simple\Local2Helper.java" "simple\Local2Holder.java" "simple\Local2Operations.java" "simple\Local2SeqHelper.java" "simple\Local2SeqHolder.java" "simple\Local3.java" "simple\Local3Helper.java" "simple\Local3Holder.java" "simple\Local3Operations.java" "simple\LongSeqSeqHelper.java" "simple\LongSeqSeqHolder.java" "simple\LongSeqSeqSeqHelper.java" "simple\LongSeqSeqSeqHolder.java" "simple\SeqOfTypedefedLongHelper.java" "simple\SeqOfTypedefedLongHolder.java" "simple\StringSeqHelper.java" "simple\StringSeqHolder.java" "simple\StringSeqSeqHelper.java" "simple\StringSeqSeqHolder.java" "simple\StringSeqSeqSeqHelper.java" "simple\StringSeqSeqSeqHolder.java" "simple\StructWithObjref.java" "simple\StructWithObjrefHelper.java" "simple\StructWithObjrefHolder.java" "simple\TestArrayTypedef2Helper.java" "simple\TestArrayTypedefHelper.java" "simple\TestArrayTypedefHolder.java" "simple\TestConstBool.java" "simple\TestConstDouble.java" "simple\TestConstFloat.java" "simple\TestConstLong.java" "simple\TestConstString.java" "simple\TestConstTypedef.java" "simple\TestEnum.java" "simple\TestEnumHelper.java" "simple\TestEnumHolder.java" "simple\TestInterf.java" "simple\TestInterf2.java" "simple\TestInterf2Helper.java" "simple\TestInterf2Holder.java" "simple\TestInterf2Operations.java" "simple\TestInterf3.java" "simple\TestInterf3Helper.java" "simple\TestInterf3Holder.java" "simple\TestInterf3Operations.java" "simple\TestInterfHelper.java" "simple\TestInterfHolder.java" "simple\TestInterfOperations.java" "simple\TestLI.java" "simple\TestLIHelper.java" "simple\TestLIHolder.java" "simple\TestLIOperations.java" "simple\TestNestedStruct.java" "simple\TestNestedStructHelper.java" "simple\TestNestedStructHolder.java" "simple\TestSeqTypedefHelper.java" "simple\TestSeqTypedefHolder.java" "simple\TestStringArrayHelper.java" "simple\TestStringArrayHolder.java" "simple\TestStruct.java" "simple\TestStructArrayHelper.java" "simple\TestStructArrayHolder.java" "simple\TestStructHelper.java" "simple\TestStructHolder.java" "simple\TestStructSequenceHelper.java" "simple\TestStructSequenceHolder.java" "simple\TestStructWithEnum.java" "simple\TestStructWithEnumHelper.java" "simple\TestStructWithEnumHolder.java" "simple\TestTypedefHelper.java" "simple\TIMESTAMP_INVALID_NSEC.java" "simpleJC.cpp" "simpleJC.h" "simpleJS.h" : $(SOURCE)  "$(IDL2JNI_ROOT)\bin\idl2jni.exe" "SomeSortOfTypedefHelper.java"
	<<tempfile-Win32-Static_Release-idl2jni_files-simple_idl.bat
	@echo off
	$(IDL2JNI_ROOT)\bin\idl2jni -DUSE_LOCAL -DIDL2JNI_VERSION=1.0 "$(InputPath)"
	echo Input: simple
<<

!ENDIF


!ENDIF

GENERATED : "$(INTDIR)" "$(OUTDIR)" $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.simple.dep")
	@echo Using "Makefile.simple.dep"
!ELSE
	@echo Warning: cannot find "Makefile.simple.dep"
!ENDIF
!ENDIF

