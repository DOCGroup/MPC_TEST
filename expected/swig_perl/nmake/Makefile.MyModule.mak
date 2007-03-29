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
!MESSAGE NMAKE /f "Makefile.MyModule.mak" CFG="Win32 Debug"
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

GENERATED_DIRTY = "MyModule.pm" "MyModule_wrap.cxx"

!IF  "$(CFG)" == "Win32 Debug"

OUTDIR=.
INTDIR=Debug\MyModule\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) ".\MyModule.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"$(PERL5_INCLUDE)\." -D_DEBUG -DWIN32 -D_WINDOWS -f "Makefile.MyModule.dep" "hello.cpp" "MyModule_wrap.cxx"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(OUTDIR)\MyModule.pdb"
        -@del /f/q ".\MyModule.dll"
        -@del /f/q "$(OUTDIR)\MyModule.lib"
        -@del /f/q "$(OUTDIR)\MyModule.exp"
        -@del /f/q "$(OUTDIR)\MyModule.ilk"
        -@del /f/q "MyModule.pm"
        -@del /f/q "MyModule_wrap.cxx"

"$(INTDIR)" :
    if not exist "Debug\$(NULL)" mkdir "Debug"
    if not exist "Debug\MyModule\$(NULL)" mkdir "Debug\MyModule"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /I "$(PERL5_INCLUDE)\." /D _DEBUG /D WIN32 /D _WINDOWS /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO $(PERL5_LIB).lib /libpath:"." /libpath:"$(PERL5_INCLUDE)\." /nologo /subsystem:windows /dll /debug /pdb:".\MyModule.pdb" /machine:I386 /out:".\MyModule.dll" /implib:"$(OUTDIR)\MyModule.lib"
LINK32_OBJS= \
	"$(INTDIR)\hello.obj" \
	"$(INTDIR)\MyModule_wrap.obj"

".\MyModule.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist ".\MyModule.dll.manifest" mt.exe -manifest ".\MyModule.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=.
INTDIR=Release\MyModule\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) ".\MyModule.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"$(PERL5_INCLUDE)\." -DNDEBUG -DWIN32 -D_WINDOWS -f "Makefile.MyModule.dep" "hello.cpp" "MyModule_wrap.cxx"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q ".\MyModule.dll"
        -@del /f/q "$(OUTDIR)\MyModule.lib"
        -@del /f/q "$(OUTDIR)\MyModule.exp"
        -@del /f/q "$(OUTDIR)\MyModule.ilk"
        -@del /f/q "MyModule.pm"
        -@del /f/q "MyModule_wrap.cxx"

"$(INTDIR)" :
    if not exist "Release\$(NULL)" mkdir "Release"
    if not exist "Release\MyModule\$(NULL)" mkdir "Release\MyModule"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /I "$(PERL5_INCLUDE)\." /D NDEBUG /D WIN32 /D _WINDOWS /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO $(PERL5_LIB).lib /libpath:"." /libpath:"$(PERL5_INCLUDE)\." /nologo /subsystem:windows /dll  /machine:I386 /out:".\MyModule.dll" /implib:"$(OUTDIR)\MyModule.lib"
LINK32_OBJS= \
	"$(INTDIR)\hello.obj" \
	"$(INTDIR)\MyModule_wrap.obj"

".\MyModule.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist ".\MyModule.dll.manifest" mt.exe -manifest ".\MyModule.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=.
INTDIR=Static_Debug\MyModule\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\MyModule.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"$(PERL5_INCLUDE)\." -D_DEBUG -DWIN32 -D_WINDOWS -f "Makefile.MyModule.dep" "hello.cpp" "MyModule_wrap.cxx"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\MyModule.lib"
        -@del /f/q "$(OUTDIR)\MyModule.exp"
        -@del /f/q "$(OUTDIR)\MyModule.ilk"
	-@del /f/q ".\MyModule.pdb"
        -@del /f/q "MyModule.pm"
        -@del /f/q "MyModule_wrap.cxx"

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\MyModule\$(NULL)" mkdir "Static_Debug\MyModule"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /GR /Gy /MDd /Fd".\MyModule.pdb" /I "$(PERL5_INCLUDE)\." /D _DEBUG /D WIN32 /D _WINDOWS /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\MyModule.lib"
LINK32_OBJS= \
	"$(INTDIR)\hello.obj" \
	"$(INTDIR)\MyModule_wrap.obj"

"$(OUTDIR)\MyModule.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\MyModule.lib.manifest" mt.exe -manifest "$(OUTDIR)\MyModule.lib.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=.
INTDIR=Static_Release\MyModule\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\MyModule.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"$(PERL5_INCLUDE)\." -DNDEBUG -DWIN32 -D_WINDOWS -f "Makefile.MyModule.dep" "hello.cpp" "MyModule_wrap.cxx"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\MyModule.lib"
        -@del /f/q "$(OUTDIR)\MyModule.exp"
        -@del /f/q "$(OUTDIR)\MyModule.ilk"
        -@del /f/q "MyModule.pm"
        -@del /f/q "MyModule_wrap.cxx"

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\MyModule\$(NULL)" mkdir "Static_Release\MyModule"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /I "$(PERL5_INCLUDE)\." /D NDEBUG /D WIN32 /D _WINDOWS /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\MyModule.lib"
LINK32_OBJS= \
	"$(INTDIR)\hello.obj" \
	"$(INTDIR)\MyModule_wrap.obj"

"$(OUTDIR)\MyModule.lib" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\MyModule.lib.manifest" mt.exe -manifest "$(OUTDIR)\MyModule.lib.manifest" -outputresource:$@;2

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
!IF EXISTS("Makefile.MyModule.dep")
!INCLUDE "Makefile.MyModule.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" 
SOURCE="hello.cpp"

"$(INTDIR)\hello.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\hello.obj" $(SOURCE)

SOURCE="MyModule_wrap.cxx"

"$(INTDIR)\MyModule_wrap.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\MyModule_wrap.obj" $(SOURCE)

SOURCE="MyModule.i"

InputPath=MyModule.i

"MyModule.pm" "MyModule_wrap.cxx" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	<<tempfile.bat
	@echo off
	swig -perl -c++ "$(InputPath)"
<<


!ENDIF

GENERATED : $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.MyModule.dep")
	@echo Using "Makefile.MyModule.dep"
!ELSE
	@echo Warning: cannot find "Makefile.MyModule.dep"
!ENDIF
!ENDIF

