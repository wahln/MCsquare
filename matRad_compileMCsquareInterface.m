mex -setup % Setup the Intel compiler
VCLIB = 'C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\lib\amd64';   %path to visual studio library
WINSDK = 'C:\Program Files (x86)\Windows Kits\10\Lib\10.0.17763.0\um\x64';    %Windows SDK
WINUCRT = 'C:\Program Files (x86)\Windows Kits\10\Lib\10.0.17763.0\ucrt\x64'; %Windows UCRT
INTEL65LIB = 'C:\Program Files (x86)\IntelSWTools\compilers_and_libraries\windows\compiler\lib\intel64';
INTELMKLLIB = 'C:\Program Files (x86)\IntelSWTools\compilers_and_libraries_2017.2.187\windows\mkl\lib\intel64';

flags = '-Qopenmp -Qmkl -Qstd=c99 -MT';

mex(['COMPFLAGS="$COMPFLAGS ' flags '"'],['-L"' INTELMKLLIB '"'],['-L"' VCLIB '"'],['-L"' INTEL64LIB '"'],['-L"' WINSDK '"'],['-L"' WINUCRT '"'],'matRad_mcSquareInterface.c',test{:})

