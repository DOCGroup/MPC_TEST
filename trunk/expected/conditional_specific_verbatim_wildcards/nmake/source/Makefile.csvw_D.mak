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

OUTDIR=bin
INTDIR=Debug\csvw_D\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "bin\csvw_Dd.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
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
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /D _DEBUG /D WIN32 /D _WINDOWS /D FAIL_IF_NOT_DEFINED /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll /debug /pdb:"bin\csvw_Dd.pdb" /machine:I386 /out:"bin\csvw_Dd.dll" /implib:"$(OUTDIR)\csvw_Dd.lib"
LINK32_OBJS= \
	"$(INTDIR)\conditional\every.obj" \
	"$(INTDIR)\moop.obj" \
	"$(INTDIR)\qwaaa.obj"

"bin\csvw_Dd.dll" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "bin\csvw_Dd.dll.manifest" mt.exe -manifest "bin\csvw_Dd.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=bin
INTDIR=Release\csvw_D\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "bin\csvw_D.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -DFAIL_IF_NOT_DEFINED -f "Makefile.csvw_D.dep" "conditional\every.cpp" "moop.cxx" "qwaaa.c"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "bin\csvw_D.dll"
        -@del /f/q "$(OUTDIR)\csvw_D.lib"
        -@del /f/q "$(OUTDIR)\csvw_D.exp"
        -@del /f/q "$(OUTDIR)\csvw_D.ilk"

"$(INTDIR)" :
    if not exist "Release\$(NULL)" mkdir "Release"
    if not exist "Release\csvw_D\$(NULL)" mkdir "Release\csvw_D"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /D FAIL_IF_NOT_DEFINED /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll  /machine:I386 /out:"bin\csvw_D.dll" /implib:"$(OUTDIR)\csvw_D.lib"
LINK32_OBJS= \
	"$(INTDIR)\conditional\every.obj" \
	"$(INTDIR)\moop.obj" \
	"$(INTDIR)\qwaaa.obj"

"bin\csvw_D.dll" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "bin\csvw_D.dll.manifest" mt.exe -manifest "bin\csvw_D.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=lib
INTDIR=Static_Debug\csvw_D\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\csvw_Dsd.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -DFAIL_IF_NOT_DEFINED -f "Makefile.csvw_D.dep" "conditional\every.cpp" "moop.cxx" "qwaaa.c"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\csvw_Dsd.lib"
        -@del /f/q "$(OUTDIR)\csvw_Dsd.exp"
        -@del /f/q "$(OUTDIR)\csvw_Dsd.ilk"
	-@del /f/q "lib\csvw_Dsd.pdb"

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\csvw_D\$(NULL)" mkdir "Static_Debug\csvw_D"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /GR /Gy /MDd /Fd"lib\csvw_Dsd.pdb" /D _DEBUG /D WIN32 /D _WINDOWS /D FAIL_IF_NOT_DEFINED /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:"lib\csvw_Dsd.lib"
LINK32_OBJS= \
	"$(INTDIR)\conditional\every.obj" \
	"$(INTDIR)\moop.obj" \
	"$(INTDIR)\qwaaa.obj"

"$(OUTDIR)\csvw_Dsd.lib" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\csvw_Dsd.lib.manifest" mt.exe -manifest "$(OUTDIR)\csvw_Dsd.lib.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=lib
INTDIR=Static_Release\csvw_D\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\csvw_Ds.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -DFAIL_IF_NOT_DEFINED -f "Makefile.csvw_D.dep" "conditional\every.cpp" "moop.cxx" "qwaaa.c"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\csvw_Ds.lib"
        -@del /f/q "$(OUTDIR)\csvw_Ds.exp"
        -@del /f/q "$(OUTDIR)\csvw_Ds.ilk"

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\csvw_D\$(NULL)" mkdir "Static_Release\csvw_D"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /D FAIL_IF_NOT_DEFINED /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:"lib\csvw_Ds.lib"
LINK32_OBJS= \
	"$(INTDIR)\conditional\every.obj" \
	"$(INTDIR)\moop.obj" \
	"$(INTDIR)\qwaaa.obj"

"$(OUTDIR)\csvw_Ds.lib" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\csvw_Ds.lib.manifest" mt.exe -manifest "$(OUTDIR)\csvw_Ds.lib.manifest" -outputresource:$@;2

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

"$(INTDIR)\conditional\every.obj" : $(SOURCE)
	@if not exist "$(INTDIR)\conditional\$(NULL)" mkdir "$(INTDIR)\conditional\"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\conditional\every.obj" $(SOURCE)

SOURCE="moop.cxx"

"$(INTDIR)\moop.obj" : $(SOURCE)
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\moop.obj" $(SOURCE)

SOURCE="qwaaa.c"

"$(INTDIR)\qwaaa.obj" : $(SOURCE)
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\qwaaa.obj" $(SOURCE)


!ENDIF

GENERATED : "$(INTDIR)" "$(OUTDIR)" $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.csvw_D.dep")
	@echo Using "Makefile.csvw_D.dep"
!ELSE
	@echo Warning: cannot find "Makefile.csvw_D.dep"
!ENDIF
!ENDIF

