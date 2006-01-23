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
!MESSAGE NMAKE /f "Makefile.CIAO_TargetManager_exec.mak" CFG="Win32 Debug"
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

GENERATED_DIRTY =

!IF  "$(CFG)" == "Win32 Debug"

OUTDIR=.
INTDIR=Debug\CIAO_TargetManager_exec\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\TargetManager_execd.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -f "Makefile.CIAO_TargetManager_exec.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\TargetManager_execd.lib"
        -@del /f/q "$(OUTDIR)\TargetManager_execd.exp"
        -@del /f/q "$(OUTDIR)\TargetManager_execd.ilk"
	-@del /f/q ".\TargetManager_execd.pdb"

"$(INTDIR)" :
    if not exist "Debug\$(NULL)" mkdir "Debug"
    if not exist "Debug\CIAO_TargetManager_exec\$(NULL)" mkdir "Debug\CIAO_TargetManager_exec"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/nologo /Ob0 /W3 /Gm /EHs /Zi /MDd /GR /Gy /Fd".\TargetManager_execd.pdb" /D _DEBUG /D WIN32 /D _WINDOWS /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\TargetManager_execd.lib"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

"$(OUTDIR)\TargetManager_execd.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\TargetManager_execd.lib.manifest" mt.exe -manifest "$(OUTDIR)\TargetManager_execd.lib.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=.
INTDIR=Release\CIAO_TargetManager_exec\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\TargetManager_exec.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -f "Makefile.CIAO_TargetManager_exec.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\TargetManager_exec.lib"
        -@del /f/q "$(OUTDIR)\TargetManager_exec.exp"
        -@del /f/q "$(OUTDIR)\TargetManager_exec.ilk"

"$(INTDIR)" :
    if not exist "Release\$(NULL)" mkdir "Release"
    if not exist "Release\CIAO_TargetManager_exec\$(NULL)" mkdir "Release\CIAO_TargetManager_exec"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/nologo /O2 /W3 /EHs /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\TargetManager_exec.lib"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

"$(OUTDIR)\TargetManager_exec.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\TargetManager_exec.lib.manifest" mt.exe -manifest "$(OUTDIR)\TargetManager_exec.lib.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=.
INTDIR=Static_Debug\CIAO_TargetManager_exec\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\TargetManager_execsd.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -f "Makefile.CIAO_TargetManager_exec.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\TargetManager_execsd.lib"
        -@del /f/q "$(OUTDIR)\TargetManager_execsd.exp"
        -@del /f/q "$(OUTDIR)\TargetManager_execsd.ilk"
	-@del /f/q ".\TargetManager_execsd.pdb"

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\CIAO_TargetManager_exec\$(NULL)" mkdir "Static_Debug\CIAO_TargetManager_exec"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/nologo /Ob0 /W3 /Gm /EHs /Zi /GR /Gy /MDd /Fd".\TargetManager_execsd.pdb" /D _DEBUG /D WIN32 /D _WINDOWS /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\TargetManager_execsd.lib"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

"$(OUTDIR)\TargetManager_execsd.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\TargetManager_execsd.lib.manifest" mt.exe -manifest "$(OUTDIR)\TargetManager_execsd.lib.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=.
INTDIR=Static_Release\CIAO_TargetManager_exec\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\TargetManager_execs.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -f "Makefile.CIAO_TargetManager_exec.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\TargetManager_execs.lib"
        -@del /f/q "$(OUTDIR)\TargetManager_execs.exp"
        -@del /f/q "$(OUTDIR)\TargetManager_execs.ilk"

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\CIAO_TargetManager_exec\$(NULL)" mkdir "Static_Release\CIAO_TargetManager_exec"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/nologo /O2 /W3 /EHs /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\TargetManager_execs.lib"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

"$(OUTDIR)\TargetManager_execs.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\TargetManager_execs.lib.manifest" mt.exe -manifest "$(OUTDIR)\TargetManager_execs.lib.manifest" -outputresource:$@;2

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
!IF EXISTS("Makefile.CIAO_TargetManager_exec.dep")
!INCLUDE "Makefile.CIAO_TargetManager_exec.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" 
SOURCE="foo.cpp"

"$(INTDIR)\foo.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\foo.obj" $(SOURCE)


!ENDIF

GENERATED : $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.CIAO_TargetManager_exec.dep")
	@echo Using "Makefile.CIAO_TargetManager_exec.dep"
!ELSE
	@echo Warning: cannot find "Makefile.CIAO_TargetManager_exec.dep"
!ENDIF
!ENDIF

