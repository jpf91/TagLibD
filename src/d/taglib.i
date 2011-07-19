%module(allprotected=1, directors="1") TagLibD;

%{
    //TagLib
    #include "taglib/tbytevector.h"
    #include "taglib/tstring.h"
    #include "taglib/taglib.h"
    #include "taglib/tlist.h"
    #include "taglib/taglib_export.h"
    #include "taglib/tmap.h"
    #include "taglib/tbytevectorlist.h"
    #include "taglib/tstringlist.h"
    #include "taglib/audioproperties.h"
    #include "taglib/tag.h"
    #include "taglib/tfile.h"
    #include "taglib/fileref.h"

    //TagLib::APE
    #include "taglib/apefooter.h"
    #include "taglib/apeitem.h"
    #include "taglib/apetag.h"

    //TagLib::ASF
    #include "taglib/asfattribute.h"
    #include "taglib/asfproperties.h"
    #include "taglib/asffile.h"
    #include "taglib/asftag.h"

    //TagLib::FLAC
    #include "taglib/flacproperties.h"
    #include "taglib/flacfile.h"

    //TagLib::ID3v1
    #include "taglib/id3v1genres.h"
    #include "taglib/id3v1tag.h"

    //TagLib::ID3v2
    #include "taglib/id3v2frame.h"
    #include "taglib/id3v2header.h"
    #include "taglib/id3v2footer.h"
    #include "taglib/id3v2framefactory.h"
    #include "taglib/id3v2tag.h"
    #include "taglib/id3v2extendedheader.h"
    #include "taglib/attachedpictureframe.h"
    #include "taglib/commentsframe.h"
    #include "taglib/generalencapsulatedobjectframe.h"
    #include "taglib/popularimeterframe.h"
    #include "taglib/privateframe.h"
    #include "taglib/relativevolumeframe.h"
    #include "taglib/textidentificationframe.h"
    #include "taglib/uniquefileidentifierframe.h"
    #include "taglib/unsynchronizedlyricsframe.h"
    #include "taglib/urllinkframe.h"

    //TagLib::ID3v2::SynchData
    #include "taglib/id3v2synchdata.h"

    //TagLib::MP4
    #include "taglib/mp4coverart.h"
    #include "taglib/mp4file.h"
    #include "taglib/mp4item.h"
    #include "taglib/mp4properties.h"
    #include "taglib/mp4tag.h"

    //TagLib::MPC
    #include "taglib/mpcproperties.h"
    #include "taglib/mpcfile.h"

    //TagLib::MPEG
    #include "taglib/xingheader.h"
    #include "taglib/mpegproperties.h"
    #include "taglib/mpegheader.h"
    #include "taglib/mpegfile.h"

    //TagLib::Ogg
    #include "taglib/oggpage.h"
    #include "taglib/oggpageheader.h"
    #include "taglib/xiphcomment.h"
    #include "taglib/oggfile.h"

    //TagLib::Ogg::FLAC
    #include "taglib/oggflacfile.h"

    //TagLib::Ogg::Speex
    #include "taglib/speexproperties.h"
    #include "taglib/speexfile.h"

    //TagLib::Ogg::Vorbis
    #include "taglib/vorbisproperties.h"
    #include "taglib/vorbisfile.h"

    //TagLib::RIFF
    #include "taglib/rifffile.h"

    //TagLib::RIFF:AIFF
    #include "taglib/aiffproperties.h"
    #include "taglib/aifffile.h"

    //TagLib::RIFF:WAV
    #include "taglib/wavproperties.h"
    #include "taglib/wavfile.h"

    //TagLib::TrueAudio
    #include "taglib/trueaudioproperties.h"
    #include "taglib/trueaudiofile.h"

    //TagLib::WavPack
    #include "taglib/wavpackproperties.h"
    #include "taglib/wavpackfile.h"
%}

//Forward declarations
class TagLib::ID3v2::Frame;

//custom D code
%include "fileref.d"

%import "std_string.i"

%include "../headers/taglib_export.h"
%include "../headers/taglib.h"

//TagLib
%include "../headers/tbytevector.h"
%include "../headers/tstring.h"
%include "../headers/tlist.h"
%include "../headers/tmap.h"
%include "../headers/tbytevectorlist.h"
%include "../headers/tstringlist.h"
%include "../headers/audioproperties.h"
%include "../headers/tag.h"
%include "../headers/tfile.h"
%include "../headers/fileref.h"

//TagLib::APE
%include "../headers/apefooter.h"
%include "../headers/apeitem.h"
%include "../headers/apetag.h"

//TagLib::ASF
%include "../headers/asfattribute.h"
%include "../headers/asfproperties.h"
%include "../headers/asffile.h"
%include "../headers/asftag.h"

//TagLib::FLAC
%include "../headers/flacproperties.h"
%include "../headers/flacfile.h"

//TagLib::ID3v1
%include "../headers/id3v1genres.h"
%include "../headers/id3v1tag.h"

//TagLib::ID3v2
%include "../headers/id3v2frame.h"
%include "../headers/id3v2header.h"
%include "../headers/id3v2extendedheader.h"
%include "../headers/id3v2footer.h"
%include "../headers/id3v2framefactory.h"
%include "../headers/id3v2tag.h"
%include "../headers/attachedpictureframe.h"
%include "../headers/commentsframe.h"
%include "../headers/generalencapsulatedobjectframe.h"
%include "../headers/popularimeterframe.h"
%include "../headers/privateframe.h"
%include "../headers/relativevolumeframe.h"
%include "../headers/textidentificationframe.h"
%include "../headers/uniquefileidentifierframe.h"
%include "../headers/unsynchronizedlyricsframe.h"
%include "../headers/urllinkframe.h"

//TagLib::ID3v2::SynchData
%include "../headers/id3v2synchdata.h"

//TagLib::MP4
%include "../headers/mp4coverart.h"
%include "../headers/mp4file.h"
%include "../headers/mp4item.h"
%include "../headers/mp4properties.h"
%include "../headers/mp4tag.h"

//TagLib::MPC
%include "../headers/mpcproperties.h"
%include "../headers/mpcfile.h"

//TagLib::MPEG
%include "../headers/xingheader.h"
%include "../headers/mpegproperties.h"
%include "../headers/mpegheader.h"
%include "../headers/mpegfile.h"

//TagLib::Ogg
%include "../headers/oggpage.h"
%include "../headers/oggpageheader.h"
%include "../headers/xiphcomment.h"
%include "../headers/oggfile.h"

//TagLib::Ogg::FLAC
%include "../headers/oggflacfile.h"

//TagLib::Ogg::Speex
%include "../headers/speexproperties.h"
%include "../headers/speexfile.h"

//TagLib::Ogg::Vorbis
%include "../headers/vorbisproperties.h"
%include "../headers/vorbisfile.h"

//TagLib::RIFF
%include "../headers/rifffile.h"

//TagLib::RIFF:AIFF
%include "../headers/aiffproperties.h"
%include "../headers/aifffile.h"

//TagLib::RIFF:WAV
%include "../headers/wavproperties.h"
%include "../headers/wavfile.h"

//TagLib::TrueAudio
%include "../headers/trueaudioproperties.h"
%include "../headers/trueaudiofile.h"

//TagLib::WavPack
%include "../headers/wavpackproperties.h"
%include "../headers/wavpackfile.h"
