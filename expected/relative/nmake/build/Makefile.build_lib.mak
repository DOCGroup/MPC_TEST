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
!MESSAGE NMAKE /f "Makefile.build_lib.mak" CFG="Win32 Debug"
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
INTDIR=Debug\build_lib\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) ".\build_libd.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"." -D_DEBUG -DWIN32 -D_WINDOWS -DUSING_PCH -f "Makefile.build_lib.dep" "..\src\foo.cpp" "bar.cpp" "lower\bar.cpp" "..\src\zzz_pch.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(OUTDIR)\build_libd.pdb"
	-@del /f/q ".\build_libd.dll"
	-@del /f/q "$(OUTDIR)\build_libd.lib"
	-@del /f/q "$(OUTDIR)\build_libd.exp"
	-@del /f/q "$(OUTDIR)\build_libd.ilk"

"$(INTDIR)" :
	if not exist "Debug\$(NULL)" mkdir "Debug"
	if not exist "Debug\build_lib\$(NULL)" mkdir "Debug\build_lib"
	if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /I "." /D _DEBUG /D WIN32 /D _WINDOWS  /c
CPP_PCH=/D USING_PCH /Yu"..\src\zzz_pch.h" /Fp"$(INTDIR)\dotdot\src\zzz_pch.pch"
CPP_PROJ=$(CPP_COMMON) $(CPP_PCH) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll /debug /pdb:".\build_libd.pdb" /machine:I386 /out:".\build_libd.dll" /implib:"$(OUTDIR)\build_libd.lib"
LINK32_OBJS= \
	"$(INTDIR)\dotdot\src\bar.res" \
	"$(INTDIR)\dotdot\src\zzz_pch.obj" \
	"$(INTDIR)\dotdot\src\foo.obj" \
	"$(INTDIR)\bar.obj" \
	"$(INTDIR)\lower\bar.obj"

".\build_libd.dll" : $(DEF_FILE) $(LINK32_OBJS)
	$(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
	if exist ".\build_libd.dll.manifest" mt.exe -manifest ".\build_libd.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=.
INTDIR=Release\build_lib\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) ".\build_lib.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"." -DNDEBUG -DWIN32 -D_WINDOWS -DUSING_PCH -f "Makefile.build_lib.dep" "..\src\foo.cpp" "bar.cpp" "lower\bar.cpp" "..\src\zzz_pch.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q ".\build_lib.dll"
	-@del /f/q "$(OUTDIR)\build_lib.lib"
	-@del /f/q "$(OUTDIR)\build_lib.exp"
	-@del /f/q "$(OUTDIR)\build_lib.ilk"

"$(INTDIR)" :
	if not exist "Release\$(NULL)" mkdir "Release"
	if not exist "Release\build_lib\$(NULL)" mkdir "Release\build_lib"
	if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /I "." /D NDEBUG /D WIN32 /D _WINDOWS  /c
CPP_PCH=/D USING_PCH /Yu"..\src\zzz_pch.h" /Fp"$(INTDIR)\dotdot\src\zzz_pch.pch"
CPP_PROJ=$(CPP_COMMON) $(CPP_PCH) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll  /machine:I386 /out:".\build_lib.dll" /implib:"$(OUTDIR)\build_lib.lib"
LINK32_OBJS= \
	"$(INTDIR)\dotdot\src\bar.res" \
	"$(INTDIR)\dotdot\src\zzz_pch.obj" \
	"$(INTDIR)\dotdot\src\foo.obj" \
	"$(INTDIR)\bar.obj" \
	"$(INTDIR)\lower\bar.obj"

