# Microsoft Developer Studio Project File - Name="mpc_test" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Generic Project" 0x010a

CFG=mpc_test - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE run the tool that generated this project file and specify the
!MESSAGE nmake output type.  You can then use the following command:
!MESSAGE
!MESSAGE NMAKE.
!MESSAGE
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE
!MESSAGE NMAKE CFG="mpc_test - Win32 Debug"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "mpc_test - Win32 Debug" (based on "Win32 (x86) Generic Project")
!MESSAGE "mpc_test - Win32 Release" (based on "Win32 (x86) Generic Project")
!MESSAGE

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "mpc_test - Win32 Debug"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Intermediate_Dir "Debug\mpc_test"
# PROP Target_Dir ""
# ADD CPP /nologo /Ob0 /W3 /Gm /GX /Zi /MDd /GR /Gy /Fd"Debug\mpc_test/" /D _DEBUG /D WIN32 /D _WINDOWS /FD /c
# SUBTRACT CPP /Fr /YX

# ADD MTL /D "_DEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d _DEBUG
BSC32=bscmake.exe
# ADD BSC32 /nologo 

!ELSEIF  "$(CFG)" == "mpc_test - Win32 Release"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Intermediate_Dir "Release\mpc_test"
# PROP Target_Dir ""
# ADD CPP /nologo /O2 /W3 /GX /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /FD /c
# SUBTRACT CPP /YX

# ADD MTL /D "NDEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d NDEBUG
BSC32=bscmake.exe
# ADD BSC32 /nologo 

!ENDIF

# Begin Target

# Name "mpc_test - Win32 Debug"
# Name "mpc_test - Win32 Release"
# Begin Group "Script1 Files"

# PROP Default_Filter "mco"
# Begin Source File

SOURCE="foo.mco"

!IF  "$(CFG)" == "mpc_test - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking echo "int main(){}" on $(InputPath)
InputPath="foo.mco"

BuildCmds= \
	echo "int main(){}" -a $(InputPath) > "foo.cpp" \

"foo.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "mpc_test - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking echo "int main(){}" on $(InputPath)
InputPath="foo.mco"

BuildCmds= \
	echo "int main(){}" -a -O $(InputPath) > "foo.cpp" \

"foo.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# End Group
# Begin Group "Script2 Files"

# PROP Default_Filter "mco"
# Begin Source File

SOURCE="foo.mco"

!IF  "$(CFG)" == "mpc_test - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking echo "int main(){}" on $(InputPath)
InputPath="foo.mco"

BuildCmds= \
	echo "int main(){}" -b $(InputPath) > "foo_script2.cpp" \

"foo_script2.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "mpc_test - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking echo "int main(){}" on $(InputPath)
InputPath="foo.mco"

BuildCmds= \
	echo "int main(){}" -b $(InputPath) > "foo_script2.cpp" \

"foo_script2.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# End Group
# End Target
# End Project
