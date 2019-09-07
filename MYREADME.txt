
pacman -S mingw-w64-x86_64-gcc mingw-w64-x86_64-nasm mingw-w64-x86_64-diffutils mingw-w64-x86_64-pkg-config

./configure --extra-libs='-static' --extra-cflags='--static' --enable-nonfree --enable-gpl --enable-libopus --enable-libx264 --enable-libx265 --prefix=/opt/ffmpeg


mingw-w64-x86_64-libopusenc 
mingw-w64-x86_64-x265 
mingw-w64-x86_64-x264-git 
mingw-w64-x86_64-libde265
mingw-w64-x86_64-kvazaar