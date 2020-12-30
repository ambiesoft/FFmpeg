
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
  set MSYSROOT=C:\local\msys2
if exist "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat" (
  set MINGWROOT=mingw64
) else if exist "C:\Program Files\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat" (
  set MINGWROOT=mingw32
) else (
  echo "Visual Studio not found"
  goto :end
)
endlocal & set PATH=%MSYSROOT%\%MINGWROOT%\bin;%MSYSROOT%\usr\bin;%PATH%

:: Include ffmpeg header directory
set INCLUDE=%INCLUDE%;C:\local\msys2\opt\ffmpeg-i686-w64-mingw32\include

:: cd to dev src root
cd ..\..\..


devenv C:\local\msys2\opt\ffmpeg-x86_64-w64-mingw32\bin\ffplay.sln
cmd /k

:end