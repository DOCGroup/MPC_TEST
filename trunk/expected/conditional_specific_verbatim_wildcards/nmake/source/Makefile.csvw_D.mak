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
!MESSAGE NMAKE /f "Makefile.csvw_D.mak" CFG="Win32 Debug"
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
INTDIR=Debug\csvw_D\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "bin\csvw_Dd.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -DFAIL_IF_NOT_DEFINED -f "Makefile.csvw_D.dep" "conditional\every.cpp" "moop.cxx" "qwaaa.c"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(OUTDIR)\csvw_Dd.pdb"
        -@del /f/q "bin\csvw_Dd.dll"
        -@del /f/q "$(OUTDIR)\csvw_Dd.lib"
        -@del /f/q "$(OUTDIR)\csvw_Dd.exp"
        -@del /f/q "$(OUTDIR)\csvw_Dd.ilk"

"$(INTDIR)" :
    if not exist "Debug\$(NULL)" mkdir "Debug"
    if not exist "Debug\csvw_D\$(NULL)" mkdir "Debug\csvw_D"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /Ob0 /W3 /Gm /EHs /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /D _DEBUG /D WIN32 /D _WINDOWS /D FAIL_IF_NOT_DEFINED /Fo"$(INTDIR)\\" /FD /c

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll /debug /pdb:"bin\csvw_Dd.pdb" /machine:I386 /out:"bin\csvw_Dd.dll" /implib:"$(OUTDIR)\csvw_Dd.lib"
LINK32_OBJS= \
	"$(INTDIR)\conditional\every.obj" \
	"$(INTDIR)\moop.obj" \
	"$(INTDIR)\qwaaa.obj"

"bin\csvw_Dd.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=bin
INTDIR=Release\csvw_D\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "bin\csvw_D.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -DFAIL_IF_NOT_DEFINED -f "Makefile.csvw_D.dep" "conditional\every.cpp" "moop.cxx" "qwaaa.c"
!ENDIF

REALCLEAN : CLEAN

"$(INTDIR)" :
    if not exist "Release\$(NULL)" mkdir "Release"
    if not exist "Release\csvw_D\$(NULL)" mkdir "Release\csvw_D"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /O2 /W3 /EHs /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /D FAIL_IF_NOT_DEFINED /Fo"$(INTDIR)\\" /FD /c

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll  /machine:I386 /out:"bin\csvw_D.dll" /implib:"$(OUTDIR)\csvw_D.lib"
LINK32_OBJS= \
	"$(INTDIR)\conditional\every.obj" \
	"$(INTDIR)\moop.obj" \
	"$(INTDIR)\qwaaa.obj"

"bin\csvw_D.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=Static_Debug
INTDIR=Static_Debug\csvw_D\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\csvw_Dsd.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -DFAIL_IF_NOT_DEFINED -f "Makefile.csvw_D.dep" "conditional\every.cpp" "moop.cxx" "qwaaa.c"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "lib\csvw_Dsd.pdb"

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\csvw_D\$(NULL)" mkdir "Static_Debug\csvw_D"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /Ob0 /W3 /Gm /EHs /Zi /GR /Gy /MDd /Fd"lib\csvw_Dsd.pdb" /D _DEBUG /D WIN32 /D _WINDOWS /D FAIL_IF_NOT_DEFINED /Fo"$(INTDIR)\\" /FD /c


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:"lib\csvw_Dsd.lib"
LINK32_OBJS= \
	"$(INTDIR)\conditional\every.obj" \
	"$(INTDIR)\moop.obj" \
	"$(INTDIR)\qwaaa.obj"

"$(OUTDIR)\csvw_Dsd.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=Static_Release
INTDIR=Static_Release\csvw_D\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\csvw_Ds.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -DFAIL_IF_NOT_DEFINED -f "Makefile.csvw_D.dep" "conditional\every.cpp" "moop.cxx" "qwaaa.c"
!ENDIF

REALCLEAN : CLEAN

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\csvw_D\$(NULL)" mkdir "Static_Release\csvw_D"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /O2 /W3 /EHs /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /D FAIL_IF_NOT_DEFINED /Fo"$(INTDIR)\\" /FD /c


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:"lib\csvw_Ds.lib"
LINK32_OBJS= \
	"$(INTDIR)\conditional\every.obj" \
	"$(INTDIR)\moop.obj" \
	"$(INTDIR)\qwaaa.obj"

"$(OUTDIR)\csvw_Ds.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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
!IF EXISTS("Makefile.csvw_D.dep")
!INCLUDE "Makefile.csvw_D.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" 
SOURCE="conditional\every.cpp"
!IF  "$(CFG)" == "Win32 Debug"

"$(INTDIR)\conditional\every.obj" : $(SOURCE) "$(INTDIR)"
        @if not exist "$(INTDIR)\conditional\$(NULL)" mkdir "$(INTDIR)\conditional"
	$(CPP) @<<
	/nologo /Ob0 /W3 /Gm /EHs /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /D _DEBUG /D WIN32 /D _WINDOWS /D FAIL_IF_NOT_DEFINED /FD /c /Fo"$(INTDIR)\conditional\every.obj" $(SOURCE)
<<
!ELSEIF  "$(CFG)" == "Win32 Release"

"$(INTDIR)\conditional\every.obj" : $(SOURCE) "$(INTDIR)"
        @if not exist "$(INTDIR)\conditional\$(NULL)" mkdir "$(INTDIR)\conditional"
	$(CPP) @<<
	/nologo /O2 /W3 /EHs /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /D FAIL_IF_NOT_DEFINED /FD /c /Fo"$(INTDIR)\conditional\every.obj" $(SOURCE)
<<
!ELSEIF  "$(CFG)" == "Win32 Static Debug"

"$(INTDIR)\conditional\every.obj" : $(SOURCE) "$(INTDIR)"
        @if not exist "$(INTDIR)\conditional\$(NULL)" mkdir "$(INTDIR)\conditional"
	$(CPP) @<<
	/nologo /Ob0 /W3 /Gm /EHs /Zi /GR /Gy /MDd /Fd"lib\csvw_Dsd.pdb" /D _DEBUG /D WIN32 /D _WINDOWS /D FAIL_IF_NOT_DEFINED /FD /c /Fo"$(INTDIR)\conditional\every.obj" $(SOURCE)
<<
!ELSEIF  "$(CFG)" == "Win32 Static Release"

"$(INTDIR)\conditional\every.obj" : $(SOURCE) "$(INTDIR)"
        @if not exist "$(INTDIR)\conditional\$(NULL)" mkdir "$(INTDIR)\conditional"
	$(CPP) @<<
	/nologo /O2 /W3 /EHs /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /D FAIL_IF_NOT_DEFINED /FD /c /Fo"$(INTDIR)\conditional\every.obj" $(SOURCE)
<<
!ENDIF

SOURCE="moop.cxx"
"$(INTDIR)\moop.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)

SOURCE="qwaaa.c"
"$(INTDIR)\qwaaa.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF

GENERATED : $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.csvw_D.dep")
	@echo Using "Makefile.csvw_D.dep"
!ELSE
	@echo Warning: cannot find "Makefile.csvw_D.dep"
!ENDIF
!ENDIF

