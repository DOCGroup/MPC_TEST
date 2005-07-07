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
!MESSAGE NMAKE /f "Makefile.fco.mak" CFG="Win32 Debug"
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

GENERATED_DIRTY = "zar_thatA.cpp" "zar_thatA.h" "zar_thatA.inl" "zar_thatB.cpp" "zar_thatB.h" "zar_thatB.inl" "zar_thatC.cpp" "zar_thisA.cpp" "zar_thisA.h" "zar_thisA.inl" "zar_thisB.cpp" "zar_thisB.h" "zar_thisB.inl" "zar_thisB_T.cpp" "zar_thisB_T.h" "zar_thisB_T.inl" "zar_thisC.cpp"

!IF  "$(CFG)" == "Win32 Debug"

OUTDIR=.
INTDIR=Debug\fco\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY)

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	-@rem
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\d.lib"
        -@del /f/q "$(OUTDIR)\d.exp"
        -@del /f/q "$(OUTDIR)\d.ilk"
        -@del /f/q "zar_thatA.cpp"
        -@del /f/q "zar_thatA.h"
        -@del /f/q "zar_thatA.inl"
        -@del /f/q "zar_thatB.cpp"
        -@del /f/q "zar_thatB.h"
        -@del /f/q "zar_thatB.inl"
        -@del /f/q "zar_thatC.cpp"
        -@del /f/q "zar_thisA.cpp"
        -@del /f/q "zar_thisA.h"
        -@del /f/q "zar_thisA.inl"
        -@del /f/q "zar_thisB.cpp"
        -@del /f/q "zar_thisB.h"
        -@del /f/q "zar_thisB.inl"
        -@del /f/q "zar_thisB_T.cpp"
        -@del /f/q "zar_thisB_T.h"
        -@del /f/q "zar_thisB_T.inl"
        -@del /f/q "zar_thisC.cpp"

"$(INTDIR)" :
    if not exist "Debug\$(NULL)" mkdir "Debug"
    if not exist "Debug\fco\$(NULL)" mkdir "Debug\fco"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /Ob0 /W3 /Gm /GX /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /D _DEBUG /D WIN32 /D _WINDOWS /Fo"$(INTDIR)\\" /FD /c

RSC=rc.exe


!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=.
INTDIR=Release\fco\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY)

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	-@rem
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "zar_thatA.cpp"
        -@del /f/q "zar_thatA.h"
        -@del /f/q "zar_thatA.inl"
        -@del /f/q "zar_thatB.cpp"
        -@del /f/q "zar_thatB.h"
        -@del /f/q "zar_thatB.inl"
        -@del /f/q "zar_thatC.cpp"
        -@del /f/q "zar_thisA.cpp"
        -@del /f/q "zar_thisA.h"
        -@del /f/q "zar_thisA.inl"
        -@del /f/q "zar_thisB.cpp"
        -@del /f/q "zar_thisB.h"
        -@del /f/q "zar_thisB.inl"
        -@del /f/q "zar_thisB_T.cpp"
        -@del /f/q "zar_thisB_T.h"
        -@del /f/q "zar_thisB_T.inl"
        -@del /f/q "zar_thisC.cpp"

"$(INTDIR)" :
    if not exist "Release\$(NULL)" mkdir "Release"
    if not exist "Release\fco\$(NULL)" mkdir "Release\fco"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /O2 /W3 /GX /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /Fo"$(INTDIR)\\" /FD /c

RSC=rc.exe


!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=Static_Debug
INTDIR=Static_Debug\fco\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY)

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	-@rem
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q ".\sd.pdb"
        -@del /f/q "zar_thatA.cpp"
        -@del /f/q "zar_thatA.h"
        -@del /f/q "zar_thatA.inl"
        -@del /f/q "zar_thatB.cpp"
        -@del /f/q "zar_thatB.h"
        -@del /f/q "zar_thatB.inl"
        -@del /f/q "zar_thatC.cpp"
        -@del /f/q "zar_thisA.cpp"
        -@del /f/q "zar_thisA.h"
        -@del /f/q "zar_thisA.inl"
        -@del /f/q "zar_thisB.cpp"
        -@del /f/q "zar_thisB.h"
        -@del /f/q "zar_thisB.inl"
        -@del /f/q "zar_thisB_T.cpp"
        -@del /f/q "zar_thisB_T.h"
        -@del /f/q "zar_thisB_T.inl"
        -@del /f/q "zar_thisC.cpp"

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\fco\$(NULL)" mkdir "Static_Debug\fco"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /Ob0 /W3 /Gm /GX /Zi /GR /Gy /MDd /Fd".\sd.pdb" /D _DEBUG /D WIN32 /D _WINDOWS /Fo"$(INTDIR)\\" /FD /c



!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=Static_Release
INTDIR=Static_Release\fco\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY)

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	-@rem
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "zar_thatA.cpp"
        -@del /f/q "zar_thatA.h"
        -@del /f/q "zar_thatA.inl"
        -@del /f/q "zar_thatB.cpp"
        -@del /f/q "zar_thatB.h"
        -@del /f/q "zar_thatB.inl"
        -@del /f/q "zar_thatC.cpp"
        -@del /f/q "zar_thisA.cpp"
        -@del /f/q "zar_thisA.h"
        -@del /f/q "zar_thisA.inl"
        -@del /f/q "zar_thisB.cpp"
        -@del /f/q "zar_thisB.h"
        -@del /f/q "zar_thisB.inl"
        -@del /f/q "zar_thisB_T.cpp"
        -@del /f/q "zar_thisB_T.h"
        -@del /f/q "zar_thisB_T.inl"
        -@del /f/q "zar_thisC.cpp"

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\fco\$(NULL)" mkdir "Static_Release\fco"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /O2 /W3 /GX /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /Fo"$(INTDIR)\\" /FD /c



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
!IF EXISTS("Makefile.fco.dep")
!INCLUDE "Makefile.fco.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" 
SOURCE="that.zar"

InputPath=that.zar

"zar_thatA.cpp" "zar_thatA.h" "zar_thatA.inl" "zar_thatB.cpp" "zar_thatB.h" "zar_thatB.inl" "zar_thatC.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	<<tempfile.bat
	@echo off
	perl ..\bin\exercise.pl -GA -Sc "$(InputPath)"
<<

SOURCE="this.zar"

InputPath=this.zar

"zar_thisA.cpp" "zar_thisA.h" "zar_thisA.inl" "zar_thisB.cpp" "zar_thisB.h" "zar_thisB.inl" "zar_thisB_T.cpp" "zar_thisB_T.h" "zar_thisB_T.inl" "zar_thisC.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	<<tempfile.bat
	@echo off
	perl ..\bin\exercise.pl -GA "$(InputPath)"
<<


!ENDIF

GENERATED : $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.fco.dep")
	@echo Using "Makefile.fco.dep"
!ELSE
	@echo Warning: cannot find "Makefile.fco.dep"
!ENDIF
!ENDIF

