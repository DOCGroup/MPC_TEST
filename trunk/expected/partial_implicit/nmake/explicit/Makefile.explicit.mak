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
!MESSAGE NMAKE /f "Makefile.explicit.mak" CFG="Win32 Debug"
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

GENERATED_DIRTY = "down\crap.cpp" "down\crap.h" "down\crap.inl"

!IF  "$(CFG)" == "Win32 Debug"

OUTDIR=.
INTDIR=Debug\explicit\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) ".\explicitd.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"." -D_DEBUG -DWIN32 -D_WINDOWS -f "Makefile.explicit.dep" "down\crap.cpp" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(OUTDIR)\explicitd.pdb"
        -@del /f/q ".\explicitd.dll"
        -@del /f/q "$(OUTDIR)\explicitd.lib"
        -@del /f/q "$(OUTDIR)\explicitd.exp"
        -@del /f/q "$(OUTDIR)\explicitd.ilk"
        -@del /f/q "down\crap.cpp"
        -@del /f/q "down\crap.h"
        -@del /f/q "down\crap.inl"
	-rmdir /s/q down

"$(INTDIR)" :
    if not exist "Debug\$(NULL)" mkdir "Debug"
    if not exist "Debug\explicit\$(NULL)" mkdir "Debug\explicit"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /I "." /D _DEBUG /D WIN32 /D _WINDOWS  /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll /debug /pdb:".\explicitd.pdb" /machine:I386 /out:".\explicitd.dll" /implib:"$(OUTDIR)\explicitd.lib"
LINK32_OBJS= \
	"$(INTDIR)\down\crap.obj" \
	"$(INTDIR)\foo.obj"

".\explicitd.dll" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist ".\explicitd.dll.manifest" mt.exe -manifest ".\explicitd.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=.
INTDIR=Release\explicit\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) ".\explicit.dll"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"." -DNDEBUG -DWIN32 -D_WINDOWS -f "Makefile.explicit.dep" "down\crap.cpp" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q ".\explicit.dll"
        -@del /f/q "$(OUTDIR)\explicit.lib"
        -@del /f/q "$(OUTDIR)\explicit.exp"
        -@del /f/q "$(OUTDIR)\explicit.ilk"
        -@del /f/q "down\crap.cpp"
        -@del /f/q "down\crap.h"
        -@del /f/q "down\crap.inl"
	-rmdir /s/q down

"$(INTDIR)" :
    if not exist "Release\$(NULL)" mkdir "Release"
    if not exist "Release\explicit\$(NULL)" mkdir "Release\explicit"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /I "." /D NDEBUG /D WIN32 /D _WINDOWS  /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /dll  /machine:I386 /out:".\explicit.dll" /implib:"$(OUTDIR)\explicit.lib"
LINK32_OBJS= \
	"$(INTDIR)\down\crap.obj" \
	"$(INTDIR)\foo.obj"

".\explicit.dll" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist ".\explicit.dll.manifest" mt.exe -manifest ".\explicit.dll.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=.
INTDIR=Static_Debug\explicit\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\explicitsd.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"." -D_DEBUG -DWIN32 -D_WINDOWS -f "Makefile.explicit.dep" "down\crap.cpp" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\explicitsd.lib"
        -@del /f/q "$(OUTDIR)\explicitsd.exp"
        -@del /f/q "$(OUTDIR)\explicitsd.ilk"
	-@del /f/q ".\explicitsd.pdb"
        -@del /f/q "down\crap.cpp"
        -@del /f/q "down\crap.h"
        -@del /f/q "down\crap.inl"
	-rmdir /s/q down

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\explicit\$(NULL)" mkdir "Static_Debug\explicit"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHsc /Zi /GR /Gy /MDd /Fd".\explicitsd.pdb" /I "." /D _DEBUG /D WIN32 /D _WINDOWS  /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\explicitsd.lib"
LINK32_OBJS= \
	"$(INTDIR)\down\crap.obj" \
	"$(INTDIR)\foo.obj"

"$(OUTDIR)\explicitsd.lib" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\explicitsd.lib.manifest" mt.exe -manifest "$(OUTDIR)\explicitsd.lib.manifest" -outputresource:$@;2

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=.
INTDIR=Static_Release\explicit\I386