".\build_lib.dll" : $(DEF_FILE) $(LINK32_OBJS)
	$(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
	if exist ".\build_lib.dll.manifest" mt.exe -manifest ".\build_lib.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=.
INTDIR=Static_Debug\build_lib\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\build_libsd.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"." -D_DEBUG -DWIN32 -D_WINDOWS -DUSING_PCH -f "Makefile.build_lib.dep" "..\src\foo.cpp" "bar.cpp" "lower\bar.cpp" "..\src\zzz_pch.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(OUTDIR)\build_libsd.lib"
	-@del /f/q "$(OUTDIR)\build_libsd.exp"
	-@del /f/q "$(OUTDIR)\build_libsd.ilk"
	-@del /f/q ".\build_libsd.pdb"

"$(INTDIR)" :
	if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
	if not exist "Static_Debug\build_lib\$(NULL)" mkdir "Static_Debug\build_lib"
	if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /GR /Gy /MDd /Fd".\build_libsd.pdb" /I "." /D _DEBUG /D WIN32 /D _WINDOWS  /c
CPP_PCH=/D USING_PCH /Yu"..\src\zzz_pch.h" /Fp"$(INTDIR)\dotdot\src\zzz_pch.pch"
CPP_PROJ=$(CPP_COMMON) $(CPP_PCH) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\build_libsd.lib"
LINK32_OBJS= \
	"$(INTDIR)\dotdot\src\zzz_pch.obj" \
	"$(INTDIR)\dotdot\src\foo.obj" \
	"$(INTDIR)\bar.obj" \
	"$(INTDIR)\lower\bar.obj"

"$(OUTDIR)\build_libsd.lib" : $(DEF_FILE) $(LINK32_OBJS)
	$(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
	if exist "$(OUTDIR)\build_libsd.lib.manifest" mt.exe -manifest "$(OUTDIR)\build_libsd.lib.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=.
INTDIR=Static_Release\build_lib\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\build_libs.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"." -DNDEBUG -DWIN32 -D_WINDOWS -DUSING_PCH -f "Makefile.build_lib.dep" "..\src\foo.cpp" "bar.cpp" "lower\bar.cpp" "..\src\zzz_pch.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(OUTDIR)\build_libs.lib"
	-@del /f/q "$(OUTDIR)\build_libs.exp"
	-@del /f/q "$(OUTDIR)\build_libs.ilk"

"$(INTDIR)" :
	if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
	if not exist "Static_Release\build_lib\$(NULL)" mkdir "Static_Release\build_lib"
	if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /I "." /D NDEBUG /D WIN32 /D _WINDOWS  /c
CPP_PCH=/D USING_PCH /Yu"..\src\zzz_pch.h" /Fp"$(INTDIR)\dotdot\src\zzz_pch.pch"
CPP_PROJ=$(CPP_COMMON) $(CPP_PCH) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\build_libs.lib"
LINK32_OBJS= \
	"$(INTDIR)\dotdot\src\zzz_pch.obj" \
	"$(INTDIR)\dotdot\src\foo.obj" \
	"$(INTDIR)\bar.obj" \
	"$(INTDIR)\lower\bar.obj"

"$(OUTDIR)\build_libs.lib" : $(DEF_FILE) $(LINK32_OBJS)
	$(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
	if exist "$(OUTDIR)\build_libs.lib.manifest" mt.exe -manifest "$(OUTDIR)\build_libs.lib.manifest" -outputresource:$@;2

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
!IF EXISTS("Makefile.build_lib.dep")
!INCLUDE "Makefile.build_lib.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" 
SOURCE="..\src\zzz_pch.cpp"

!IF  "$(CFG)" == "Win32 Debug"

CPP_SWITCHES=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /I "." /D _DEBUG /D WIN32 /D _WINDOWS /D USING_PCH /Fp"$(INTDIR)\dotdot\src\zzz_pch.pch" /Yc"..\src\zzz_pch.h"  /c

"$(INTDIR)\dotdot\src\zzz_pch.obj" "$(INTDIR)\dotdot\src\zzz_pch.pch" : $(SOURCE)
	@if not exist "$(INTDIR)\dotdot\src\$(NULL)" mkdir "$(INTDIR)\dotdot\src\"
	$(CPP) @<<
  $(CPP_SWITCHES) /Fo"$(INTDIR)\dotdot\src\zzz_pch.obj" $(SOURCE)
<<

!ELSEIF  "$(CFG)" == "Win32 Release"

CPP_SWITCHES=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /I "." /D NDEBUG /D WIN32 /D _WINDOWS /D USING_PCH /Fp"$(INTDIR)\dotdot\src\zzz_pch.pch" /Yc"..\src\zzz_pch.h"  /c

"$(INTDIR)\dotdot\src\zzz_pch.obj" "$(INTDIR)\dotdot\src\zzz_pch.pch" : $(SOURCE)
	@if not exist "$(INTDIR)\dotdot\src\$(NULL)" mkdir "$(INTDIR)\dotdot\src\"
	$(CPP) @<<
  $(CPP_SWITCHES) /Fo"$(INTDIR)\dotdot\src\zzz_pch.obj" $(SOURCE)
<<

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

CPP_SWITCHES=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /GR /Gy /MDd /Fd".\build_libsd.pdb" /I "." /D _DEBUG /D WIN32 /D _WINDOWS /D USING_PCH /Fp"$(INTDIR)\dotdot\src\zzz_pch.pch" /Yc"..\src\zzz_pch.h"  /c

"$(INTDIR)\dotdot\src\zzz_pch.obj" "$(INTDIR)\dotdot\src\zzz_pch.pch" : $(SOURCE)
	@if not exist "$(INTDIR)\dotdot\src\$(NULL)" mkdir "$(INTDIR)\dotdot\src\"
	$(CPP) @<<
  $(CPP_SWITCHES) /Fo"$(INTDIR)\dotdot\src\zzz_pch.obj" $(SOURCE)
<<

!ELSEIF  "$(CFG)" == "Win32 Static Release"

CPP_SWITCHES=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /I "." /D NDEBUG /D WIN32 /D _WINDOWS /D USING_PCH /Fp"$(INTDIR)\dotdot\src\zzz_pch.pch" /Yc"..\src\zzz_pch.h"  /c

"$(INTDIR)\dotdot\src\zzz_pch.obj" "$(INTDIR)\dotdot\src\zzz_pch.pch" : $(SOURCE)
	@if not exist "$(INTDIR)\dotdot\src\$(NULL)" mkdir "$(INTDIR)\dotdot\src\"
	$(CPP) @<<
  $(CPP_SWITCHES) /Fo"$(INTDIR)\dotdot\src\zzz_pch.obj" $(SOURCE)
<<

!ENDIF

SOURCE="..\src\foo.cpp"

"$(INTDIR)\dotdot\src\foo.obj" : $(SOURCE)
	@if not exist "$(INTDIR)\dotdot\src\$(NULL)" mkdir "$(INTDIR)\dotdot\src\"
	$(CPP) $(CPP_PCH) $(CPP_COMMON) /Fo"$(INTDIR)\dotdot\src\foo.obj" $(SOURCE)

SOURCE="bar.cpp"

"$(INTDIR)\bar.obj" : $(SOURCE)
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\bar.obj" $(SOURCE)

SOURCE="lower\bar.cpp"

"$(INTDIR)\lower\bar.obj" : $(SOURCE)
	@if not exist "$(INTDIR)\lower\$(NULL)" mkdir "$(INTDIR)\lower\"
	$(CPP) $(CPP_PCH) $(CPP_COMMON) /Fo"$(INTDIR)\lower\bar.obj" $(SOURCE)

SOURCE="..\src\bar.rc"

"$(INTDIR)\dotdot\src\bar.res" : $(SOURCE)
	@if not exist "$(INTDIR)\dotdot\src\$(NULL)" mkdir "$(INTDIR)\dotdot\src\"
	$(RSC) /l 0x409 /fo"$(INTDIR)\dotdot\src\bar.res" /i "." $(SOURCE)



!ENDIF

GENERATED : "$(INTDIR)" "$(OUTDIR)" $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.build_lib.dep")
	@echo Using "Makefile.build_lib.dep"
!ELSE
	@echo Warning: cannot find "Makefile.build_lib.dep"
!ENDIF
!ENDIF

