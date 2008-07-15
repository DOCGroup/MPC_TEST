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

GENERATED_DIRTY = "SomeSortOfTypedefHelper.class" "otherJC.cpp" "otherJC.h" "otherJS.cpp" "otherJS.h" "SomeSortOfTypedefHelper.java" "simple\_Local2LocalBase.java" "simple\_Local3LocalBase.java" "simple\_TestInterf2Stub.java" "simple\_TestInterf3Stub.java" "simple\_TestInterfStub.java" "simple\_TestLILocalBase.java" "simple\ArrayBounds.java" "simple\EnumArrayHelper.java" "simple\EnumArrayHolder.java" "simple\EnumSeqHelper.java" "simple\EnumSeqHolder.java" "simple\Local2.java" "simple\Local2Helper.java" "simple\Local2Holder.java" "simple\Local2Operations.java" "simple\Local2SeqHelper.java" "simple\Local2SeqHolder.java" "simple\Local3.java" "simple\Local3Helper.java" "simple\Local3Holder.java" "simple\Local3Operations.java" "simple\LongSeqSeqHelper.java" "simple\LongSeqSeqHolder.java" "simple\LongSeqSeqSeqHelper.java" "simple\LongSeqSeqSeqHolder.java" "simple\SeqOfTypedefedLongHelper.java" "simple\SeqOfTypedefedLongHolder.java" "simple\StringSeqHelper.java" "simple\StringSeqHolder.java" "simple\StringSeqSeqHelper.java" "simple\StringSeqSeqHolder.java" "simple\StringSeqSeqSeqHelper.java" "simple\StringSeqSeqSeqHolder.java" "simple\StructWithObjref.java" "simple\StructWithObjrefHelper.java" "simple\StructWithObjrefHolder.java" "simple\TestArrayTypedef2Helper.java" "simple\TestArrayTypedefHelper.java" "simple\TestArrayTypedefHolder.java" "simple\TestConstBool.java" "simple\TestConstDouble.java" "simple\TestConstFloat.java" "simple\TestConstLong.java" "simple\TestConstString.java" "simple\TestConstTypedef.java" "simple\TestEnum.java" "simple\TestEnumHelper.java" "simple\TestEnumHolder.java" "simple\TestInterf.java" "simple\TestInterf2.java" "simple\TestInterf2Helper.java" "simple\TestInterf2Holder.java" "simple\TestInterf2Operations.java" "simple\TestInterf3.java" "simple\TestInterf3Helper.java" "simple\TestInterf3Holder.java" "simple\TestInterf3Operations.java" "simple\TestInterfHelper.java" "simple\TestInterfHolder.java" "simple\TestInterfOperations.java" "simple\TestLI.java" "simple\TestLIHelper.java" "simple\TestLIHolder.java" "simple\TestLIOperations.java" "simple\TestNestedStruct.java" "simple\TestNestedStructHelper.java" "simple\TestNestedStructHolder.java" "simple\TestSeqTypedefHelper.java" "simple\TestSeqTypedefHolder.java" "simple\TestStringArrayHelper.java" "simple\TestStringArrayHolder.java" "simple\TestStruct.java" "simple\TestStructArrayHelper.java" "simple\TestStructArrayHolder.java" "simple\TestStructHelper.java" "simple\TestStructHolder.java" "simple\TestStructSequenceHelper.java" "simple\TestStructSequenceHolder.java" "simple\TestStructWithEnum.java" "simple\TestStructWithEnumHelper.java" "simple\TestStructWithEnumHolder.java" "simple\TestTypedefHelper.java" "simple\TIMESTAMP_INVALID_NSEC.java" "simpleJC.cpp" "simpleJC.h" "simpleJS.h"

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
	$(DEPGEN) -I"something" -D_DEBUG -DWIN32 -D_WINDOWS -DUSING_PCH -f "Makefile.simple.dep" "otherJC.cpp" "otherJS.cpp" "simpleJC.cpp" "simple_pch.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(OUTDIR)\weird$$named.pdb"
        -@del /f/q ".\weird$$named.dll"
        -@del /f/q "$(OUTDIR)\weird$$named.lib"
        -@del /f/q "$(OUTDIR)\weird$$named.exp"
        -@del /f/q "$(OUTDIR)\weird$$named.ilk"
        -@del /f/q "SomeSortOfTypedefHelper.class"
        -@del /f/q "otherJC.cpp"
        -@del /f/q "otherJC.h"
        -@del /f/q "otherJS.cpp"
        -@del /f/q "otherJS.h"
        -@del /f/q "SomeSortOfTypedefHelper.java"
        -@del /f/q "simple\_Local2LocalBase.java"
        -@del /f/q "simple\_Local3LocalBase.java"
        -@del /f/q "simple\_TestInterf2Stub.java"
        -@del /f/q "simple\_TestInterf3Stub.java"
        -@del /f/q "simple\_TestInterfStub.java"
        -@del /f/q "simple\_TestLILocalBase.java"
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
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /I "something" /D _DEBUG /D WIN32 /D _WINDOWS /FD /c
CPP_PCH=/D USING_PCH /Yu"simple_pch.h" /Fp"$(INTDIR)\simple_pch.pch"
CPP_PROJ=$(CPP_COMMON) $(CPP_PCH) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO idl2jni_runtimed.lib /libpath:"." /libpath:"$(IDL2JNI_ROOT)\lib" /nologo /version:1.6653 /subsystem:windows /dll /debug /pdb:".\weird$$named.pdb" /machine:I386 /out:".\weird$$named.dll" /implib:"$(OUTDIR)\weird$$named.lib"
LINK32_OBJS= \
	"$(INTDIR)\simple_pch.obj" \
	"$(INTDIR)\otherJC.obj" \
	"$(INTDIR)\otherJS.obj" \
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
	$(DEPGEN) -I"something" -DNDEBUG -DWIN32 -D_WINDOWS -DUSING_PCH -f "Makefile.simple.dep" "otherJC.cpp" "otherJS.cpp" "simpleJC.cpp" "simple_pch.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q ".\weird$$name.dll"
        -@del /f/q "$(OUTDIR)\weird$$name.lib"
        -@del /f/q "$(OUTDIR)\weird$$name.exp"
        -@del /f/q "$(OUTDIR)\weird$$name.ilk"
        -@del /f/q "SomeSortOfTypedefHelper.class"
        -@del /f/q "otherJC.cpp"
        -@del /f/q "otherJC.h"
        -@del /f/q "otherJS.cpp"
        -@del /f/q "otherJS.h"
        -@del /f/q "SomeSortOfTypedefHelper.java"
        -@del /f/q "simple\_Local2LocalBase.java"
        -@del /f/q "simple\_Local3LocalBase.java"
        -@del /f/q "simple\_TestInterf2Stub.java"
        -@del /f/q "simple\_TestInterf3Stub.java"
        -@del /f/q "simple\_TestInterfStub.java"
        -@del /f/q "simple\_TestLILocalBase.java"
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
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /I "something" /D NDEBUG /D WIN32 /D _WINDOWS /FD /c
CPP_PCH=/D USING_PCH /Yu"simple_pch.h" /Fp"$(INTDIR)\simple_pch.pch"
CPP_PROJ=$(CPP_COMMON) $(CPP_PCH) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO idl2jni_runtime.lib /libpath:"." /libpath:"$(IDL2JNI_ROOT)\lib" /nologo /version:1.6653 /subsystem:windows /dll  /machine:I386 /out:".\weird$$name.dll" /implib:"$(OUTDIR)\weird$$name.lib"
LINK32_OBJS= \
	"$(INTDIR)\simple_pch.obj" \
	"$(INTDIR)\otherJC.obj" \
	"$(INTDIR)\otherJS.obj" \
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
	$(DEPGEN) -I"something" -D_DEBUG -DWIN32 -D_WINDOWS -DUSING_PCH -f "Makefile.simple.dep" "otherJC.cpp" "otherJS.cpp" "simpleJC.cpp" "simple_pch.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\weird$$namesd.lib"
        -@del /f/q "$(OUTDIR)\weird$$namesd.exp"
        -@del /f/q "$(OUTDIR)\weird$$namesd.ilk"
	-@del /f/q ".\weird$$namesd.pdb"
        -@del /f/q "SomeSortOfTypedefHelper.class"
        -@del /f/q "otherJC.cpp"
        -@del /f/q "otherJC.h"
        -@del /f/q "otherJS.cpp"
        -@del /f/q "otherJS.h"
        -@del /f/q "SomeSortOfTypedefHelper.java"
        -@del /f/q "simple\_Local2LocalBase.java"
        -@del /f/q "simple\_Local3LocalBase.java"
        -@del /f/q "simple\_TestInterf2Stub.java"
        -@del /f/q "simple\_TestInterf3Stub.java"
        -@del /f/q "simple\_TestInterfStub.java"
        -@del /f/q "simple\_TestLILocalBase.java"
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
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /GR /Gy /MDd /Fd".\weird$$namesd.pdb" /I "something" /D _DEBUG /D WIN32 /D _WINDOWS /FD /c
CPP_PCH=/D USING_PCH /Yu"simple_pch.h" /Fp"$(INTDIR)\simple_pch.pch"
CPP_PROJ=$(CPP_COMMON) $(CPP_PCH) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\weird$$namesd.lib"
LINK32_OBJS= \
	"$(INTDIR)\simple_pch.obj" \
	"$(INTDIR)\otherJC.obj" \
	"$(INTDIR)\otherJS.obj" \
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
	$(DEPGEN) -I"something" -DNDEBUG -DWIN32 -D_WINDOWS -DUSING_PCH -f "Makefile.simple.dep" "otherJC.cpp" "otherJS.cpp" "simpleJC.cpp" "simple_pch.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\weird$$names.lib"
        -@del /f/q "$(OUTDIR)\weird$$names.exp"
        -@del /f/q "$(OUTDIR)\weird$$names.ilk"
        -@del /f/q "SomeSortOfTypedefHelper.class"
        -@del /f/q "otherJC.cpp"
        -@del /f/q "otherJC.h"
        -@del /f/q "otherJS.cpp"
        -@del /f/q "otherJS.h"
        -@del /f/q "SomeSortOfTypedefHelper.java"
        -@del /f/q "simple\_Local2LocalBase.java"
        -@del /f/q "simple\_Local3LocalBase.java"
        -@del /f/q "simple\_TestInterf2Stub.java"
        -@del /f/q "simple\_TestInterf3Stub.java"
        -@del /f/q "simple\_TestInterfStub.java"
        -@del /f/q "simple\_TestLILocalBase.java"
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
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /I "something" /D NDEBUG /D WIN32 /D _WINDOWS /FD /c
CPP_PCH=/D USING_PCH /Yu"simple_pch.h" /Fp"$(INTDIR)\simple_pch.pch"
CPP_PROJ=$(CPP_COMMON) $(CPP_PCH) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\weird$$names.lib"
LINK32_OBJS= \
	"$(INTDIR)\simple_pch.obj" \
	"$(INTDIR)\otherJC.obj" \
	"$(INTDIR)\otherJS.obj" \
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

