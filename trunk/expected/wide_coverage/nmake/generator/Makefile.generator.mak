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
!MESSAGE NMAKE /f "Makefile.generator.mak" CFG="Win32 Debug"
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
DEPGEN=perl $(DEPGEN_ROOT)/depgen.pl -i -t nmake
!ELSEIF EXISTS("$(ACE_ROOT)/bin/depgen.pl")
DEPGEN=perl $(ACE_ROOT)/bin/depgen.pl -i -t nmake
!ENDIF
!ENDIF

GENERATED_DIRTY =

!IF  "$(CFG)" == "Win32 Debug"

OUTDIR=.
INSTALLDIR=..\bin
INTDIR=Debug\generator\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)" "$(INSTALLDIR)\generator.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_CONSOLE -f "Makefile.generator.dep" "generator.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(INSTALLDIR)\generator.pdb"
        -@del /f/q "$(INSTALLDIR)\generator.exe"
        -@del /f/q "$(INSTALLDIR)\generator.ilk"

"$(INTDIR)" :
    if not exist "Debug\$(NULL)" mkdir "Debug"
    if not exist "Debug\generator\$(NULL)" mkdir "Debug\generator"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/nologo /Ob0 /W3 /Gm /EHs /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /D _DEBUG /D WIN32 /D _CONSOLE /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO generator_bed.lib /libpath:"." /libpath:"..\lib" /nologo /version:1.000 /subsystem:console /debug /pdb:"$(INSTALLDIR)\generator.pdb" /machine:I386 /out:"$(INSTALLDIR)\generator.exe"
LINK32_OBJS= \
	"$(INTDIR)\generator.res" \
	"$(INTDIR)\generator.obj"

"$(INSTALLDIR)\generator.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(INSTALLDIR)\generator.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\generator.exe.manifest" -outputresource:$@;1

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=Release
INSTALLDIR=..\bin
INTDIR=Release\generator\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)" "$(INSTALLDIR)\generator.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_CONSOLE -f "Makefile.generator.dep" "generator.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(INSTALLDIR)\generator.exe"
        -@del /f/q "$(INSTALLDIR)\generator.ilk"

"$(INTDIR)" :
    if not exist "Release\$(NULL)" mkdir "Release"
    if not exist "Release\generator\$(NULL)" mkdir "Release\generator"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/nologo /Ob0 /W3 /EHs /MD /GR /D NDEBUG /D WIN32 /D _CONSOLE /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO generator_be.lib /libpath:"." /libpath:"..\lib" /nologo /version:1.000 /subsystem:console  /machine:I386 /out:"$(INSTALLDIR)\generator.exe"
LINK32_OBJS= \
	"$(INTDIR)\generator.res" \
	"$(INTDIR)\generator.obj"

"$(INSTALLDIR)\generator.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(INSTALLDIR)\generator.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\generator.exe.manifest" -outputresource:$@;1

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=Static_Debug
INSTALLDIR=..\bin
INTDIR=Static_Debug\generator\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)" "$(INSTALLDIR)\generator.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_CONSOLE -DGENERATOR_BE_AS_STATIC_LIBS -f "Makefile.generator.dep" "generator.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(INSTALLDIR)\generator.pdb"
        -@del /f/q "$(INSTALLDIR)\generator.exe"
        -@del /f/q "$(INSTALLDIR)\generator.ilk"

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\generator\$(NULL)" mkdir "Static_Debug\generator"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/nologo /Ob0 /W3 /Gm /EHs /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /D _DEBUG /D WIN32 /D _CONSOLE /D GENERATOR_BE_AS_STATIC_LIBS /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO generator_besd.lib /libpath:"." /libpath:"..\lib" /nologo /version:1.000 /subsystem:console /debug /pdb:"$(INSTALLDIR)\generator.pdb" /machine:I386 /out:"$(INSTALLDIR)\generator.exe"
LINK32_OBJS= \
	"$(INTDIR)\generator.res" \
	"$(INTDIR)\generator.obj"

"$(INSTALLDIR)\generator.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(INSTALLDIR)\generator.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\generator.exe.manifest" -outputresource:$@;1

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=Static_Release
INSTALLDIR=..\bin
INTDIR=Static_Release\generator\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)" "$(INSTALLDIR)\generator.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_CONSOLE -DGENERATOR_BE_AS_STATIC_LIBS -f "Makefile.generator.dep" "generator.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(INSTALLDIR)\generator.exe"
        -@del /f/q "$(INSTALLDIR)\generator.ilk"

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\generator\$(NULL)" mkdir "Static_Release\generator"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/nologo /Ob0 /W3 /EHs /MD /GR /D NDEBUG /D WIN32 /D _CONSOLE /D GENERATOR_BE_AS_STATIC_LIBS /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO generator_bes.lib /libpath:"." /libpath:"..\lib" /nologo /version:1.000 /subsystem:console  /machine:I386 /out:"$(INSTALLDIR)\generator.exe"
LINK32_OBJS= \
	"$(INTDIR)\generator.res" \
	"$(INTDIR)\generator.obj"

"$(INSTALLDIR)\generator.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(INSTALLDIR)\generator.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\generator.exe.manifest" -outputresource:$@;1

!ENDIF

CLEAN :
	-@del /f/q $(LINK32_OBJS)
	-@del /f/s/q "$(INTDIR)"

"$(INSTALLDIR)" :
    if not exist "$(INSTALLDIR)\$(NULL)" mkdir "$(INSTALLDIR)"

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
!IF EXISTS("Makefile.generator.dep")
!INCLUDE "Makefile.generator.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" 
SOURCE="generator.cpp"

"$(INTDIR)\generator.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\generator.obj" $(SOURCE)

SOURCE="generator.rc"

"$(INTDIR)\generator.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\generator.res" /d NDEBUG $(SOURCE)



!ENDIF

GENERATED : $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.generator.dep")
	@echo Using "Makefile.generator.dep"
!ELSE
	@echo Warning: cannot find "Makefile.generator.dep"
!ENDIF
!ENDIF

