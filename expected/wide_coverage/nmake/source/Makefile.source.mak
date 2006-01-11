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
!MESSAGE NMAKE /f "Makefile.source.mak" CFG="Win32 Debug"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE "Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "Win32 Static Debug" (based on "Win32 (x86) Console Application")
!MESSAGE "Win32 Static Release" (based on "Win32 (x86) Console Application")
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
DEPGEN=perl $(DEPGEN_ROOT)/depgen.pl -t nmake
!ELSEIF EXISTS("$(ACE_ROOT)/bin/depgen.pl")
DEPGEN=perl $(ACE_ROOT)/bin/depgen.pl -t nmake
!ENDIF
!ENDIF

GENERATED_DIRTY = "Foolish/foolish.txt"

!IF  "$(CFG)" == "Win32 Debug"

OUTDIR=.
INSTALLDIR=.
INTDIR=Debug\source\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\main_test.exe" __postbuild__

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -I"." -D_DEBUG -DWIN32 -D_CONSOLE -DMACRO_TEST -f "Makefile.source.dep" "exe\main.cpp" "exe\use_more_names\use_more_names.cpp" "exe\use_names\use_names.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(INSTALLDIR)\main_test.pdb"
        -@del /f/q "$(INSTALLDIR)\main_test.exe"
        -@del /f/q "$(INSTALLDIR)\main_test.ilk"
        -@del /f/q "Foolish/foolish.txt"

"$(INTDIR)" :
    if not exist "Debug\$(NULL)" mkdir "Debug"
    if not exist "Debug\source\$(NULL)" mkdir "Debug\source"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/nologo /Ob0 /W3 /Gm /EHs /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /I "." /D _DEBUG /D WIN32 /D _CONSOLE /D MACRO_TEST /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO source_libd.lib /libpath:"." /libpath:"..\lib" /nologo /version:1.000 /subsystem:console /debug /pdb:"$(INSTALLDIR)\main_test.pdb" /machine:I386 /out:"$(INSTALLDIR)\main_test.exe"
LINK32_OBJS= \
	"$(INTDIR)\exe\main.obj" \
	"$(INTDIR)\exe\use_more_names\use_more_names.obj" \
	"$(INTDIR)\exe\use_names\use_names.obj"

"$(INSTALLDIR)\main_test.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(INSTALLDIR)\main_test.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\main_test.exe.manifest" -outputresource:$@;1

__postbuild__:
	@echo main_test has been built

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=Release
INSTALLDIR=Release
INTDIR=Release\source\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\main_test.exe" __postbuild__

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -I"." -DNDEBUG -DWIN32 -D_CONSOLE -DMACRO_TEST -f "Makefile.source.dep" "exe\main.cpp" "exe\use_more_names\use_more_names.cpp" "exe\use_names\use_names.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(INSTALLDIR)\main_test.exe"
        -@del /f/q "$(INSTALLDIR)\main_test.ilk"
        -@del /f/q "Foolish/foolish.txt"

"$(INTDIR)" :
    if not exist "Release\$(NULL)" mkdir "Release"
    if not exist "Release\source\$(NULL)" mkdir "Release\source"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/nologo /O2 /W3 /EHs /MD /GR /I "." /D NDEBUG /D WIN32 /D _CONSOLE /D MACRO_TEST /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO source_lib.lib /libpath:"." /libpath:"..\lib" /nologo /version:1.000 /subsystem:console  /machine:I386 /out:"$(INSTALLDIR)\main_test.exe"
LINK32_OBJS= \
	"$(INTDIR)\exe\main.obj" \
	"$(INTDIR)\exe\use_more_names\use_more_names.obj" \
	"$(INTDIR)\exe\use_names\use_names.obj"

"$(INSTALLDIR)\main_test.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(INSTALLDIR)\main_test.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\main_test.exe.manifest" -outputresource:$@;1