CPP_SWITCHES=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /I "something" /D _DEBUG /D WIN32 /D _WINDOWS /D USING_PCH /Fp"$(INTDIR)\simple_pch.pch" /Yc"simple_pch.h" /FD /c

"$(INTDIR)\simple_pch.obj" "$(INTDIR)\simple_pch.pch" : $(SOURCE)
	$(CPP) @<<
  $(CPP_SWITCHES) /Fo"$(INTDIR)\simple_pch.obj" $(SOURCE)
<<

!ELSEIF  "$(CFG)" == "Win32 Release"

CPP_SWITCHES=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /I "something" /D NDEBUG /D WIN32 /D _WINDOWS /D USING_PCH /Fp"$(INTDIR)\simple_pch.pch" /Yc"simple_pch.h" /FD /c

"$(INTDIR)\simple_pch.obj" "$(INTDIR)\simple_pch.pch" : $(SOURCE)
	$(CPP) @<<
  $(CPP_SWITCHES) /Fo"$(INTDIR)\simple_pch.obj" $(SOURCE)
<<

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

CPP_SWITCHES=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /GR /Gy /MDd /Fd".\weird$$namesd.pdb" /I "something" /D _DEBUG /D WIN32 /D _WINDOWS /D USING_PCH /Fp"$(INTDIR)\simple_pch.pch" /Yc"simple_pch.h" /FD /c

