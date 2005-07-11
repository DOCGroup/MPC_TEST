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
!MESSAGE NMAKE /f "Makefile.generator_be.mak" CFG="Win32 Debug"
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
DEPGEN=perl $(DEPGEN_ROOT)/depgen.pl -t nmake
!ELSEIF EXISTS("$(ACE_ROOT)/bin/depgen.pl")
DEPGEN=perl $(ACE_ROOT)/bin/depgen.pl -t nmake
!ENDIF
!ENDIF

GENERATED_DIRTY =

!IF  "$(CFG)" == "Win32 Debug"

OUTDIR=..\lib
INTDIR=Debug\generator_be\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "..\lib\generator_bed.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -DGENERATOR_BE_BUILD_DLL -f "Makefile.generator_be.dep" "generator_be.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(OUTDIR)\generator_bed.pdb"
        -@del /f/q "..\lib\generator_bed.dll"
        -@del /f/q "$(OUTDIR)\generator_bed.lib"
        -@del /f/q "$(OUTDIR)\generator_bed.exp"
        -@del /f/q "$(OUTDIR)\generator_bed.ilk"

"$(INTDIR)" :
    if not exist "Debug\$(NULL)" mkdir "Debug"
    if not exist "Debug\generator_be\$(NULL)" mkdir "Debug\generator_be"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /Ob0 /W3 /Gm /EHs /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /D _DEBUG /D WIN32 /D _WINDOWS /D GENERATOR_BE_BUILD_DLL /Fo"$(INTDIR)\\" /FD /c

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /libpath:"..\lib" /nologo /version:1.000 /subsystem:windows /dll /debug /pdb:"..\lib\generator_bed.pdb" /machine:I386 /out:"..\lib\generator_bed.dll" /implib:"$(OUTDIR)\generator_bed.lib"
LINK32_OBJS= \
	"$(INTDIR)\generator_be.obj"

"..\lib\generator_bed.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=..\lib
INTDIR=Release\generator_be\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "..\lib\generator_be.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -DGENERATOR_BE_BUILD_DLL -f "Makefile.generator_be.dep" "generator_be.cpp"
!ENDIF

REALCLEAN : CLEAN

"$(INTDIR)" :
    if not exist "Release\$(NULL)" mkdir "Release"
    if not exist "Release\generator_be\$(NULL)" mkdir "Release\generator_be"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /O2 /W3 /EHs /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /D GENERATOR_BE_BUILD_DLL /Fo"$(INTDIR)\\" /FD /c

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /libpath:"..\lib" /nologo /version:1.000 /subsystem:windows /dll  /machine:I386 /out:"..\lib\generator_be.dll" /implib:"$(OUTDIR)\generator_be.lib"
LINK32_OBJS= \
	"$(INTDIR)\generator_be.obj"

"..\lib\generator_be.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=Static_Debug
INTDIR=Static_Debug\generator_be\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\generator_besd.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -DGENERATOR_BE_AS_STATIC_LIBS -f "Makefile.generator_be.dep" "generator_be.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "..\lib\generator_besd.pdb"

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\generator_be\$(NULL)" mkdir "Static_Debug\generator_be"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /Ob0 /W3 /Gm /EHs /Zi /GR /Gy /MDd /Fd"..\lib\generator_besd.pdb" /D _DEBUG /D WIN32 /D _WINDOWS /D GENERATOR_BE_AS_STATIC_LIBS /Fo"$(INTDIR)\\" /FD /c


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:"..\lib\generator_besd.lib"
LINK32_OBJS= \
	"$(INTDIR)\generator_be.obj"

"$(OUTDIR)\generator_besd.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=Static_Release
INTDIR=Static_Release\generator_be\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\generator_bes.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -DGENERATOR_BE_AS_STATIC_LIBS -f "Makefile.generator_be.dep" "generator_be.cpp"
!ENDIF

REALCLEAN : CLEAN

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\generator_be\$(NULL)" mkdir "Static_Release\generator_be"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /O2 /W3 /EHs /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /D GENERATOR_BE_AS_STATIC_LIBS /Fo"$(INTDIR)\\" /FD /c


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:"..\lib\generator_bes.lib"
LINK32_OBJS= \
	"$(INTDIR)\generator_be.obj"

"$(OUTDIR)\generator_bes.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

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
!IF EXISTS("Makefile.generator_be.dep")
!INCLUDE "Makefile.generator_be.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" 
SOURCE="generator_be.cpp"
"$(INTDIR)\generator_be.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF

GENERATED : $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.generator_be.dep")
	@echo Using "Makefile.generator_be.dep"
!ELSE
	@echo Warning: cannot find "Makefile.generator_be.dep"
!ENDIF
!ENDIF

