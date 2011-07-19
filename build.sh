#!/bin/sh
cd generated/cpp
echo "Removing old files"
rm -rf ../../include/*
echo "Running swig"
swig2.0 -Wall -d -d2 -c++ -outcurrentdir -outdir ../../include ../../src/d/taglib.i
echo "C++ Part"
g++ taglib_wrap.cxx -fPIC -shared -Wl,-soname,TagLibD_wrap.0 -o libTagLibD_wrap.so -ltag -w
mv libTagLibD_wrap.so ../../bin
echo "D Part"
cd ../../include
dmd TagLibD.d TagLibD_im.d  TagLib/TagLib.d TagLib/APE/APE.d TagLib/ASF/ASF.d TagLib/FLAC/FLAC.d TagLib/ID3v1/ID3v1.d TagLib/ID3v2/ID3v2.d TagLib/MP4/MP4.d TagLib/MPC/MPC.d TagLib/MPEG/MPEG.d TagLib/Ogg/Ogg.d TagLib/RIFF/RIFF.d TagLib/TrueAudio/TrueAudio.d TagLib/Vorbis/Vorbis.d TagLib/WavPack/WavPack.d -lib -of../bin/libTagLibD.a
