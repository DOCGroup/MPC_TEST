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
!MESSAGE NMAKE /f "Makefile.src.mak" CFG="Win32 Debug"
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

GENERATED_DIRTY = "fire.crap.cpp" "fire.crap.h" "fire.crap.r"

!IF  "$(CFG)" == "Win32 Debug"

OUTDIR=.
INTDIR=Debug\src\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) ".\srcd.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -f "Makefile.src.dep" "fire.crap.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(OUTDIR)\srcd.pdb"
        -@del /f/q ".\srcd.dll"
        -@del /f/q "$(OUTDIR)\srcd.lib"
        -@del /f/q "$(OUTDIR)\srcd.exp"
        -@del /f/q "$(OUTDIR)\srcd.ilk"
        -@del /f/q "fire.crap.cpp"
        -@del /f/q "fire.crap.h"
        -@del /f/q "fire.crap.r"

"$(INTDIR)" :
    if not exist "Debug\$(NULL)" mkdir "Debug"
    if not exist "Debug\src\$(NULL)" mkdir "Debug\src"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /D _DEBUG /D WIN32 /D _WINDOWS  /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll /debug /pdb:".\srcd.pdb" /machine:I386 /out:".\srcd.dll" /implib:"$(OUTDIR)\srcd.lib"
LINK32_OBJS= \
	"$(INTDIR)\fire.crap.obj"

".\srcd.dll" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist ".\srcd.dll.manifest" mt.exe -manifest ".\srcd.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=.
INTDIR=Release\src\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) ".\src.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -f "Makefile.src.dep" "fire.crap.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q ".\src.dll"
        -@del /f/q "$(OUTDIR)\src.lib"
        -@del /f/q "$(OUTDIR)\src.exp"
        -@del /f/q "$(OUTDIR)\src.ilk"
        -@del /f/q "fire.crap.cpp"
        -@del /f/q "fire.crap.h"
        -@del /f/q "fire.crap.r"

"$(INTDIR)" :
    if not exist "Release\$(NULL)" mkdir "Release"
    if not exist "Release\src\$(NULL)" mkdir "Release\src"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS  /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll  /machine:I386 /out:".\src.dll" /implib:"$(OUTDIR)\src.lib"
LINK32_OBJS= \
	"$(INTDIR)\fire.crap.obj"

".\src.dll" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist ".\src.dll.manifest" mt.exe -manifest ".\src.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=.
INTDIR=Static_Debug\src\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\srcsd.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -f "Makefile.src.dep" "fire.crap.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\srcsd.lib"
        -@del /f/q "$(OUTDIR)\srcsd.exp"
        -@del /f/q "$(OUTDIR)\srcsd.ilk"
	-@del /f/q ".\srcsd.pdb"
        -@del /f/q "fire.crap.cpp"
        -@del /f/q "fire.crap.h"
        -@del /f/q "fire.crap.r"

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\src\$(NULL)" mkdir "Static_Debug\src"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /GR /Gy /MDd /Fd".\srcsd.pdb" /D _DEBUG /D WIN32 /D _WINDOWS  /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\srcsd.lib"
LINK32_OBJS= \
	"$(INTDIR)\fire.crap.obj"

"$(OUTDIR)\srcsd.lib" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\srcsd.lib.manifest" mt.exe -manifest "$(OUTDIR)\srcsd.lib.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=.
INTDIR=Static_Release\src\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\srcs.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -f "Makefile.src.dep" "fire.crap.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\srcs.lib"
        -@del /f/q "$(OUTDIR)\srcs.exp"
        -@del /f/q "$(OUTDIR)\srcs.ilk"
        -@del /f/q "fire.crap.cpp"
        -@del /f/q "fire.crap.h"
        -@del /f/q "fire.crap.r"

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\src\$(NULL)" mkdir "Static_Release\src"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS  /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\srcs.lib"
LINK32_OBJS= \
	"$(INTDIR)\fire.crap.obj"

"$(OUTDIR)\srcs.lib" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\srcs.lib.manifest" mt.exe -manifest "$(OUTDIR)\srcs.lib.manifest" -outputresource:$@;2

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
!IF EXISTS("Makefile.src.dep")
!INCLUDE "Makefile.src.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" 
SOURCE="fire.crap.cpp"

"$(INTDIR)\fire.crap.obj" : $(SOURCE)
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\fire.crap.obj" $(SOURCE)

!IF  "$(CFG)" == "Win32 Debug"
SOURCE="fire.crap.r"

InputPath=fire.crap.r

"fire.crap.cpp" "fire.crap.h" : $(SOURCE)  "..\bin\cppgen.pl"
	<<tempfile.bat
	@echo off
	perl ..\bin\cppgen.pl  "$(InputPath)" -o "fire.crap.cpp" "fire.crap.h"
<<

SOURCE="fire.ts"

InputPath=fire.ts

"fire.crap.r" : $(SOURCE) 
	<<tempfile.bat
	@echo off
	echo  "$(InputPath)" > "fire.crap.r"
<<

!ELSEIF  "$(CFG)" == "Win32 Release"
SOURCE="fire.crap.r"

InputPath=fire.crap.r

"fire.crap.cpp" "fire.crap.h" : $(SOURCE)  "..\bin\cppgen.pl"
	<<tempfile.bat
	@echo off
	perl ..\bin\cppgen.pl  "$(InputPath)" -o "fire.crap.cpp" "fire.crap.h"
<<

SOURCE="fire.ts"

InputPath=fire.ts

"fire.crap.r" : $(SOURCE) 
	<<tempfile.bat
	@echo off
	echo  "$(InputPath)" > "fire.crap.r"
<<

!ELSEIF  "$(CFG)" == "Win32 Static Debug"
SOURCE="fire.crap.r"

InputPath=fire.crap.r

"fire.crap.cpp" "fire.crap.h" : $(SOURCE)  "..\bin\cppgen.pl"
	<<tempfile.bat
	@echo off
	perl ..\bin\cppgen.pl  "$(InputPath)" -o "fire.crap.cpp" "fire.crap.h"
<<

SOURCE="fire.ts"

InputPath=fire.ts

"fire.crap.r" : $(SOURCE) 
	<<tempfile.bat
	@echo off
	echo  "$(InputPath)" > "fire.crap.r"
<<

!ELSEIF  "$(CFG)" == "Win32 Static Release"
SOURCE="fire.crap.r"

InputPath=fire.crap.r

"fire.crap.cpp" "fire.crap.h" : $(SOURCE)  "..\bin\cppgen.pl"
	<<tempfile.bat
	@echo off
	perl ..\bin\cppgen.pl  "$(InputPath)" -o "fire.crap.cpp" "fire.crap.h"
<<

SOURCE="fire.ts"

InputPath=fire.ts

"fire.crap.r" : $(SOURCE) 
	<<tempfile.bat
	@echo off
	echo  "$(InputPath)" > "fire.crap.r"
<<

!ENDIF


!ENDIF

GENERATED : "$(INTDIR)" "$(OUTDIR)" $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.src.dep")
	@echo Using "Makefile.src.dep"
!ELSE
	@echo Warning: cannot find "Makefile.src.dep"
!ENDIF
!ENDIF

