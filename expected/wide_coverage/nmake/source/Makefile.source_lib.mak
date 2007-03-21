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
!MESSAGE NMAKE /f "Makefile.source_lib.mak" CFG="Win32 Debug"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "Win32 Debug" (based on "Win32 (x86) Dynamic-Lynk Library")
!MESSAGE "Win32 Release" (based on "Win32 (x86) Dynamic-Lynk Library")
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
!IF EXISTS("$(DEPGEN_ROOT)/depgen.pl")
DEPGEN=perl $(DEPGEN_ROOT)/depgen.pl -i -t nmake
!ELSEIF EXISTS("$(ACE_ROOT)/bin/depgen.pl")
DEPGEN=perl $(ACE_ROOT)/bin/depgen.pl -i -t nmake
!ENDIF
!ENDIF

GENERATED_DIRTY = "cre\o.le\more_names.cpp" "cre\o.le\more_names.h" "names.cpp" "names.h" "TheCheat.cpp" "TheCheat.h" ".\bar.txt" ".\moop.hxx" ".\qwee.cxx" ".\qwee_T.C" ".\weer.inl"

!IF  "$(CFG)" == "Win32 Debug"

OUTDIR=..\lib
INTDIR=Static_Debug\source_lib\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\source_lib.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -I"." -D_DEBUG -DWIN32 -D_WINDOWS -DUSING_PCH -f "Makefile.source_lib.dep" "cre\o.le\more_names.cpp" "names.cpp" "qwee.cxx" "TheCheat.cpp" "source_lib_pch.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\source_lib.lib"
        -@del /f/q "$(OUTDIR)\source_lib.exp"
        -@del /f/q "$(OUTDIR)\source_lib.ilk"
	-@del /f/q "..\lib\source_lib.pdb"
        -@del /f/q "cre\o.le\more_names.cpp"
        -@del /f/q "cre\o.le\more_names.h"
        -@del /f/q "names.cpp"
        -@del /f/q "names.h"
        -@del /f/q "TheCheat.cpp"
        -@del /f/q "TheCheat.h"
        -@del /f/q ".\bar.txt"
        -@del /f/q ".\moop.hxx"
        -@del /f/q ".\qwee.cxx"
        -@del /f/q ".\qwee_T.C"
        -@del /f/q ".\weer.inl"

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\source_lib\$(NULL)" mkdir "Static_Debug\source_lib"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /MDd /GR /Gy /Fd"..\lib\source_lib.pdb" /I "." /D _DEBUG /D WIN32 /D _WINDOWS /FD /c
CPP_PCH=/D USING_PCH /Yu"source_lib_pch.h" /Fp"$(INTDIR)\source_lib_pch.pch"
CPP_PROJ=$(CPP_COMMON) $(CPP_PCH) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:"..\lib\source_lib.lib"
LINK32_OBJS= \
	"$(INTDIR)\source_lib_pch.obj" \
	"$(INTDIR)\cre\o.le\more_names.obj" \
	"$(INTDIR)\names.obj" \
	"$(INTDIR)\qwee.obj" \
	"$(INTDIR)\TheCheat.obj"

"$(OUTDIR)\source_lib.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\source_lib.lib.manifest" mt.exe -manifest "$(OUTDIR)\source_lib.lib.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=..\lib
INTDIR=Static_Release\source_lib\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\source_lib.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -I"." -DNDEBUG -DWIN32 -D_WINDOWS -DUSING_PCH -f "Makefile.source_lib.dep" "cre\o.le\more_names.cpp" "names.cpp" "qwee.cxx" "TheCheat.cpp" "source_lib_pch.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\source_lib.lib"
        -@del /f/q "$(OUTDIR)\source_lib.exp"
        -@del /f/q "$(OUTDIR)\source_lib.ilk"
        -@del /f/q "cre\o.le\more_names.cpp"
        -@del /f/q "cre\o.le\more_names.h"
        -@del /f/q "names.cpp"
        -@del /f/q "names.h"
        -@del /f/q "TheCheat.cpp"
        -@del /f/q "TheCheat.h"
        -@del /f/q ".\bar.txt"
        -@del /f/q ".\moop.hxx"
        -@del /f/q ".\qwee.cxx"
        -@del /f/q ".\qwee_T.C"
        -@del /f/q ".\weer.inl"

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\source_lib\$(NULL)" mkdir "Static_Release\source_lib"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /I "." /D NDEBUG /D WIN32 /D _WINDOWS /FD /c
CPP_PCH=/D USING_PCH /Yu"source_lib_pch.h" /Fp"$(INTDIR)\source_lib_pch.pch"
CPP_PROJ=$(CPP_COMMON) $(CPP_PCH) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:"..\lib\source_lib.lib"
LINK32_OBJS= \
	"$(INTDIR)\source_lib_pch.obj" \
	"$(INTDIR)\cre\o.le\more_names.obj" \
	"$(INTDIR)\names.obj" \
	"$(INTDIR)\qwee.obj" \
	"$(INTDIR)\TheCheat.obj"