"$(INTDIR)\simple_pch.obj" "$(INTDIR)\simple_pch.pch" : $(SOURCE)
	$(CPP) @<<
  $(CPP_SWITCHES) /Fo"$(INTDIR)\simple_pch.obj" $(SOURCE)
<<

!ELSEIF  "$(CFG)" == "Win32 Static Release"

CPP_SWITCHES=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /I "something" /D NDEBUG /D WIN32 /D _WINDOWS /D USING_PCH /Fp"$(INTDIR)\simple_pch.pch" /Yc"simple_pch.h" /FD /c

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

SOURCE="simpleJC.cpp"

"$(INTDIR)\simpleJC.obj" : $(SOURCE)
	$(CPP) $(CPP_PCH) $(CPP_COMMON) /Fo"$(INTDIR)\simpleJC.obj" $(SOURCE)

SOURCE="SomeSortOfTypedefHelper.java"

InputPath=SomeSortOfTypedefHelper.java

"SomeSortOfTypedefHelper.class" : $(SOURCE) 
	<<tempfile.bat
	@echo off
	"$(JAVA_HOME)\bin\javac" -sourcepath . -classpath $(IDL2JNI_ROOT)/lib/i2jrt.jar "$(InputPath)"
	mkdir classes\. 2> nul & copy /y SomeSortOfTypedefHelper.class classes\. > nul