__postbuild__:
	@echo main_test has been built

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=Static_Debug
INSTALLDIR=Static_Debug
INTDIR=Static_Debug\source\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\main_test.exe" __postbuild__

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -I"." -D_DEBUG -DWIN32 -D_CONSOLE -DMACRO_TEST -f "Makefile.source.dep" "exe\main.cpp" "exe\use_more_names\use_more_names.cpp" "exe\use_names\use_names.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(INSTALLDIR)\main_test.pdb"
        -@del /f/q "$(INSTALLDIR)\main_test.exe"
        -@del /f/q "$(INSTALLDIR)\main_test.ilk"
        -@del /f/q "Foolish/foolish.txt"

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\source\$(NULL)" mkdir "Static_Debug\source"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/nologo /Ob0 /W3 /Gm /EHs /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /I "." /D _DEBUG /D WIN32 /D _CONSOLE /D MACRO_TEST /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO source_libsd.lib /libpath:"." /libpath:"..\lib" /nologo /version:1.000 /subsystem:console /debug /pdb:"$(INSTALLDIR)\main_test.pdb" /machine:I386 /out:"$(INSTALLDIR)\main_test.exe"
LINK32_OBJS= \
	"$(INTDIR)\exe\main.obj" \
	"$(INTDIR)\exe\use_more_names\use_more_names.obj" \
	"$(INTDIR)\exe\use_names\use_names.obj"

"$(INSTALLDIR)\main_test.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(INSTALLDIR)\main_test.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\main_test.exe.manifest" -outputresource:$@;1

__postbuild__:
	@echo main_test has been built

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=Static_Release
INSTALLDIR=Static_Release
INTDIR=Static_Release\source\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\main_test.exe" __postbuild__

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -I"." -DNDEBUG -DWIN32 -D_CONSOLE -DMACRO_TEST -f "Makefile.source.dep" "exe\main.cpp" "exe\use_more_names\use_more_names.cpp" "exe\use_names\use_names.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(INSTALLDIR)\main_test.exe"
        -@del /f/q "$(INSTALLDIR)\main_test.ilk"
        -@del /f/q "Foolish/foolish.txt"

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\source\$(NULL)" mkdir "Static_Release\source"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/nologo /O2 /W3 /EHs /MD /GR /I "." /D NDEBUG /D WIN32 /D _CONSOLE /D MACRO_TEST /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO source_libs.lib /libpath:"." /libpath:"..\lib" /nologo /version:1.000 /subsystem:console  /machine:I386 /out:"$(INSTALLDIR)\main_test.exe"
LINK32_OBJS= \
	"$(INTDIR)\exe\main.obj" \
	"$(INTDIR)\exe\use_more_names\use_more_names.obj" \
	"$(INTDIR)\exe\use_names\use_names.obj"

"$(INSTALLDIR)\main_test.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(INSTALLDIR)\main_test.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\main_test.exe.manifest" -outputresource:$@;1

__postbuild__:
	@echo main_test has been built

!ENDIF

CLEAN :
	-@del /f/q $(LINK32_OBJS)
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
!IF EXISTS("Makefile.source.dep")
!INCLUDE "Makefile.source.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" 
SOURCE="exe\main.cpp"

"$(INTDIR)\exe\main.obj" : $(SOURCE) "$(INTDIR)"
	@if not exist "$(INTDIR)\exe\$(NULL)" mkdir "$(INTDIR)\exe"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\exe\main.obj" $(SOURCE)

SOURCE="exe\use_more_names\use_more_names.cpp"

"$(INTDIR)\exe\use_more_names\use_more_names.obj" : $(SOURCE) "$(INTDIR)"
	@if not exist "$(INTDIR)\exe\use_more_names\$(NULL)" mkdir "$(INTDIR)\exe\use_more_names"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\exe\use_more_names\use_more_names.obj" $(SOURCE)

SOURCE="exe\use_names\use_names.cpp"

"$(INTDIR)\exe\use_names\use_names.obj" : $(SOURCE) "$(INTDIR)"
	@if not exist "$(INTDIR)\exe\use_names\$(NULL)" mkdir "$(INTDIR)\exe\use_names"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\exe\use_names\use_names.obj" $(SOURCE)

SOURCE="Foolish/foolish.simple"

InputPath=Foolish/foolish.simple

"Foolish/foolish.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	<<tempfile.bat
	@echo off
	echo Generated from > "Foolish/foolish.txt" "$(InputPath)"
<<


!ENDIF

GENERATED : $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.source.dep")
	@echo Using "Makefile.source.dep"
!ELSE
	@echo Warning: cannot find "Makefile.source.dep"
!ENDIF
!ENDIF

