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
!MESSAGE NMAKE /f "Makefile.flex_bison.mak" CFG="Win32 Debug"
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

GENERATED_DIRTY = "bus.cpp" "bus.tab.c" "bus.tab.h"

!IF  "$(CFG)" == "Win32 Debug"

OUTDIR=.
INTDIR=Debug\flex_bison\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) ".\busd.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -f "Makefile.flex_bison.dep" "bus.cpp" "bus.tab.c"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(OUTDIR)\busd.pdb"
        -@del /f/q ".\busd.dll"
        -@del /f/q "$(OUTDIR)\busd.lib"
        -@del /f/q "$(OUTDIR)\busd.exp"
        -@del /f/q "$(OUTDIR)\busd.ilk"
        -@del /f/q "bus.cpp"
        -@del /f/q "bus.tab.c"
        -@del /f/q "bus.tab.h"

"$(INTDIR)" :
    if not exist "Debug\$(NULL)" mkdir "Debug"
    if not exist "Debug\flex_bison\$(NULL)" mkdir "Debug\flex_bison"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /MDd /GR /Gy /O /Fd"$(INTDIR)/" /D _DEBUG /D WIN32 /D _WINDOWS  /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll /debug /pdb:".\busd.pdb" /machine:I386 /out:".\busd.dll" /implib:"$(OUTDIR)\busd.lib"
LINK32_OBJS= \
	"$(INTDIR)\bus.obj" \
	"$(INTDIR)\bus.tab.obj"

".\busd.dll" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist ".\busd.dll.manifest" mt.exe -manifest ".\busd.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=.
INTDIR=Release\flex_bison\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) ".\bus.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -f "Makefile.flex_bison.dep" "bus.cpp" "bus.tab.c"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q ".\bus.dll"
        -@del /f/q "$(OUTDIR)\bus.lib"
        -@del /f/q "$(OUTDIR)\bus.exp"
        -@del /f/q "$(OUTDIR)\bus.ilk"
        -@del /f/q "bus.cpp"
        -@del /f/q "bus.tab.c"
        -@del /f/q "bus.tab.h"

"$(INTDIR)" :
    if not exist "Release\$(NULL)" mkdir "Release"
    if not exist "Release\flex_bison\$(NULL)" mkdir "Release\flex_bison"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /O /D NDEBUG /D WIN32 /D _WINDOWS  /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll  /machine:I386 /out:".\bus.dll" /implib:"$(OUTDIR)\bus.lib"
LINK32_OBJS= \
	"$(INTDIR)\bus.obj" \
	"$(INTDIR)\bus.tab.obj"

".\bus.dll" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist ".\bus.dll.manifest" mt.exe -manifest ".\bus.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=.
INTDIR=Static_Debug\flex_bison\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\bussd.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -f "Makefile.flex_bison.dep" "bus.cpp" "bus.tab.c"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\bussd.lib"
        -@del /f/q "$(OUTDIR)\bussd.exp"
        -@del /f/q "$(OUTDIR)\bussd.ilk"
	-@del /f/q ".\bussd.pdb"
        -@del /f/q "bus.cpp"
        -@del /f/q "bus.tab.c"
        -@del /f/q "bus.tab.h"

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\flex_bison\$(NULL)" mkdir "Static_Debug\flex_bison"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /GR /Gy /MDd /O /Fd".\bussd.pdb" /D _DEBUG /D WIN32 /D _WINDOWS  /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\bussd.lib"
LINK32_OBJS= \
	"$(INTDIR)\bus.obj" \
	"$(INTDIR)\bus.tab.obj"

"$(OUTDIR)\bussd.lib" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\bussd.lib.manifest" mt.exe -manifest "$(OUTDIR)\bussd.lib.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=.
INTDIR=Static_Release\flex_bison\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\buss.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -f "Makefile.flex_bison.dep" "bus.cpp" "bus.tab.c"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\buss.lib"
        -@del /f/q "$(OUTDIR)\buss.exp"
        -@del /f/q "$(OUTDIR)\buss.ilk"
        -@del /f/q "bus.cpp"
        -@del /f/q "bus.tab.c"
        -@del /f/q "bus.tab.h"

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\flex_bison\$(NULL)" mkdir "Static_Release\flex_bison"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /O /D NDEBUG /D WIN32 /D _WINDOWS  /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\buss.lib"
LINK32_OBJS= \
	"$(INTDIR)\bus.obj" \
	"$(INTDIR)\bus.tab.obj"

"$(OUTDIR)\buss.lib" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\buss.lib.manifest" mt.exe -manifest "$(OUTDIR)\buss.lib.manifest" -outputresource:$@;2

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
!IF EXISTS("Makefile.flex_bison.dep")
!INCLUDE "Makefile.flex_bison.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" 
SOURCE="bus.cpp"

"$(INTDIR)\bus.obj" : $(SOURCE)
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\bus.obj" $(SOURCE)

SOURCE="bus.tab.c"

"$(INTDIR)\bus.tab.obj" : $(SOURCE)
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\bus.tab.obj" $(SOURCE)

SOURCE="bus.l"

InputPath=bus.l

"bus.cpp" : $(SOURCE) 
	<<tempfile.bat
	@echo off
	flex -t "$(InputPath)" > "bus.cpp"
<<

SOURCE="bus.y"

InputPath=bus.y

"bus.tab.c" "bus.tab.h" : $(SOURCE) 
	<<tempfile.bat
	@echo off
	bison -d "$(InputPath)"
<<


!ENDIF

GENERATED : "$(INTDIR)" "$(OUTDIR)" $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.flex_bison.dep")
	@echo Using "Makefile.flex_bison.dep"
!ELSE
	@echo Warning: cannot find "Makefile.flex_bison.dep"
!ENDIF
!ENDIF