<<

SOURCE="other.idl"

InputPath=other.idl

"otherJC.cpp" "otherJC.h" "otherJS.cpp" "otherJS.h" "SomeSortOfTypedefHelper.java" : $(SOURCE)  "simpleJC.h" "$(IDL2JNI_ROOT)\bin\idl2jni.exe"
	<<tempfile.bat
	@echo off
	PATH=%PATH%;$(ACE_ROOT)\lib
	$(IDL2JNI_ROOT)\bin\idl2jni -DUSE_LOCAL -DIDL2JNI_VERSION=1.0 "$(InputPath)"
	echo Input: other
<<

SOURCE="simple.idl"

InputPath=simple.idl

"simple\_Local2LocalBase.java" "simple\_Local3LocalBase.java" "simple\_TestInterf2Stub.java" "simple\_TestInterf3Stub.java" "simple\_TestInterfStub.java" "simple\_TestLILocalBase.java" "simple\ArrayBounds.java" "simple\EnumArrayHelper.java" "simple\EnumArrayHolder.java" "simple\EnumSeqHelper.java" "simple\EnumSeqHolder.java" "simple\Local2.java" "simple\Local2Helper.java" "simple\Local2Holder.java" "simple\Local2Operations.java" "simple\Local2SeqHelper.java" "simple\Local2SeqHolder.java" "simple\Local3.java" "simple\Local3Helper.java" "simple\Local3Holder.java" "simple\Local3Operations.java" "simple\LongSeqSeqHelper.java" "simple\LongSeqSeqHolder.java" "simple\LongSeqSeqSeqHelper.java" "simple\LongSeqSeqSeqHolder.java" "simple\SeqOfTypedefedLongHelper.java" "simple\SeqOfTypedefedLongHolder.java" "simple\StringSeqHelper.java" "simple\StringSeqHolder.java" "simple\StringSeqSeqHelper.java" "simple\StringSeqSeqHolder.java" "simple\StringSeqSeqSeqHelper.java" "simple\StringSeqSeqSeqHolder.java" "simple\StructWithObjref.java" "simple\StructWithObjrefHelper.java" "simple\StructWithObjrefHolder.java" "simple\TestArrayTypedef2Helper.java" "simple\TestArrayTypedefHelper.java" "simple\TestArrayTypedefHolder.java" "simple\TestConstBool.java" "simple\TestConstDouble.java" "simple\TestConstFloat.java" "simple\TestConstLong.java" "simple\TestConstString.java" "simple\TestConstTypedef.java" "simple\TestEnum.java" "simple\TestEnumHelper.java" "simple\TestEnumHolder.java" "simple\TestInterf.java" "simple\TestInterf2.java" "simple\TestInterf2Helper.java" "simple\TestInterf2Holder.java" "simple\TestInterf2Operations.java" "simple\TestInterf3.java" "simple\TestInterf3Helper.java" "simple\TestInterf3Holder.java" "simple\TestInterf3Operations.java" "simple\TestInterfHelper.java" "simple\TestInterfHolder.java" "simple\TestInterfOperations.java" "simple\TestLI.java" "simple\TestLIHelper.java" "simple\TestLIHolder.java" "simple\TestLIOperations.java" "simple\TestNestedStruct.java" "simple\TestNestedStructHelper.java" "simple\TestNestedStructHolder.java" "simple\TestSeqTypedefHelper.java" "simple\TestSeqTypedefHolder.java" "simple\TestStringArrayHelper.java" "simple\TestStringArrayHolder.java" "simple\TestStruct.java" "simple\TestStructArrayHelper.java" "simple\TestStructArrayHolder.java" "simple\TestStructHelper.java" "simple\TestStructHolder.java" "simple\TestStructSequenceHelper.java" "simple\TestStructSequenceHolder.java" "simple\TestStructWithEnum.java" "simple\TestStructWithEnumHelper.java" "simple\TestStructWithEnumHolder.java" "simple\TestTypedefHelper.java" "simple\TIMESTAMP_INVALID_NSEC.java" "simpleJC.cpp" "simpleJC.h" "simpleJS.h" : $(SOURCE)  "$(IDL2JNI_ROOT)\bin\idl2jni.exe"
	<<tempfile.bat
	@echo off
	PATH=%PATH%;$(ACE_ROOT)\lib
	$(IDL2JNI_ROOT)\bin\idl2jni -DUSE_LOCAL -DIDL2JNI_VERSION=1.0 "$(InputPath)"
	echo Input: simple
<<


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

