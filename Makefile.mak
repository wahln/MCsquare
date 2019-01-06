CC = "C:\Program Files (x86)\IntelSWTools\parallel_studio_xe_2017\compilers_and_libraries_2017\windows\bin\intel64\icl.exe"
SRC = src\*.c
LIB = -Qopenmp -Qmkl
OPTIONS = -Qstd=c99 -MT
MIC_ENABLED = -Qmic

INTEL64LIB = "C:\Program Files (x86)\IntelSWTools\compilers_and_libraries\windows\compiler\lib\intel64"
VCLIB = "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\lib\amd64"
WINSDK = "C:\Program Files (x86)\Windows Kits\10\Lib\10.0.17763.0\um\x64"
WINUCRT = "C:\Program Files (x86)\Windows Kits\10\Lib\10.0.17763.0\ucrt\x64"

LIB_PATH = -link -libpath:$(INTEL64LIB) -link -libpath:$(VCLIB) -link -libpath:$(WINSDK) -link -libpath:$(WINUCRT)

MCsquare_win.exe: $(SRC) 
	$(CC) $(SRC) $(LIB) $(OPTIONS) $(LIB_PATH) -link -out:MCsquare_win.exe
