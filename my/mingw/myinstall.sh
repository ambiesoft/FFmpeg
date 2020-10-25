#!/bin/sh

TARGET_DIR=/C/T/TTT/
SOURCEDIR=/opt/ffmpeg-$MINGW_CHOST
SOURCELIB_DIR=$MINGW_PREFIX/bin

echo TARGET_DIR=$TARGET_DIR
echo SOURCEDIR=$SOURCEDIR
echo SOURCELIB_DIR=$SOURCELIB_DIR

echo start copying...
install -v $SOURCEDIR/bin/* $TARGET_DIR
install -v $SOURCELIB_DIR/libcaca-0.dll $SOURCELIB_DIR/libopenal-1.dll $SOURCELIB_DIR/SDL2.dll $SOURCELIB_DIR/libcelt0-2.dll $SOURCELIB_DIR/libgsm.dll $SOURCELIB_DIR/libiconv-2.dll $SOURCELIB_DIR/libass-9.dll $SOURCELIB_DIR/libfontconfig-1.dll $SOURCELIB_DIR/libfreetype-6.dll $SOURCELIB_DIR/libwinpthread-1.dll $SOURCELIB_DIR/libmfx-1.dll $SOURCELIB_DIR/libbluray-2.dll $SOURCELIB_DIR/liblzma-5.dll $SOURCELIB_DIR/libmp3lame-0.dll $SOURCELIB_DIR/libopencore-amrnb-0.dll $SOURCELIB_DIR/libopencore-amrwb-0.dll $SOURCELIB_DIR/libbz2-1.dll $SOURCELIB_DIR/libgnutls-30.dll $SOURCELIB_DIR/librtmp-1.dll $SOURCELIB_DIR/libmodplug-1.dll $SOURCELIB_DIR/libopenjp2-7.dll $SOURCELIB_DIR/libopus-0.dll $SOURCELIB_DIR/libspeex-1.dll $SOURCELIB_DIR/libtheoradec-1.dll $SOURCELIB_DIR/libtheoraenc-1.dll $SOURCELIB_DIR/libvorbis-0.dll $SOURCELIB_DIR/libvorbisenc-2.dll $SOURCELIB_DIR/libvpx-1.dll $SOURCELIB_DIR/libwavpack-1.dll $SOURCELIB_DIR/libwebp-7.dll $SOURCELIB_DIR/libwebpmux-3.dll $SOURCELIB_DIR/libx264-159.dll $SOURCELIB_DIR/zlib1.dll $SOURCELIB_DIR/libstdc++-6.dll $SOURCELIB_DIR/libxml2-2.dll $SOURCELIB_DIR/libx265.dll $SOURCELIB_DIR/xvidcore.dll $SOURCELIB_DIR/libogg-0.dll $SOURCELIB_DIR/libfribidi-0.dll $SOURCELIB_DIR/libharfbuzz-0.dll $SOURCELIB_DIR/libpng16-16.dll $SOURCELIB_DIR/libgmp-10.dll $SOURCELIB_DIR/libhogweed-6.dll $SOURCELIB_DIR/libnettle-8.dll $SOURCELIB_DIR/libglib-2.0-0.dll $SOURCELIB_DIR/libgraphite2.dll $SOURCELIB_DIR/libpcre-1.dll $SOURCELIB_DIR/libintl-8.dll $SOURCELIB_DIR/libexpat-1.dll $SOURCELIB_DIR/libidn2-0.dll $SOURCELIB_DIR/libp11-kit-0.dll $SOURCELIB_DIR/libtasn1-6.dll $SOURCELIB_DIR/libunistring-2.dll $SOURCELIB_DIR/libffi-7.dll $SOURCELIB_DIR/libbrotlidec.dll $SOURCELIB_DIR/libbrotlienc.dll $SOURCELIB_DIR/libbrotlicommon.dll $TARGET_DIR

if [[ -f "$SOURCELIB_DIR/libgcc_s_dw2-1.dll" ]]; then
  install -v  $SOURCELIB_DIR/libgcc_s_dw2-1.dll $TARGET_DIR
fi

if [[ -f "$SOURCELIB_DIR/libgcc_s_seh-1.dll" ]]; then
  install -v  $SOURCELIB_DIR/libgcc_s_seh-1.dll $TARGET_DIR
fi


echo finished