ALL : "$(INTDIR)" "$(OUTDIR)" DEPENDCHECK $(GENERATED_DIRTY) "$(OUTDIR)\explicits.lib"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo One comes with MPC, just set the MPC_ROOT environment variable
	@echo to the full path of MPC.  You can download MPC from
	@echo http://www.ociweb.com/products/mpc/down.html
!ELSE
	$(DEPGEN) -I"." -DNDEBUG -DWIN32 -D_WINDOWS -f "Makefile.explicit.dep" "down\crap.cpp" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(OUTDIR)\explicits.lib"
        -@del /f/q "$(OUTDIR)\explicits.exp"
        -@del /f/q "$(OUTDIR)\explicits.ilk"
        -@del /f/q "down\crap.cpp"
        -@del /f/q "down\crap.h"
        -@del /f/q "down\crap.inl"
	-rmdir /s/q down

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\explicit\$(NULL)" mkdir "Static_Release\explicit"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHsc /MD /GR /I "." /D NDEBUG /D WIN32 /D _WINDOWS  /FD /c

CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"


LINK32=link.exe -lib
LINK32_FLAGS=/nologo /machine:I386 /out:".\explicits.lib"
LINK32_OBJS= \
	"$(INTDIR)\down\crap.obj" \
	"$(INTDIR)\foo.obj"

"$(OUTDIR)\explicits.lib" : $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(OUTDIR)\explicits.lib.manifest" mt.exe -manifest "$(OUTDIR)\explicits.lib.manifest" -outputresource:$@;2

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
!IF EXISTS("Makefile.explicit.dep")
!INCLUDE "Makefile.explicit.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" 
SOURCE="down\crap.cpp"

"$(INTDIR)\down\crap.obj" : $(SOURCE)
	@if not exist "$(INTDIR)\down\$(NULL)" mkdir "$(INTDIR)\down\"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\down\crap.obj" $(SOURCE)

SOURCE="foo.cpp"

"$(INTDIR)\foo.obj" : $(SOURCE)
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\foo.obj" $(SOURCE)

!IF  "$(CFG)" == "Win32 Debug"
SOURCE="crap.r"

InputPath=crap.r

"down\crap.cpp" "down\crap.h" "down\crap.inl" : $(SOURCE)  "..\bin\cppgen.pl"
	<<tempfile.bat
	@echo off
        if not exist down mkdir down
	perl ..\bin\cppgen.pl  "$(InputPath)" -o "down\crap.cpp" "down\crap.h" "down\crap.inl"
<<

!ELSEIF  "$(CFG)" == "Win32 Release"
SOURCE="crap.r"

InputPath=crap.r

"down\crap.cpp" "down\crap.h" "down\crap.inl" : $(SOURCE)  "..\bin\cppgen.pl"
	<<tempfile.bat
	@echo off
        if not exist down mkdir down
	perl ..\bin\cppgen.pl  "$(InputPath)" -o "down\crap.cpp" "down\crap.h" "down\crap.inl"
<<

!ELSEIF  "$(CFG)" == "Win32 Static Debug"
SOURCE="crap.r"

InputPath=crap.r

"down\crap.cpp" "down\crap.h" "down\crap.inl" : $(SOURCE)  "..\bin\cppgen.pl"
	<<tempfile.bat
	@echo off
        if not exist down mkdir down
	perl ..\bin\cppgen.pl  "$(InputPath)" -o "down\crap.cpp" "down\crap.h" "down\crap.inl"
<<

!ELSEIF  "$(CFG)" == "Win32 Static Release"
SOURCE="crap.r"

InputPath=crap.r

"down\crap.cpp" "down\crap.h" "down\crap.inl" : $(SOURCE)  "..\bin\cppgen.pl"
	<<tempfile.bat
	@echo off
        if not exist down mkdir down
	perl ..\bin\cppgen.pl  "$(InputPath)" -o "down\crap.cpp" "down\crap.h" "down\crap.inl"
<<

!ENDIF


!ENDIF

GENERATED : "$(INTDIR)" "$(OUTDIR)" $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.explicit.dep")
	@echo Using "Makefile.explicit.dep"
!ELSE
	@echo Warning: cannot find "Makefile.explicit.dep"
!ENDIF
!ENDIF

