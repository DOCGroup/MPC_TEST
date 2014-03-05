# Microsoft Developer Studio Generated NMAKE File
!IF "$(CFG)" == ""
CFG=Win32 
!MESSAGE No configuration specified. Defaulting to Win32 .
!ELSEIF "$(CFG)" == ""
CFG=x64 
!MESSAGE No configuration specified. Defaulting to x64 .
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release"
!ELSE
!IF "$(CFG)" == "x64 Debug" || "$(CFG)" == "x64 Release"
!ELSE
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE
!MESSAGE NMAKE /f "Makefile.dll.mak" CFG="Win32 "
!MESSAGE NMAKE /f "Makefile.dll.mak" CFG="x64 "
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "Win32 Debug" (based on "Win32 () Dynamic-Link Library")
!MESSAGE "Win32 Release" (based on "Win32 () Dynamic-Link Library")
!MESSAGE "x64 Debug" (based on "x64 () Dynamic-Link Library")
!MESSAGE "x64 Release" (based on "x64 () Dynamic-Link Library")
!MESSAGE
!ERROR An invalid configuration was specified.
!ENDIF
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
INTDIR=Debug\dll\

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) ".\dlld.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"crapday" -I".." -D_DEBUG -DWIN32 -D_WINDOWS -D_CRT_NONSTDC_NO_WARNINGS -f "Makefile.dll.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q ".\dlld.dll"
	-@del /f/q "$(OUTDIR)\dlld.lib"
	-@del /f/q "$(OUTDIR)\dlld.exp"
	-@del /f/q "$(OUTDIR)\dlld.ilk"

"$(INTDIR)" :
	if not exist "Debug\$(NULL)" mkdir "Debug"
	if not exist "Debug\dll\$(NULL)" mkdir "Debug\dll"
	if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/nologo /Ob0  /I "crapday" /I ".." /D _DEBUG /D WIN32 /D _WINDOWS /D _CRT_NONSTDC_NO_WARNINGS  /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS= /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll /debug /machine:I386 /out:".\dlld.dll" /implib:"$(OUTDIR)\dlld.lib"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

".\dlld.dll" : $(DEF_FILE) $(LINK32_OBJS)
	$(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
	if exist ".\dlld.dll.manifest" mt.exe -manifest ".\dlld.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=.
INTDIR=Release\dll\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) ".\dll.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"crapday" -I".." -DNDEBUG -DWIN32 -D_WINDOWS -D_CRT_NONSTDC_NO_WARNINGS -f "Makefile.dll.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q ".\dll.dll"
	-@del /f/q "$(OUTDIR)\dll.lib"
	-@del /f/q "$(OUTDIR)\dll.exp"
	-@del /f/q "$(OUTDIR)\dll.ilk"

"$(INTDIR)" :
	if not exist "Release\$(NULL)" mkdir "Release"
	if not exist "Release\dll\$(NULL)" mkdir "Release\dll"
	if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/nologo /O2  /I "crapday" /I ".." /D NDEBUG /D WIN32 /D _WINDOWS /D _CRT_NONSTDC_NO_WARNINGS  /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS= /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll /debug /machine:I386 /out:".\dll.dll" /implib:"$(OUTDIR)\dll.lib"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

".\dll.dll" : $(DEF_FILE) $(LINK32_OBJS)
	$(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
	if exist ".\dll.dll.manifest" mt.exe -manifest ".\dll.dll.manifest" -outputresource:$@;2

!ENDIF
!IF  "$(CFG)" == "x64 Debug"

OUTDIR=.
INTDIR=Debug\dll\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) ".\dlld.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"crapday" -I".." -D_DEBUG -D_AMD64_ -DWIN32 -D_WINDOWS -D_CRT_NONSTDC_NO_WARNINGS -D_WIN64 -f "Makefile.dll.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q ".\dlld.dll"
	-@del /f/q "$(OUTDIR)\dlld.lib"
	-@del /f/q "$(OUTDIR)\dlld.exp"
	-@del /f/q "$(OUTDIR)\dlld.ilk"

"$(INTDIR)" :
	if not exist "Debug\$(NULL)" mkdir "Debug"
	if not exist "Debug\dll\$(NULL)" mkdir "Debug\dll"
	if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/nologo /Ob0  /I "crapday" /I ".." /D _DEBUG /D _AMD64_ /D WIN32 /D _WINDOWS /D _CRT_NONSTDC_NO_WARNINGS /D _WIN64  /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS= /machine:AMD64 /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll /debug /machine:I386 /out:".\dlld.dll" /implib:"$(OUTDIR)\dlld.lib"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

".\dlld.dll" : $(DEF_FILE) $(LINK32_OBJS)
	$(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
	if exist ".\dlld.dll.manifest" mt.exe -manifest ".\dlld.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "x64 Release"

OUTDIR=.
INTDIR=Release\dll\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) ".\dll.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"crapday" -I".." -DNDEBUG -D_AMD64_ -DWIN32 -D_WINDOWS -D_CRT_NONSTDC_NO_WARNINGS -D_WIN64 -f "Makefile.dll.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q ".\dll.dll"
	-@del /f/q "$(OUTDIR)\dll.lib"
	-@del /f/q "$(OUTDIR)\dll.exp"
	-@del /f/q "$(OUTDIR)\dll.ilk"

"$(INTDIR)" :
	if not exist "Release\$(NULL)" mkdir "Release"
	if not exist "Release\dll\$(NULL)" mkdir "Release\dll"
	if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/nologo /O2  /I "crapday" /I ".." /D NDEBUG /D _AMD64_ /D WIN32 /D _WINDOWS /D _CRT_NONSTDC_NO_WARNINGS /D _WIN64  /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS= /machine:AMD64 /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll /debug /machine:I386 /out:".\dll.dll" /implib:"$(OUTDIR)\dll.lib"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

".\dll.dll" : $(DEF_FILE) $(LINK32_OBJS)
	$(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
	if exist ".\dll.dll.manifest" mt.exe -manifest ".\dll.dll.manifest" -outputresource:$@;2

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
!IF EXISTS("Makefile.dll.dep")
!INCLUDE "Makefile.dll.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" 
SOURCE="foo.cpp"

"$(INTDIR)\foo.obj" : $(SOURCE)
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\foo.obj" $(SOURCE)


!ENDIF
!IF "$(CFG)" == "x64 Debug" || "$(CFG)" == "x64 Release" 
SOURCE="foo.cpp"

"$(INTDIR)\foo.obj" : $(SOURCE)
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\foo.obj" $(SOURCE)


!ENDIF

GENERATED : "$(INTDIR)" "$(OUTDIR)" $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.dll.dep")
	@echo Using "Makefile.dll.dep"
!ELSE
	@echo Warning: cannot find "Makefile.dll.dep"
!ENDIF
!ENDIF

