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
!MESSAGE NMAKE /f "Makefile.foo_a.mak" CFG="Win32 Debug"
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

GENERATED_DIRTY =

!IF  "$(CFG)" == "Win32 Debug"

OUTDIR=.
INTDIR=Debug\foo_a\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) ".\foo_ad.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"bam" -D_DEBUG -DWIN32 -D_WINDOWS -f "Makefile.foo_a.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(OUTDIR)\foo_ad.pdb"
        -@del /f/q ".\foo_ad.dll"
        -@del /f/q "$(OUTDIR)\foo_ad.lib"
        -@del /f/q "$(OUTDIR)\foo_ad.exp"
        -@del /f/q "$(OUTDIR)\foo_ad.ilk"

"$(INTDIR)" :
    if not exist "Debug\$(NULL)" mkdir "Debug"
    if not exist "Debug\foo_a\$(NULL)" mkdir "Debug\foo_a"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 -g /Fd"$(INTDIR)/" /I "bam" /D _DEBUG /D WIN32 /D _WINDOWS /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /version:5.55 /subsystem:windows /dll /debug /pdb:".\foo_ad.pdb" /machine:I386 /out:".\foo_ad.dll" /implib:"$(OUTDIR)\foo_ad.lib"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

".\foo_ad.dll" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist ".\foo_ad.dll.manifest" mt.exe -manifest ".\foo_ad.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=.
INTDIR=Release\foo_a\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) ".\foo_a.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"bam" -DNDEBUG -DWIN32 -D_WINDOWS -f "Makefile.foo_a.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q ".\foo_a.dll"
        -@del /f/q "$(OUTDIR)\foo_a.lib"
        -@del /f/q "$(OUTDIR)\foo_a.exp"
        -@del /f/q "$(OUTDIR)\foo_a.ilk"

"$(INTDIR)" :
    if not exist "Release\$(NULL)" mkdir "Release"
    if not exist "Release\foo_a\$(NULL)" mkdir "Release\foo_a"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 -g /I "bam" /D NDEBUG /D WIN32 /D _WINDOWS /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /version:5.55 /subsystem:windows /dll  /machine:I386 /out:".\foo_a.dll" /implib:"$(OUTDIR)\foo_a.lib"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

".\foo_a.dll" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist ".\foo_a.dll.manifest" mt.exe -manifest ".\foo_a.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=.
INTDIR=Static_Debug\foo_a\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\foo_asd.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"bam" -D_DEBUG -DWIN32 -D_WINDOWS -f "Makefile.foo_a.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\foo_asd.lib"
        -@del /f/q "$(OUTDIR)\foo_asd.exp"
        -@del /f/q "$(OUTDIR)\foo_asd.ilk"
	-@del /f/q ".\foo_asd.pdb"

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\foo_a\$(NULL)" mkdir "Static_Debug\foo_a"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 -g /Fd".\foo_asd.pdb" /I "bam" /D _DEBUG /D WIN32 /D _WINDOWS /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\foo_asd.lib"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

"$(OUTDIR)\foo_asd.lib" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\foo_asd.lib.manifest" mt.exe -manifest "$(OUTDIR)\foo_asd.lib.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=.
INTDIR=Static_Release\foo_a\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\foo_as.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"bam" -DNDEBUG -DWIN32 -D_WINDOWS -f "Makefile.foo_a.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\foo_as.lib"
        -@del /f/q "$(OUTDIR)\foo_as.exp"
        -@del /f/q "$(OUTDIR)\foo_as.ilk"

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\foo_a\$(NULL)" mkdir "Static_Release\foo_a"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 -g /I "bam" /D NDEBUG /D WIN32 /D _WINDOWS /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\foo_as.lib"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

"$(OUTDIR)\foo_as.lib" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\foo_as.lib.manifest" mt.exe -manifest "$(OUTDIR)\foo_as.lib.manifest" -outputresource:$@;2

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
!IF EXISTS("Makefile.foo_a.dep")
!INCLUDE "Makefile.foo_a.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" 
SOURCE="foo.cpp"

"$(INTDIR)\foo.obj" : $(SOURCE)
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\foo.obj" $(SOURCE)


!ENDIF

GENERATED : "$(INTDIR)" "$(OUTDIR)" $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.foo_a.dep")
	@echo Using "Makefile.foo_a.dep"
!ELSE
	@echo Warning: cannot find "Makefile.foo_a.dep"
!ENDIF
!ENDIF

