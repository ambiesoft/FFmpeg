


call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat"

set MSYSROOT=C:\local\msys2
set PATH=%MSYSROOT%\mingw64\bin;%MSYSROOT%\usr\bin;%PATH%
cd ..\..\..
cmd /k