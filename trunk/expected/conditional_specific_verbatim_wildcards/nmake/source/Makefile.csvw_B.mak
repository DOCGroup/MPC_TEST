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
!MESSAGE NMAKE /f "Makefile.csvw_B.mak" CFG="Win32 Debug"
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

OUTDIR=bin
INTDIR=Debug\csvw_B\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "bin\csvw_Bd.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -DONLY_WINDOWS -f "Makefile.csvw_B.dep" "conditional\windows.cpp" "moop.cxx" "ploor.cpp" "qwaaa.c"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(OUTDIR)\csvw_Bd.pdb"
        -@del /f/q "bin\csvw_Bd.dll"
        -@del /f/q "$(OUTDIR)\csvw_Bd.lib"
        -@del /f/q "$(OUTDIR)\csvw_Bd.exp"
        -@del /f/q "$(OUTDIR)\csvw_Bd.ilk"

"$(INTDIR)" :
    if not exist "Debug\$(NULL)" mkdir "Debug"
    if not exist "Debug\csvw_B\$(NULL)" mkdir "Debug\csvw_B"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/nologo /Ob0 /W3 /Gm /EHs /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /D _DEBUG /D WIN32 /D _WINDOWS /D ONLY_WINDOWS /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll /debug /pdb:"bin\csvw_Bd.pdb" /machine:I386 /out:"bin\csvw_Bd.dll" /implib:"$(OUTDIR)\csvw_Bd.lib"
LINK32_OBJS= \
	"$(INTDIR)\conditional\windows.obj" \
	"$(INTDIR)\moop.obj" \
	"$(INTDIR)\ploor.obj" \
	"$(INTDIR)\qwaaa.obj"

"bin\csvw_Bd.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "bin\csvw_Bd.dll.manifest" mt.exe -manifest "bin\csvw_Bd.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=bin
INTDIR=Release\csvw_B\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "bin\csvw_B.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -DONLY_WINDOWS -f "Makefile.csvw_B.dep" "conditional\windows.cpp" "moop.cxx" "ploor.cpp" "qwaaa.c"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "bin\csvw_B.dll"
        -@del /f/q "$(OUTDIR)\csvw_B.lib"
        -@del /f/q "$(OUTDIR)\csvw_B.exp"
        -@del /f/q "$(OUTDIR)\csvw_B.ilk"

"$(INTDIR)" :
    if not exist "Release\$(NULL)" mkdir "Release"
    if not exist "Release\csvw_B\$(NULL)" mkdir "Release\csvw_B"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/nologo /O2 /W3 /EHs /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /D ONLY_WINDOWS /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll  /machine:I386 /out:"bin\csvw_B.dll" /implib:"$(OUTDIR)\csvw_B.lib"
LINK32_OBJS= \
	"$(INTDIR)\conditional\windows.obj" \
	"$(INTDIR)\moop.obj" \
	"$(INTDIR)\ploor.obj" \
	"$(INTDIR)\qwaaa.obj"

"bin\csvw_B.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "bin\csvw_B.dll.manifest" mt.exe -manifest "bin\csvw_B.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=lib
INTDIR=Static_Debug\csvw_B\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\csvw_Bsd.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -DONLY_WINDOWS -f "Makefile.csvw_B.dep" "conditional\windows.cpp" "moop.cxx" "ploor.cpp" "qwaaa.c"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\csvw_Bsd.lib"
        -@del /f/q "$(OUTDIR)\csvw_Bsd.exp"
        -@del /f/q "$(OUTDIR)\csvw_Bsd.ilk"
	-@del /f/q "lib\csvw_Bsd.pdb"

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\csvw_B\$(NULL)" mkdir "Static_Debug\csvw_B"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/nologo /Ob0 /W3 /Gm /EHs /Zi /GR /Gy /MDd /Fd"lib\csvw_Bsd.pdb" /D _DEBUG /D WIN32 /D _WINDOWS /D ONLY_WINDOWS /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:"lib\csvw_Bsd.lib"
LINK32_OBJS= \
	"$(INTDIR)\conditional\windows.obj" \
	"$(INTDIR)\moop.obj" \
	"$(INTDIR)\ploor.obj" \
	"$(INTDIR)\qwaaa.obj"

"$(OUTDIR)\csvw_Bsd.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\csvw_Bsd.lib.manifest" mt.exe -manifest "$(OUTDIR)\csvw_Bsd.lib.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=lib
INTDIR=Static_Release\csvw_B\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\csvw_Bs.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -DONLY_WINDOWS -f "Makefile.csvw_B.dep" "conditional\windows.cpp" "moop.cxx" "ploor.cpp" "qwaaa.c"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\csvw_Bs.lib"
        -@del /f/q "$(OUTDIR)\csvw_Bs.exp"
        -@del /f/q "$(OUTDIR)\csvw_Bs.ilk"

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\csvw_B\$(NULL)" mkdir "Static_Release\csvw_B"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/nologo /O2 /W3 /EHs /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /D ONLY_WINDOWS /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:"lib\csvw_Bs.lib"
LINK32_OBJS= \
	"$(INTDIR)\conditional\windows.obj" \
	"$(INTDIR)\moop.obj" \
	"$(INTDIR)\ploor.obj" \
	"$(INTDIR)\qwaaa.obj"

"$(OUTDIR)\csvw_Bs.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\csvw_Bs.lib.manifest" mt.exe -manifest "$(OUTDIR)\csvw_Bs.lib.manifest" -outputresource:$@;2

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
!IF EXISTS("Makefile.csvw_B.dep")
!INCLUDE "Makefile.csvw_B.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" 
SOURCE="conditional\windows.cpp"

"$(INTDIR)\conditional\windows.obj" : $(SOURCE) "$(INTDIR)"
	@if not exist "$(INTDIR)\conditional\$(NULL)" mkdir "$(INTDIR)\conditional"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\conditional\windows.obj" $(SOURCE)

SOURCE="moop.cxx"

"$(INTDIR)\moop.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\moop.obj" $(SOURCE)

SOURCE="ploor.cpp"

"$(INTDIR)\ploor.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\ploor.obj" $(SOURCE)

SOURCE="qwaaa.c"

"$(INTDIR)\qwaaa.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\qwaaa.obj" $(SOURCE)


!ENDIF

GENERATED : $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.csvw_B.dep")
	@echo Using "Makefile.csvw_B.dep"
!ELSE
	@echo Warning: cannot find "Makefile.csvw_B.dep"
!ENDIF
!ENDIF