"$(OUTDIR)\source_lib.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\source_lib.lib.manifest" mt.exe -manifest "$(OUTDIR)\source_lib.lib.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=..\lib
INTDIR=Static_Debug\source_lib\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\source_lib.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -I"." -D_DEBUG -DWIN32 -D_WINDOWS -DUSING_PCH -f "Makefile.source_lib.dep" "cre\o.le\more_names.cpp" "names.cpp" "qwee.cxx" "TheCheat.cpp" "source_lib_pch.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\source_lib.lib"
        -@del /f/q "$(OUTDIR)\source_lib.exp"
        -@del /f/q "$(OUTDIR)\source_lib.ilk"
	-@del /f/q "..\lib\source_lib.pdb"
        -@del /f/q "cre\o.le\more_names.cpp"
        -@del /f/q "cre\o.le\more_names.h"
        -@del /f/q "names.cpp"
        -@del /f/q "names.h"
        -@del /f/q "TheCheat.cpp"
        -@del /f/q "TheCheat.h"
        -@del /f/q ".\bar.txt"
        -@del /f/q ".\moop.hxx"
        -@del /f/q ".\qwee.cxx"
        -@del /f/q ".\qwee_T.C"
        -@del /f/q ".\weer.inl"

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\source_lib\$(NULL)" mkdir "Static_Debug\source_lib"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /GR /Gy /MDd /Fd"..\lib\source_lib.pdb" /I "." /D _DEBUG /D WIN32 /D _WINDOWS /FD /c
CPP_PCH=/D USING_PCH /Yu"source_lib_pch.h" /Fp"$(INTDIR)\source_lib_pch.pch"
CPP_PROJ=$(CPP_COMMON) $(CPP_PCH) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:"..\lib\source_lib.lib"
LINK32_OBJS= \
	"$(INTDIR)\source_lib_pch.obj" \
	"$(INTDIR)\cre\o.le\more_names.obj" \
	"$(INTDIR)\names.obj" \
	"$(INTDIR)\qwee.obj" \
	"$(INTDIR)\TheCheat.obj"

"$(OUTDIR)\source_lib.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\source_lib.lib.manifest" mt.exe -manifest "$(OUTDIR)\source_lib.lib.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=..\lib
INTDIR=Static_Release\source_lib\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\source_lib.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from the DOC Group using the following svn command:
	@echo svn co svn://svn.dre.vanderbilt.edu/DOC/ACE/trunk/ACE/bin Utils
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Utils.
!ELSE
	$(DEPGEN) -I"." -DNDEBUG -DWIN32 -D_WINDOWS -DUSING_PCH -f "Makefile.source_lib.dep" "cre\o.le\more_names.cpp" "names.cpp" "qwee.cxx" "TheCheat.cpp" "source_lib_pch.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\source_lib.lib"
        -@del /f/q "$(OUTDIR)\source_lib.exp"
        -@del /f/q "$(OUTDIR)\source_lib.ilk"
        -@del /f/q "cre\o.le\more_names.cpp"
        -@del /f/q "cre\o.le\more_names.h"
        -@del /f/q "names.cpp"
        -@del /f/q "names.h"
        -@del /f/q "TheCheat.cpp"
        -@del /f/q "TheCheat.h"
        -@del /f/q ".\bar.txt"
        -@del /f/q ".\moop.hxx"
        -@del /f/q ".\qwee.cxx"
        -@del /f/q ".\qwee_T.C"
        -@del /f/q ".\weer.inl"

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\source_lib\$(NULL)" mkdir "Static_Release\source_lib"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /I "." /D NDEBUG /D WIN32 /D _WINDOWS /FD /c
CPP_PCH=/D USING_PCH /Yu"source_lib_pch.h" /Fp"$(INTDIR)\source_lib_pch.pch"
CPP_PROJ=$(CPP_COMMON) $(CPP_PCH) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:"..\lib\source_lib.lib"
LINK32_OBJS= \
	"$(INTDIR)\source_lib_pch.obj" \
	"$(INTDIR)\cre\o.le\more_names.obj" \
	"$(INTDIR)\names.obj" \
	"$(INTDIR)\qwee.obj" \
	"$(INTDIR)\TheCheat.obj"

"$(OUTDIR)\source_lib.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\source_lib.lib.manifest" mt.exe -manifest "$(OUTDIR)\source_lib.lib.manifest" -outputresource:$@;2

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
!IF EXISTS("Makefile.source_lib.dep")
!INCLUDE "Makefile.source_lib.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" 
SOURCE="source_lib_pch.cpp"

!IF  "$(CFG)" == "Win32 Debug"

CPP_SWITCHES=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /MDd /GR /Gy /Fd"..\lib\source_lib.pdb" /I "." /D _DEBUG /D WIN32 /D _WINDOWS /D USING_PCH /Fp"$(INTDIR)\source_lib_pch.pch" /Yc"source_lib_pch.h" /FD /c

