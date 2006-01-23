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
!MESSAGE NMAKE /f "Makefile.TMClient.mak" CFG="Win32 Debug"
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
DEPGEN=perl $(DEPGEN_ROOT)/depgen.pl -i -t nmake
!ELSEIF EXISTS("$(ACE_ROOT)/bin/depgen.pl")
DEPGEN=perl $(ACE_ROOT)/bin/depgen.pl -i -t nmake
!ENDIF
!ENDIF

GENERATED_DIRTY =

!IF  "$(CFG)" == "Win32 Debug"

OUTDIR=.
INTDIR=Debug\TMClient\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\TMClientd.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -f "Makefile.TMClient.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\TMClientd.lib"
        -@del /f/q "$(OUTDIR)\TMClientd.exp"
        -@del /f/q "$(OUTDIR)\TMClientd.ilk"
	-@del /f/q ".\TMClientd.pdb"

"$(INTDIR)" :
    if not exist "Debug\$(NULL)" mkdir "Debug"
    if not exist "Debug\TMClient\$(NULL)" mkdir "Debug\TMClient"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/nologo /Ob0 /W3 /Gm /EHs /Zi /MDd /GR /Gy /Fd".\TMClientd.pdb" /D _DEBUG /D WIN32 /D _WINDOWS /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\TMClientd.lib"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

"$(OUTDIR)\TMClientd.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\TMClientd.lib.manifest" mt.exe -manifest "$(OUTDIR)\TMClientd.lib.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=.
INTDIR=Release\TMClient\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\TMClient.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -f "Makefile.TMClient.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\TMClient.lib"
        -@del /f/q "$(OUTDIR)\TMClient.exp"
        -@del /f/q "$(OUTDIR)\TMClient.ilk"

"$(INTDIR)" :
    if not exist "Release\$(NULL)" mkdir "Release"
    if not exist "Release\TMClient\$(NULL)" mkdir "Release\TMClient"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/nologo /O2 /W3 /EHs /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\TMClient.lib"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

"$(OUTDIR)\TMClient.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\TMClient.lib.manifest" mt.exe -manifest "$(OUTDIR)\TMClient.lib.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=.
INTDIR=Static_Debug\TMClient\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\TMClientsd.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -f "Makefile.TMClient.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\TMClientsd.lib"
        -@del /f/q "$(OUTDIR)\TMClientsd.exp"
        -@del /f/q "$(OUTDIR)\TMClientsd.ilk"
	-@del /f/q ".\TMClientsd.pdb"

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\TMClient\$(NULL)" mkdir "Static_Debug\TMClient"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/nologo /Ob0 /W3 /Gm /EHs /Zi /GR /Gy /MDd /Fd".\TMClientsd.pdb" /D _DEBUG /D WIN32 /D _WINDOWS /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\TMClientsd.lib"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

"$(OUTDIR)\TMClientsd.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\TMClientsd.lib.manifest" mt.exe -manifest "$(OUTDIR)\TMClientsd.lib.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=.
INTDIR=Static_Release\TMClient\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\TMClients.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -f "Makefile.TMClient.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\TMClients.lib"
        -@del /f/q "$(OUTDIR)\TMClients.exp"
        -@del /f/q "$(OUTDIR)\TMClients.ilk"

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\TMClient\$(NULL)" mkdir "Static_Release\TMClient"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/nologo /O2 /W3 /EHs /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\TMClients.lib"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

"$(OUTDIR)\TMClients.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\TMClients.lib.manifest" mt.exe -manifest "$(OUTDIR)\TMClients.lib.manifest" -outputresource:$@;2

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
!IF EXISTS("Makefile.TMClient.dep")
!INCLUDE "Makefile.TMClient.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" 
SOURCE="foo.cpp"

"$(INTDIR)\foo.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\foo.obj" $(SOURCE)


!ENDIF

GENERATED : $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.TMClient.dep")
	@echo Using "Makefile.TMClient.dep"
!ELSE
	@echo Warning: cannot find "Makefile.TMClient.dep"
!ENDIF
!ENDIF

