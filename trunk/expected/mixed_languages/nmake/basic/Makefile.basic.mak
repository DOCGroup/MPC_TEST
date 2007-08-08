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
!MESSAGE NMAKE /f "Makefile.basic.mak" CFG="Win32 Debug"
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
INTDIR=Debug\basic\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) ".\basicd.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -DBASIC_BUILD_DLL -f "Makefile.basic.dep" "arch.cpp" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(OUTDIR)\basicd.pdb"
        -@del /f/q ".\basicd.dll"
        -@del /f/q "$(OUTDIR)\basicd.lib"
        -@del /f/q "$(OUTDIR)\basicd.exp"
        -@del /f/q "$(OUTDIR)\basicd.ilk"

"$(INTDIR)" :
    if not exist "Debug\$(NULL)" mkdir "Debug"
    if not exist "Debug\basic\$(NULL)" mkdir "Debug\basic"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /D _DEBUG /D WIN32 /D _WINDOWS /D BASIC_BUILD_DLL /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /version:5.3015 /subsystem:windows /dll /debug /pdb:".\basicd.pdb" /machine:I386 /out:".\basicd.dll" /implib:"$(OUTDIR)\basicd.lib"
LINK32_OBJS= \
	"$(INTDIR)\arch.obj" \
	"$(INTDIR)\foo.obj"

".\basicd.dll" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist ".\basicd.dll.manifest" mt.exe -manifest ".\basicd.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=.
INTDIR=Release\basic\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) ".\basic.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -DBASIC_BUILD_DLL -f "Makefile.basic.dep" "arch.cpp" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q ".\basic.dll"
        -@del /f/q "$(OUTDIR)\basic.lib"
        -@del /f/q "$(OUTDIR)\basic.exp"
        -@del /f/q "$(OUTDIR)\basic.ilk"

"$(INTDIR)" :
    if not exist "Release\$(NULL)" mkdir "Release"
    if not exist "Release\basic\$(NULL)" mkdir "Release\basic"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /D BASIC_BUILD_DLL /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /version:5.3015 /subsystem:windows /dll  /machine:I386 /out:".\basic.dll" /implib:"$(OUTDIR)\basic.lib"
LINK32_OBJS= \
	"$(INTDIR)\arch.obj" \
	"$(INTDIR)\foo.obj"

".\basic.dll" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist ".\basic.dll.manifest" mt.exe -manifest ".\basic.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=.
INTDIR=Static_Debug\basic\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\basicsd.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -DBASIC_AS_STATIC_LIBS -f "Makefile.basic.dep" "arch.cpp" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\basicsd.lib"
        -@del /f/q "$(OUTDIR)\basicsd.exp"
        -@del /f/q "$(OUTDIR)\basicsd.ilk"
	-@del /f/q ".\basicsd.pdb"

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\basic\$(NULL)" mkdir "Static_Debug\basic"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /GR /Gy /MDd /Fd".\basicsd.pdb" /D _DEBUG /D WIN32 /D _WINDOWS /D BASIC_AS_STATIC_LIBS /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\basicsd.lib"
LINK32_OBJS= \
	"$(INTDIR)\arch.obj" \
	"$(INTDIR)\foo.obj"

"$(OUTDIR)\basicsd.lib" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\basicsd.lib.manifest" mt.exe -manifest "$(OUTDIR)\basicsd.lib.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=.
INTDIR=Static_Release\basic\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\basics.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -DBASIC_AS_STATIC_LIBS -f "Makefile.basic.dep" "arch.cpp" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\basics.lib"
        -@del /f/q "$(OUTDIR)\basics.exp"
        -@del /f/q "$(OUTDIR)\basics.ilk"

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\basic\$(NULL)" mkdir "Static_Release\basic"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /D BASIC_AS_STATIC_LIBS /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\basics.lib"
LINK32_OBJS= \
	"$(INTDIR)\arch.obj" \
	"$(INTDIR)\foo.obj"

"$(OUTDIR)\basics.lib" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\basics.lib.manifest" mt.exe -manifest "$(OUTDIR)\basics.lib.manifest" -outputresource:$@;2

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
!IF EXISTS("Makefile.basic.dep")
!INCLUDE "Makefile.basic.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" 
SOURCE="arch.cpp"

"$(INTDIR)\arch.obj" : $(SOURCE)
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\arch.obj" $(SOURCE)

SOURCE="foo.cpp"

"$(INTDIR)\foo.obj" : $(SOURCE)
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\foo.obj" $(SOURCE)


!ENDIF

GENERATED : "$(INTDIR)" "$(OUTDIR)" $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.basic.dep")
	@echo Using "Makefile.basic.dep"
!ELSE
	@echo Warning: cannot find "Makefile.basic.dep"
!ENDIF
!ENDIF