"$(INTDIR)\source_lib_pch.obj" "$(INTDIR)\source_lib_pch.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) /Fo"$(INTDIR)\source_lib_pch.obj" $(SOURCE)
<<

!ELSEIF  "$(CFG)" == "Win32 Release"

CPP_SWITCHES=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /I "." /D NDEBUG /D WIN32 /D _WINDOWS /D USING_PCH /Fp"$(INTDIR)\source_lib_pch.pch" /Yc"source_lib_pch.h" /FD /c

"$(INTDIR)\source_lib_pch.obj" "$(INTDIR)\source_lib_pch.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) /Fo"$(INTDIR)\source_lib_pch.obj" $(SOURCE)
<<

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

CPP_SWITCHES=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /GR /Gy /MDd /Fd"..\lib\source_lib.pdb" /I "." /D _DEBUG /D WIN32 /D _WINDOWS /D USING_PCH /Fp"$(INTDIR)\source_lib_pch.pch" /Yc"source_lib_pch.h" /FD /c

"$(INTDIR)\source_lib_pch.obj" "$(INTDIR)\source_lib_pch.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) /Fo"$(INTDIR)\source_lib_pch.obj" $(SOURCE)
<<

!ELSEIF  "$(CFG)" == "Win32 Static Release"

CPP_SWITCHES=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /I "." /D NDEBUG /D WIN32 /D _WINDOWS /D USING_PCH /Fp"$(INTDIR)\source_lib_pch.pch" /Yc"source_lib_pch.h" /FD /c

"$(INTDIR)\source_lib_pch.obj" "$(INTDIR)\source_lib_pch.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) /Fo"$(INTDIR)\source_lib_pch.obj" $(SOURCE)
<<

!ENDIF

SOURCE="cre\o.le\more_names.cpp"

"$(INTDIR)\cre\o.le\more_names.obj" : $(SOURCE) "$(INTDIR)"
	@if not exist "$(INTDIR)\cre\o.le\$(NULL)" mkdir "$(INTDIR)\cre\o.le\"
	$(CPP) $(CPP_PCH) $(CPP_COMMON) /Fo"$(INTDIR)\cre\o.le\more_names.obj" $(SOURCE)

SOURCE="names.cpp"

"$(INTDIR)\names.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PCH) $(CPP_COMMON) /Fo"$(INTDIR)\names.obj" $(SOURCE)

SOURCE="qwee.cxx"

"$(INTDIR)\qwee.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PCH) $(CPP_COMMON) /Fo"$(INTDIR)\qwee.obj" $(SOURCE)

SOURCE="TheCheat.cpp"

"$(INTDIR)\TheCheat.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PCH) $(CPP_COMMON) /Fo"$(INTDIR)\TheCheat.obj" $(SOURCE)

SOURCE="more_names.key"

InputPath=more_names.key

"cre\o.le\more_names.cpp" "cre\o.le\more_names.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	<<tempfile.bat
	@echo off
	PATH=%PATH%;..\lib
        if not exist cre\o.le mkdir cre\o.le
	..\bin\generator -o cre/o.le "$(InputPath)"
	echo cre\o.le\more_names.cpp and cre\o.le\more_names.h have been generated.
	echo #include "source_lib_pch.h" > temporary.src
	type "cre\o.le\more_names.cpp" >> temporary.src
        move /y temporary.src "cre\o.le\more_names.cpp"
<<

SOURCE="names.key"

InputPath=names.key

"names.cpp" "names.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)" "something"
	<<tempfile.bat
	@echo off
	PATH=%PATH%;..\lib
	..\bin\generator -n names "$(InputPath)"
	echo names.cpp and names.h have been generated.
	echo #include "source_lib_pch.h" > temporary.src
	type "names.cpp" >> temporary.src
        move /y temporary.src "names.cpp"
<<

SOURCE="TheCheat.r"

InputPath=TheCheat.r

"TheCheat.cpp" "TheCheat.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	<<tempfile.bat
	@echo off
	perl ..\bin\cppgen.pl  "$(InputPath)" -o "TheCheat.cpp" "TheCheat.h"
	echo #include "source_lib_pch.h" > temporary.src
	type "TheCheat.cpp" >> temporary.src
        move /y temporary.src "TheCheat.cpp"
<<

SOURCE="mondo\all.mondo"

InputPath=mondo\all.mondo

".\bar.txt" ".\moop.hxx" ".\qwee.cxx" ".\qwee_T.C" ".\weer.inl" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	<<tempfile.bat
	@echo off
        if not exist . mkdir .
	perl ..\mondo\mondo.pl -fake "$(InputPath)"
	echo #include "source_lib_pch.h" > temporary.src
	type ".\qwee.cxx" >> temporary.src
        move /y temporary.src ".\qwee.cxx"
<<


!ENDIF

GENERATED : $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.source_lib.dep")
	@echo Using "Makefile.source_lib.dep"
!ELSE
	@echo Warning: cannot find "Makefile.source_lib.dep"
!ENDIF
!ENDIF

