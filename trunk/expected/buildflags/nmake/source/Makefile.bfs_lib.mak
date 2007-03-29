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
!MESSAGE NMAKE /f "Makefile.bfs_lib.mak" CFG="Win32 Debug"
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
INTDIR=Debug\bfs_lib\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) ".\bfsd.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -f "Makefile.bfs_lib.dep" "directory\gets_flags.cpp" "five.cpp" "four.cpp" "one.cpp" "three.cpp" "two.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(OUTDIR)\bfsd.pdb"
        -@del /f/q ".\bfsd.dll"
        -@del /f/q "$(OUTDIR)\bfsd.lib"
        -@del /f/q "$(OUTDIR)\bfsd.exp"
        -@del /f/q "$(OUTDIR)\bfsd.ilk"

"$(INTDIR)" :
    if not exist "Debug\$(NULL)" mkdir "Debug"
    if not exist "Debug\bfs_lib\$(NULL)" mkdir "Debug\bfs_lib"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /D _DEBUG /D WIN32 /D _WINDOWS /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll /debug /pdb:".\bfsd.pdb" /machine:I386 /out:".\bfsd.dll" /implib:"$(OUTDIR)\bfsd.lib"
LINK32_OBJS= \
	"$(INTDIR)\directory\gets_flags.obj" \
	"$(INTDIR)\five.obj" \
	"$(INTDIR)\four.obj" \
	"$(INTDIR)\one.obj" \
	"$(INTDIR)\three.obj" \
	"$(INTDIR)\two.obj"

".\bfsd.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist ".\bfsd.dll.manifest" mt.exe -manifest ".\bfsd.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=.
INTDIR=Release\bfs_lib\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) ".\bfs.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -f "Makefile.bfs_lib.dep" "directory\gets_flags.cpp" "five.cpp" "four.cpp" "one.cpp" "three.cpp" "two.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q ".\bfs.dll"
        -@del /f/q "$(OUTDIR)\bfs.lib"
        -@del /f/q "$(OUTDIR)\bfs.exp"
        -@del /f/q "$(OUTDIR)\bfs.ilk"

"$(INTDIR)" :
    if not exist "Release\$(NULL)" mkdir "Release"
    if not exist "Release\bfs_lib\$(NULL)" mkdir "Release\bfs_lib"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll  /machine:I386 /out:".\bfs.dll" /implib:"$(OUTDIR)\bfs.lib"
LINK32_OBJS= \
	"$(INTDIR)\directory\gets_flags.obj" \
	"$(INTDIR)\five.obj" \
	"$(INTDIR)\four.obj" \
	"$(INTDIR)\one.obj" \
	"$(INTDIR)\three.obj" \
	"$(INTDIR)\two.obj"

".\bfs.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist ".\bfs.dll.manifest" mt.exe -manifest ".\bfs.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=.
INTDIR=Static_Debug\bfs_lib\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\bfssd.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_WINDOWS -f "Makefile.bfs_lib.dep" "directory\gets_flags.cpp" "five.cpp" "four.cpp" "one.cpp" "three.cpp" "two.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\bfssd.lib"
        -@del /f/q "$(OUTDIR)\bfssd.exp"
        -@del /f/q "$(OUTDIR)\bfssd.ilk"
	-@del /f/q ".\bfssd.pdb"

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\bfs_lib\$(NULL)" mkdir "Static_Debug\bfs_lib"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /GR /Gy /MDd /Fd".\bfssd.pdb" /D _DEBUG /D WIN32 /D _WINDOWS /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\bfssd.lib"
LINK32_OBJS= \
	"$(INTDIR)\directory\gets_flags.obj" \
	"$(INTDIR)\five.obj" \
	"$(INTDIR)\four.obj" \
	"$(INTDIR)\one.obj" \
	"$(INTDIR)\three.obj" \
	"$(INTDIR)\two.obj"

"$(OUTDIR)\bfssd.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\bfssd.lib.manifest" mt.exe -manifest "$(OUTDIR)\bfssd.lib.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=.
INTDIR=Static_Release\bfs_lib\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\bfss.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_WINDOWS -f "Makefile.bfs_lib.dep" "directory\gets_flags.cpp" "five.cpp" "four.cpp" "one.cpp" "three.cpp" "two.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\bfss.lib"
        -@del /f/q "$(OUTDIR)\bfss.exp"
        -@del /f/q "$(OUTDIR)\bfss.ilk"

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\bfs_lib\$(NULL)" mkdir "Static_Release\bfs_lib"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\bfss.lib"
LINK32_OBJS= \
	"$(INTDIR)\directory\gets_flags.obj" \
	"$(INTDIR)\five.obj" \
	"$(INTDIR)\four.obj" \
	"$(INTDIR)\one.obj" \
	"$(INTDIR)\three.obj" \
	"$(INTDIR)\two.obj"

"$(OUTDIR)\bfss.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\bfss.lib.manifest" mt.exe -manifest "$(OUTDIR)\bfss.lib.manifest" -outputresource:$@;2

!ENDIF

CLEAN :
	-@del /f/s/q "$(INTDIR)"

"$(INSTALLDIR)" :
    if not exist "$(INSTALLDIR)\$(NULL)" mkdir "$(INSTALLDIR)"

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
!IF EXISTS("Makefile.bfs_lib.dep")
!INCLUDE "Makefile.bfs_lib.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" 
SOURCE="directory\gets_flags.cpp"

"$(INTDIR)\directory\gets_flags.obj" : $(SOURCE) "$(INTDIR)"
	@if not exist "$(INTDIR)\directory\$(NULL)" mkdir "$(INTDIR)\directory\"
	$(CPP) $(CPP_COMMON) -Trogdor /Fo"$(INTDIR)\directory\gets_flags.obj" $(SOURCE)

SOURCE="five.cpp"

"$(INTDIR)\five.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_COMMON) -Trogdor /Fo"$(INTDIR)\five.obj" $(SOURCE)

SOURCE="four.cpp"

"$(INTDIR)\four.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_COMMON) -Trogdor /Fo"$(INTDIR)\four.obj" $(SOURCE)

SOURCE="one.cpp"

"$(INTDIR)\one.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\one.obj" $(SOURCE)

SOURCE="three.cpp"

"$(INTDIR)\three.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_COMMON) -Trogdor /Fo"$(INTDIR)\three.obj" $(SOURCE)

SOURCE="two.cpp"

"$(INTDIR)\two.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\two.obj" $(SOURCE)


!ENDIF

GENERATED : $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.bfs_lib.dep")
	@echo Using "Makefile.bfs_lib.dep"
!ELSE
	@echo Warning: cannot find "Makefile.bfs_lib.dep"
!ENDIF
!ENDIF

