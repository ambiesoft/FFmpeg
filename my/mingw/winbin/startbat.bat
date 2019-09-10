
@echo off
if exist "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat" (
  call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat"
) else if exist "C:\Program Files\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat" (
  call "C:\Program Files\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat"
) else (
  echo "Visual Studio not found"
  goto :end
)

setlocal
if exist "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat" (
  set MSYSROOT=C:\local\msys2
  set MINGWROOT=mingw64
) else if exist "C:\Program Files\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat" (
  set MSYSROOT=C:\local\msys2
  set MINGWROOT=mingw32
) else (
  echo "Visual Studio not found"
  goto :end
)
endlocal & set PATH=%MSYSROOT%\%MINGWROOT%\bin;%MSYSROOT%\usr\bin;%PATH%

cd ..\..\..


:end
cmd /k