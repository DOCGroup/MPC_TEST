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
!MESSAGE NMAKE /f "Makefile.csvw_C.mak" CFG="Win32 Debug"
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
INSTALLDIR=.
INTDIR=Debug\csvw_C\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\cdog.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_CONSOLE -f "Makefile.csvw_C.dep" "byion.cpp" "moop.cxx" "ploor.cpp" "qwaaa.c"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(INSTALLDIR)\cdog.pdb"
        -@del /f/q "$(INSTALLDIR)\cdog.exe"
        -@del /f/q "$(INSTALLDIR)\cdog.ilk"

"$(INTDIR)" :
    if not exist "Debug\$(NULL)" mkdir "Debug"
    if not exist "Debug\csvw_C\$(NULL)" mkdir "Debug\csvw_C"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /D _DEBUG /D WIN32 /D _CONSOLE  /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:console /debug /pdb:"$(INSTALLDIR)\cdog.pdb" /machine:I386 /out:"$(INSTALLDIR)\cdog.exe"
LINK32_OBJS= \
	"$(INTDIR)\byion.obj" \
	"$(INTDIR)\moop.obj" \
	"$(INTDIR)\ploor.obj" \
	"$(INTDIR)\qwaaa.obj"

"$(INSTALLDIR)\cdog.exe" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(INSTALLDIR)\cdog.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\cdog.exe.manifest" -outputresource:$@;1

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=Release
INSTALLDIR=Release
INTDIR=Release\csvw_C\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\cdog.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_CONSOLE -f "Makefile.csvw_C.dep" "byion.cpp" "moop.cxx" "ploor.cpp" "qwaaa.c"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(INSTALLDIR)\cdog.exe"
        -@del /f/q "$(INSTALLDIR)\cdog.ilk"

"$(INTDIR)" :
    if not exist "Release\$(NULL)" mkdir "Release"
    if not exist "Release\csvw_C\$(NULL)" mkdir "Release\csvw_C"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /D NDEBUG /D WIN32 /D _CONSOLE  /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:console  /machine:I386 /out:"$(INSTALLDIR)\cdog.exe"
LINK32_OBJS= \
	"$(INTDIR)\byion.obj" \
	"$(INTDIR)\moop.obj" \
	"$(INTDIR)\ploor.obj" \
	"$(INTDIR)\qwaaa.obj"

"$(INSTALLDIR)\cdog.exe" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(INSTALLDIR)\cdog.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\cdog.exe.manifest" -outputresource:$@;1

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=Static_Debug
INSTALLDIR=Static_Debug
INTDIR=Static_Debug\csvw_C\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\cdog.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_CONSOLE -f "Makefile.csvw_C.dep" "byion.cpp" "moop.cxx" "ploor.cpp" "qwaaa.c"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(INSTALLDIR)\cdog.pdb"
        -@del /f/q "$(INSTALLDIR)\cdog.exe"
        -@del /f/q "$(INSTALLDIR)\cdog.ilk"

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\csvw_C\$(NULL)" mkdir "Static_Debug\csvw_C"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /D _DEBUG /D WIN32 /D _CONSOLE  /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:console /debug /pdb:"$(INSTALLDIR)\cdog.pdb" /machine:I386 /out:"$(INSTALLDIR)\cdog.exe"
LINK32_OBJS= \
	"$(INTDIR)\byion.obj" \
	"$(INTDIR)\moop.obj" \
	"$(INTDIR)\ploor.obj" \
	"$(INTDIR)\qwaaa.obj"

"$(INSTALLDIR)\cdog.exe" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(INSTALLDIR)\cdog.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\cdog.exe.manifest" -outputresource:$@;1

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=Static_Release
INSTALLDIR=Static_Release
INTDIR=Static_Release\csvw_C\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\cdog.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_CONSOLE -f "Makefile.csvw_C.dep" "byion.cpp" "moop.cxx" "ploor.cpp" "qwaaa.c"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(INSTALLDIR)\cdog.exe"
        -@del /f/q "$(INSTALLDIR)\cdog.ilk"

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\csvw_C\$(NULL)" mkdir "Static_Release\csvw_C"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /D NDEBUG /D WIN32 /D _CONSOLE  /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:console  /machine:I386 /out:"$(INSTALLDIR)\cdog.exe"
LINK32_OBJS= \
	"$(INTDIR)\byion.obj" \
	"$(INTDIR)\moop.obj" \
	"$(INTDIR)\ploor.obj" \
	"$(INTDIR)\qwaaa.obj"

"$(INSTALLDIR)\cdog.exe" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(INSTALLDIR)\cdog.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\cdog.exe.manifest" -outputresource:$@;1

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
!IF EXISTS("Makefile.csvw_C.dep")
!INCLUDE "Makefile.csvw_C.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" 
SOURCE="byion.cpp"

"$(INTDIR)\byion.obj" : $(SOURCE)
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\byion.obj" $(SOURCE)

SOURCE="moop.cxx"

"$(INTDIR)\moop.obj" : $(SOURCE)
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\moop.obj" $(SOURCE)

SOURCE="ploor.cpp"

"$(INTDIR)\ploor.obj" : $(SOURCE)
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\ploor.obj" $(SOURCE)

SOURCE="qwaaa.c"

"$(INTDIR)\qwaaa.obj" : $(SOURCE)
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\qwaaa.obj" $(SOURCE)


!ENDIF

GENERATED : "$(INTDIR)" "$(OUTDIR)" $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.csvw_C.dep")
	@echo Using "Makefile.csvw_C.dep"
!ELSE
	@echo Warning: cannot find "Makefile.csvw_C.dep"
!ENDIF
!ENDIF

