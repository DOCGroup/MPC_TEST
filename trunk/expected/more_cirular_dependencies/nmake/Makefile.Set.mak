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
!MESSAGE NMAKE /f "Makefile.Set.mak" CFG="Win32 Debug"
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
INTDIR=Debug\Set\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) ".\Setd.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -DSET_BUILD_DLL -f "Makefile.Set.dep" "set.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(OUTDIR)\Setd.pdb"
        -@del /f/q ".\Setd.dll"
        -@del /f/q "$(OUTDIR)\Setd.lib"
        -@del /f/q "$(OUTDIR)\Setd.exp"
        -@del /f/q "$(OUTDIR)\Setd.ilk"

"$(INTDIR)" :
    if not exist "Debug\$(NULL)" mkdir "Debug"
    if not exist "Debug\Set\$(NULL)" mkdir "Debug\Set"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /D _DEBUG /D WIN32 /D _WINDOWS /D SET_BUILD_DLL /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll /debug /pdb:".\Setd.pdb" /machine:I386 /out:".\Setd.dll" /implib:"$(OUTDIR)\Setd.lib"
LINK32_OBJS= \
	"$(INTDIR)\set.obj"

".\Setd.dll" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist ".\Setd.dll.manifest" mt.exe -manifest ".\Setd.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=.
INTDIR=Release\Set\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) ".\Set.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -DSET_BUILD_DLL -f "Makefile.Set.dep" "set.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q ".\Set.dll"
        -@del /f/q "$(OUTDIR)\Set.lib"
        -@del /f/q "$(OUTDIR)\Set.exp"
        -@del /f/q "$(OUTDIR)\Set.ilk"

"$(INTDIR)" :
    if not exist "Release\$(NULL)" mkdir "Release"
    if not exist "Release\Set\$(NULL)" mkdir "Release\Set"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /D SET_BUILD_DLL /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll  /machine:I386 /out:".\Set.dll" /implib:"$(OUTDIR)\Set.lib"
LINK32_OBJS= \
	"$(INTDIR)\set.obj"

".\Set.dll" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist ".\Set.dll.manifest" mt.exe -manifest ".\Set.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=.
INTDIR=Static_Debug\Set\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\Setsd.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -DSET_AS_STATIC_LIBS -f "Makefile.Set.dep" "set.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\Setsd.lib"
        -@del /f/q "$(OUTDIR)\Setsd.exp"
        -@del /f/q "$(OUTDIR)\Setsd.ilk"
	-@del /f/q ".\Setsd.pdb"

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\Set\$(NULL)" mkdir "Static_Debug\Set"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /GR /Gy /MDd /Fd".\Setsd.pdb" /D _DEBUG /D WIN32 /D _WINDOWS /D SET_AS_STATIC_LIBS /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\Setsd.lib"
LINK32_OBJS= \
	"$(INTDIR)\set.obj"

"$(OUTDIR)\Setsd.lib" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\Setsd.lib.manifest" mt.exe -manifest "$(OUTDIR)\Setsd.lib.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=.
INTDIR=Static_Release\Set\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\Sets.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -DSET_AS_STATIC_LIBS -f "Makefile.Set.dep" "set.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\Sets.lib"
        -@del /f/q "$(OUTDIR)\Sets.exp"
        -@del /f/q "$(OUTDIR)\Sets.ilk"

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\Set\$(NULL)" mkdir "Static_Release\Set"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /D SET_AS_STATIC_LIBS /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\Sets.lib"
LINK32_OBJS= \
	"$(INTDIR)\set.obj"

"$(OUTDIR)\Sets.lib" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\Sets.lib.manifest" mt.exe -manifest "$(OUTDIR)\Sets.lib.manifest" -outputresource:$@;2

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
!IF EXISTS("Makefile.Set.dep")
!INCLUDE "Makefile.Set.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" 
SOURCE="set.cpp"

"$(INTDIR)\set.obj" : $(SOURCE)
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\set.obj" $(SOURCE)


!ENDIF

GENERATED : "$(INTDIR)" "$(OUTDIR)" $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.Set.dep")
	@echo Using "Makefile.Set.dep"
!ELSE
	@echo Warning: cannot find "Makefile.Set.dep"
!ENDIF
!ENDIF

