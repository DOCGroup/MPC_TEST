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
!MESSAGE NMAKE /f "Makefile.grouping_G.mak" CFG="Win32 Debug"
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

GENERATED_DIRTY = "clown.cpp" "clown.h"

!IF  "$(CFG)" == "Win32 Debug"

OUTDIR=.
INSTALLDIR=.
INTDIR=Debug\grouping_G\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\G.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_CONSOLE -f "Makefile.grouping_G.dep" "alternate\foo.cpp" "clown.cpp" "other.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(INSTALLDIR)\G.pdb"
        -@del /f/q "$(INSTALLDIR)\G.exe"
        -@del /f/q "$(INSTALLDIR)\G.ilk"
        -@del /f/q "clown.cpp"
        -@del /f/q "clown.h"

"$(INTDIR)" :
    if not exist "Debug\$(NULL)" mkdir "Debug"
    if not exist "Debug\grouping_G\$(NULL)" mkdir "Debug\grouping_G"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /Ob0 /W3 /Gm /EHs /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /D _DEBUG /D WIN32 /D _CONSOLE /Fo"$(INTDIR)\\" /FD /c

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:console /debug /pdb:"$(INSTALLDIR)\G.pdb" /machine:I386 /out:"$(INSTALLDIR)\G.exe"
LINK32_OBJS= \
	"$(INTDIR)\alternate\foo.obj" \
	"$(INTDIR)\clown.obj" \
	"$(INTDIR)\other.obj"

"$(INSTALLDIR)\G.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=Release
INSTALLDIR=Release
INTDIR=Release\grouping_G\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\G.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_CONSOLE -f "Makefile.grouping_G.dep" "alternate\foo.cpp" "clown.cpp" "other.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(INSTALLDIR)\G.exe"
        -@del /f/q "$(INSTALLDIR)\G.ilk"
        -@del /f/q "clown.cpp"
        -@del /f/q "clown.h"

"$(INTDIR)" :
    if not exist "Release\$(NULL)" mkdir "Release"
    if not exist "Release\grouping_G\$(NULL)" mkdir "Release\grouping_G"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /O2 /W3 /EHs /MD /GR /D NDEBUG /D WIN32 /D _CONSOLE /Fo"$(INTDIR)\\" /FD /c

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:console  /machine:I386 /out:"$(INSTALLDIR)\G.exe"
LINK32_OBJS= \
	"$(INTDIR)\alternate\foo.obj" \
	"$(INTDIR)\clown.obj" \
	"$(INTDIR)\other.obj"

"$(INSTALLDIR)\G.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=Static_Debug
INSTALLDIR=Static_Debug
INTDIR=Static_Debug\grouping_G\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\G.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_CONSOLE -f "Makefile.grouping_G.dep" "alternate\foo.cpp" "clown.cpp" "other.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(INSTALLDIR)\G.pdb"
        -@del /f/q "$(INSTALLDIR)\G.exe"
        -@del /f/q "$(INSTALLDIR)\G.ilk"
        -@del /f/q "clown.cpp"
        -@del /f/q "clown.h"

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\grouping_G\$(NULL)" mkdir "Static_Debug\grouping_G"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /Ob0 /W3 /Gm /EHs /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /D _DEBUG /D WIN32 /D _CONSOLE /Fo"$(INTDIR)\\" /FD /c

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:console /debug /pdb:"$(INSTALLDIR)\G.pdb" /machine:I386 /out:"$(INSTALLDIR)\G.exe"
LINK32_OBJS= \
	"$(INTDIR)\alternate\foo.obj" \
	"$(INTDIR)\clown.obj" \
	"$(INTDIR)\other.obj"

"$(INSTALLDIR)\G.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=Static_Release
INSTALLDIR=Static_Release
INTDIR=Static_Release\grouping_G\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\G.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_CONSOLE -f "Makefile.grouping_G.dep" "alternate\foo.cpp" "clown.cpp" "other.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(INSTALLDIR)\G.exe"
        -@del /f/q "$(INSTALLDIR)\G.ilk"
        -@del /f/q "clown.cpp"
        -@del /f/q "clown.h"

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\grouping_G\$(NULL)" mkdir "Static_Release\grouping_G"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /O2 /W3 /EHs /MD /GR /D NDEBUG /D WIN32 /D _CONSOLE /Fo"$(INTDIR)\\" /FD /c

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:console  /machine:I386 /out:"$(INSTALLDIR)\G.exe"
LINK32_OBJS= \
	"$(INTDIR)\alternate\foo.obj" \
	"$(INTDIR)\clown.obj" \
	"$(INTDIR)\other.obj"

"$(INSTALLDIR)\G.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("Makefile.grouping_G.dep")
!INCLUDE "Makefile.grouping_G.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" 
SOURCE="alternate\foo.cpp"
!IF  "$(CFG)" == "Win32 Debug"

"$(INTDIR)\alternate\foo.obj" : $(SOURCE) "$(INTDIR)"
        @if not exist "$(INTDIR)\alternate\$(NULL)" mkdir "$(INTDIR)\alternate"
	$(CPP) @<<
	/nologo /Ob0 /W3 /Gm /EHs /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /D _DEBUG /D WIN32 /D _CONSOLE /FD /c /Fo"$(INTDIR)\alternate\foo.obj" $(SOURCE)
<<
!ELSEIF  "$(CFG)" == "Win32 Release"

"$(INTDIR)\alternate\foo.obj" : $(SOURCE) "$(INTDIR)"
        @if not exist "$(INTDIR)\alternate\$(NULL)" mkdir "$(INTDIR)\alternate"
	$(CPP) @<<
	/nologo /O2 /W3 /EHs /MD /GR /D NDEBUG /D WIN32 /D _CONSOLE /FD /c /Fo"$(INTDIR)\alternate\foo.obj" $(SOURCE)
<<
!ELSEIF  "$(CFG)" == "Win32 Static Debug"

"$(INTDIR)\alternate\foo.obj" : $(SOURCE) "$(INTDIR)"
        @if not exist "$(INTDIR)\alternate\$(NULL)" mkdir "$(INTDIR)\alternate"
	$(CPP) @<<
	/nologo /Ob0 /W3 /Gm /EHs /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /D _DEBUG /D WIN32 /D _CONSOLE /FD /c /Fo"$(INTDIR)\alternate\foo.obj" $(SOURCE)
<<
!ELSEIF  "$(CFG)" == "Win32 Static Release"

"$(INTDIR)\alternate\foo.obj" : $(SOURCE) "$(INTDIR)"
        @if not exist "$(INTDIR)\alternate\$(NULL)" mkdir "$(INTDIR)\alternate"
	$(CPP) @<<
	/nologo /O2 /W3 /EHs /MD /GR /D NDEBUG /D WIN32 /D _CONSOLE /FD /c /Fo"$(INTDIR)\alternate\foo.obj" $(SOURCE)
<<
!ENDIF

SOURCE="clown.cpp"
"$(INTDIR)\clown.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)

SOURCE="other.cpp"
"$(INTDIR)\other.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)

SOURCE="clown.r"

InputPath=clown.r

"clown.cpp" "clown.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	<<tempfile.bat
	@echo off
	perl ..\bin\cppgen.pl  -o "clown.cpp" "clown.h" "$(InputPath)"
<<


!ENDIF

GENERATED : $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.grouping_G.dep")
	@echo Using "Makefile.grouping_G.dep"
!ELSE
	@echo Warning: cannot find "Makefile.grouping_G.dep"
!ENDIF
!ENDIF

