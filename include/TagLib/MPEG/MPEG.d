/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

module TagLib.MPEG.MPEG;

static import TagLibD_im;

static import std.conv;
static import std.string;
import std.conv;
import std.string;
import core.stdc.stdlib;
static import TagLib.TagLib;
static import TagLib.TagLib;
static import TagLib.TagLib;
static import TagLib.TagLib;
static import TagLib.ID3v2.ID3v2;
static import TagLib.ID3v1.ID3v1;
static import TagLib.APE.APE;


class XingHeader {
  private void* swigCPtr;
  protected bool swigCMemOwn;

  public this(void* cObject, bool ownCObject) {
    swigCPtr = cObject;
    swigCMemOwn = ownCObject;
  }

  public static void* swigGetCPtr(XingHeader obj) {
    return (obj is null) ? null : obj.swigCPtr;
  }

  mixin TagLibD_im.SwigOperatorDefinitions;

  ~this() {
    dispose();
  }

  public void dispose() {
    synchronized(this) {
      if (swigCPtr !is null) {
        if (swigCMemOwn) {
          swigCMemOwn = false;
          TagLibD_im.delete_TagLib_MPEG_XingHeader(cast(void*)swigCPtr);
        }
        swigCPtr = null;
      }
    }
  }

  public this(TagLib.TagLib.ByteVector data) {
    this(TagLibD_im.new_TagLib_MPEG_XingHeader(TagLib.TagLib.ByteVector.swigGetCPtr(data)), true);
    if (TagLibD_im.SwigPendingException.isPending) throw TagLibD_im.SwigPendingException.retrieve();
  }

  public bool isValid() const {
    bool ret = TagLibD_im.TagLib_MPEG_XingHeader_isValid(cast(void*)swigCPtr) ? true : false;
    return ret;
  }

  public uint totalFrames() const {
    auto ret = TagLibD_im.TagLib_MPEG_XingHeader_totalFrames(cast(void*)swigCPtr);
    return ret;
  }

  public uint totalSize() const {
    auto ret = TagLibD_im.TagLib_MPEG_XingHeader_totalSize(cast(void*)swigCPtr);
    return ret;
  }

  public static int xingHeaderOffset(Header.Version v, Header.ChannelMode c) {
    auto ret = TagLibD_im.TagLib_MPEG_XingHeader_xingHeaderOffset(cast(int)v, cast(int)c);
    return ret;
  }
}

class Properties : TagLib.TagLib.AudioProperties {
  private void* swigCPtr;

  public this(void* cObject, bool ownCObject) {
    super(TagLibD_im.TagLib_MPEG_Properties_Upcast(cObject), ownCObject);
    swigCPtr = cObject;
  }

  public static void* swigGetCPtr(Properties obj) {
    return (obj is null) ? null : obj.swigCPtr;
  }

  mixin TagLibD_im.SwigOperatorDefinitions;

  ~this() {
    dispose();
  }

  public override void dispose() {
    synchronized(this) {
      if (swigCPtr !is null) {
        if (swigCMemOwn) {
          swigCMemOwn = false;
          TagLibD_im.delete_TagLib_MPEG_Properties(cast(void*)swigCPtr);
        }
        swigCPtr = null;
        super.dispose();
      }
    }
  }

  public this(File file, TagLib.TagLib.AudioProperties.ReadStyle style) {
    this(TagLibD_im.new_TagLib_MPEG_Properties__SWIG_0(File.swigGetCPtr(file), cast(int)style), true);
  }

  public this(File file) {
    this(TagLibD_im.new_TagLib_MPEG_Properties__SWIG_1(File.swigGetCPtr(file)), true);
  }

  @property int length() const {
    auto ret = TagLibD_im.TagLib_MPEG_Properties_length(cast(void*)swigCPtr);
    return ret;
  }

  @property int bitrate() const {
    auto ret = TagLibD_im.TagLib_MPEG_Properties_bitrate(cast(void*)swigCPtr);
    return ret;
  }

  @property int sampleRate() const {
    auto ret = TagLibD_im.TagLib_MPEG_Properties_sampleRate(cast(void*)swigCPtr);
    return ret;
  }

  @property int channels() const {
    auto ret = TagLibD_im.TagLib_MPEG_Properties_channels(cast(void*)swigCPtr);
    return ret;
  }

  public XingHeader xingHeader() const {
    void* cPtr = TagLibD_im.TagLib_MPEG_Properties_xingHeader(cast(void*)swigCPtr);
    XingHeader ret = (cPtr is null) ? null : new XingHeader(cPtr, false);
    return ret;
  }

  public Header.Version _version() const {
    Header.Version ret = cast(Header.Version)TagLibD_im.TagLib_MPEG_Properties__version(cast(void*)swigCPtr);
    return ret;
  }

  public int layer() const {
    auto ret = TagLibD_im.TagLib_MPEG_Properties_layer(cast(void*)swigCPtr);
    return ret;
  }

  public bool protectionEnabled() const {
    bool ret = TagLibD_im.TagLib_MPEG_Properties_protectionEnabled(cast(void*)swigCPtr) ? true : false;
    return ret;
  }

  public Header.ChannelMode channelMode() const {
    Header.ChannelMode ret = cast(Header.ChannelMode)TagLibD_im.TagLib_MPEG_Properties_channelMode(cast(void*)swigCPtr);
    return ret;
  }

  public bool isCopyrighted() const {
    bool ret = TagLibD_im.TagLib_MPEG_Properties_isCopyrighted(cast(void*)swigCPtr) ? true : false;
    return ret;
  }

  public bool isOriginal() const {
    bool ret = TagLibD_im.TagLib_MPEG_Properties_isOriginal(cast(void*)swigCPtr) ? true : false;
    return ret;
  }
}

class Header {
  private void* swigCPtr;
  protected bool swigCMemOwn;

  public this(void* cObject, bool ownCObject) {
    swigCPtr = cObject;
    swigCMemOwn = ownCObject;
  }

  public static void* swigGetCPtr(Header obj) {
    return (obj is null) ? null : obj.swigCPtr;
  }

  mixin TagLibD_im.SwigOperatorDefinitions;

  ~this() {
    dispose();
  }

  public void dispose() {
    synchronized(this) {
      if (swigCPtr !is null) {
        if (swigCMemOwn) {
          swigCMemOwn = false;
          TagLibD_im.delete_TagLib_MPEG_Header(cast(void*)swigCPtr);
        }
        swigCPtr = null;
      }
    }
  }

  enum Version {
    Version1 = 0,
    Version2 = 1,
    Version2_5 = 2
  }

  enum ChannelMode {
    Stereo = 0,
    JointStereo = 1,
    DualChannel = 2,
    SingleChannel = 3
  }

  public this(TagLib.TagLib.ByteVector data) {
    this(TagLibD_im.new_TagLib_MPEG_Header__SWIG_0(TagLib.TagLib.ByteVector.swigGetCPtr(data)), true);
    if (TagLibD_im.SwigPendingException.isPending) throw TagLibD_im.SwigPendingException.retrieve();
  }

  public this(Header h) {
    this(TagLibD_im.new_TagLib_MPEG_Header__SWIG_1(Header.swigGetCPtr(h)), true);
    if (TagLibD_im.SwigPendingException.isPending) throw TagLibD_im.SwigPendingException.retrieve();
  }

  public bool isValid() const {
    bool ret = TagLibD_im.TagLib_MPEG_Header_isValid(cast(void*)swigCPtr) ? true : false;
    return ret;
  }

  public Header.Version _version() const {
    Header.Version ret = cast(Header.Version)TagLibD_im.TagLib_MPEG_Header__version(cast(void*)swigCPtr);
    return ret;
  }

  public int layer() const {
    auto ret = TagLibD_im.TagLib_MPEG_Header_layer(cast(void*)swigCPtr);
    return ret;
  }

  public bool protectionEnabled() const {
    bool ret = TagLibD_im.TagLib_MPEG_Header_protectionEnabled(cast(void*)swigCPtr) ? true : false;
    return ret;
  }

  public int bitrate() const {
    auto ret = TagLibD_im.TagLib_MPEG_Header_bitrate(cast(void*)swigCPtr);
    return ret;
  }

  public int sampleRate() const {
    auto ret = TagLibD_im.TagLib_MPEG_Header_sampleRate(cast(void*)swigCPtr);
    return ret;
  }

  public bool isPadded() const {
    bool ret = TagLibD_im.TagLib_MPEG_Header_isPadded(cast(void*)swigCPtr) ? true : false;
    return ret;
  }

  public Header.ChannelMode channelMode() const {
    Header.ChannelMode ret = cast(Header.ChannelMode)TagLibD_im.TagLib_MPEG_Header_channelMode(cast(void*)swigCPtr);
    return ret;
  }

  public bool isCopyrighted() const {
    bool ret = TagLibD_im.TagLib_MPEG_Header_isCopyrighted(cast(void*)swigCPtr) ? true : false;
    return ret;
  }

  public bool isOriginal() const {
    bool ret = TagLibD_im.TagLib_MPEG_Header_isOriginal(cast(void*)swigCPtr) ? true : false;
    return ret;
  }

  public int frameLength() const {
    auto ret = TagLibD_im.TagLib_MPEG_Header_frameLength(cast(void*)swigCPtr);
    return ret;
  }

  public int samplesPerFrame() const {
    auto ret = TagLibD_im.TagLib_MPEG_Header_samplesPerFrame(cast(void*)swigCPtr);
    return ret;
  }
}

class File : TagLib.TagLib.File {
  private void* swigCPtr;

  public this(void* cObject, bool ownCObject) {
    super(TagLibD_im.TagLib_MPEG_File_Upcast(cObject), ownCObject);
    swigCPtr = cObject;
  }

  public static void* swigGetCPtr(File obj) {
    return (obj is null) ? null : obj.swigCPtr;
  }

  mixin TagLibD_im.SwigOperatorDefinitions;

  ~this() {
    dispose();
  }

  public override void dispose() {
    synchronized(this) {
      if (swigCPtr !is null) {
        if (swigCMemOwn) {
          swigCMemOwn = false;
          TagLibD_im.delete_TagLib_MPEG_File(cast(void*)swigCPtr);
        }
        swigCPtr = null;
        super.dispose();
      }
    }
  }

  enum TagTypes {
    NoTags = 0x0000,
    ID3v1 = 0x0001,
    ID3v2 = 0x0002,
    APE = 0x0004,
    AllTags = 0xffff
  }

  public this(string file, bool readProperties, TagLib.TagLib.AudioProperties.ReadStyle propertiesStyle) {
    this(TagLibD_im.new_TagLib_MPEG_File__SWIG_0(std.string.toStringz(file), readProperties, cast(int)propertiesStyle), true);
  }

  public this(string file, bool readProperties) {
    this(TagLibD_im.new_TagLib_MPEG_File__SWIG_1(std.string.toStringz(file), readProperties), true);
  }

  public this(string file) {
    this(TagLibD_im.new_TagLib_MPEG_File__SWIG_2(std.string.toStringz(file)), true);
  }

  public this(string file, TagLib.ID3v2.ID3v2.FrameFactory frameFactory, bool readProperties, TagLib.TagLib.AudioProperties.ReadStyle propertiesStyle) {
    this(TagLibD_im.new_TagLib_MPEG_File__SWIG_3(std.string.toStringz(file), TagLib.ID3v2.ID3v2.FrameFactory.swigGetCPtr(frameFactory), readProperties, cast(int)propertiesStyle), true);
  }

  public this(string file, TagLib.ID3v2.ID3v2.FrameFactory frameFactory, bool readProperties) {
    this(TagLibD_im.new_TagLib_MPEG_File__SWIG_4(std.string.toStringz(file), TagLib.ID3v2.ID3v2.FrameFactory.swigGetCPtr(frameFactory), readProperties), true);
  }

  public this(string file, TagLib.ID3v2.ID3v2.FrameFactory frameFactory) {
    this(TagLibD_im.new_TagLib_MPEG_File__SWIG_5(std.string.toStringz(file), TagLib.ID3v2.ID3v2.FrameFactory.swigGetCPtr(frameFactory)), true);
  }

  public override TagLib.TagLib.Tag tag() const {
    void* cPtr = TagLibD_im.TagLib_MPEG_File_tag(cast(void*)swigCPtr);
    TagLib.TagLib.Tag ret = (cPtr is null) ? null : new TagLib.TagLib.Tag(cPtr, false);
    return ret;
  }

  public override Properties audioProperties() const {
    void* cPtr = TagLibD_im.TagLib_MPEG_File_audioProperties(cast(void*)swigCPtr);
    Properties ret = (cPtr is null) ? null : new Properties(cPtr, false);
    return ret;
  }

  public override bool save() {
    bool ret = TagLibD_im.TagLib_MPEG_File_save__SWIG_0(cast(void*)swigCPtr) ? true : false;
    return ret;
  }

  public bool save(int tags) {
    bool ret = TagLibD_im.TagLib_MPEG_File_save__SWIG_1(cast(void*)swigCPtr, tags) ? true : false;
    return ret;
  }

  public bool save(int tags, bool stripOthers) {
    bool ret = TagLibD_im.TagLib_MPEG_File_save__SWIG_2(cast(void*)swigCPtr, tags, stripOthers) ? true : false;
    return ret;
  }

  alias TagLib.TagLib.File.save save;

  public TagLib.ID3v2.ID3v2.Tag ID3v2Tag(bool create) {
    void* cPtr = TagLibD_im.TagLib_MPEG_File_ID3v2Tag__SWIG_0(cast(void*)swigCPtr, create);
    TagLib.ID3v2.ID3v2.Tag ret = (cPtr is null) ? null : new TagLib.ID3v2.ID3v2.Tag(cPtr, false);
    return ret;
  }

  public TagLib.ID3v2.ID3v2.Tag ID3v2Tag() {
    void* cPtr = TagLibD_im.TagLib_MPEG_File_ID3v2Tag__SWIG_1(cast(void*)swigCPtr);
    TagLib.ID3v2.ID3v2.Tag ret = (cPtr is null) ? null : new TagLib.ID3v2.ID3v2.Tag(cPtr, false);
    return ret;
  }

  public TagLib.ID3v1.ID3v1.Tag ID3v1Tag(bool create) {
    void* cPtr = TagLibD_im.TagLib_MPEG_File_ID3v1Tag__SWIG_0(cast(void*)swigCPtr, create);
    TagLib.ID3v1.ID3v1.Tag ret = (cPtr is null) ? null : new TagLib.ID3v1.ID3v1.Tag(cPtr, false);
    return ret;
  }

  public TagLib.ID3v1.ID3v1.Tag ID3v1Tag() {
    void* cPtr = TagLibD_im.TagLib_MPEG_File_ID3v1Tag__SWIG_1(cast(void*)swigCPtr);
    TagLib.ID3v1.ID3v1.Tag ret = (cPtr is null) ? null : new TagLib.ID3v1.ID3v1.Tag(cPtr, false);
    return ret;
  }

  public TagLib.APE.APE.Tag APETag(bool create) {
    void* cPtr = TagLibD_im.TagLib_MPEG_File_APETag__SWIG_0(cast(void*)swigCPtr, create);
    TagLib.APE.APE.Tag ret = (cPtr is null) ? null : new TagLib.APE.APE.Tag(cPtr, false);
    return ret;
  }

  public TagLib.APE.APE.Tag APETag() {
    void* cPtr = TagLibD_im.TagLib_MPEG_File_APETag__SWIG_1(cast(void*)swigCPtr);
    TagLib.APE.APE.Tag ret = (cPtr is null) ? null : new TagLib.APE.APE.Tag(cPtr, false);
    return ret;
  }

  public bool strip(int tags) {
    bool ret = TagLibD_im.TagLib_MPEG_File_strip__SWIG_0(cast(void*)swigCPtr, tags) ? true : false;
    return ret;
  }

  public bool strip() {
    bool ret = TagLibD_im.TagLib_MPEG_File_strip__SWIG_1(cast(void*)swigCPtr) ? true : false;
    return ret;
  }

  public bool strip(int tags, bool freeMemory) {
    bool ret = TagLibD_im.TagLib_MPEG_File_strip__SWIG_2(cast(void*)swigCPtr, tags, freeMemory) ? true : false;
    return ret;
  }

  public void setID3v2FrameFactory(TagLib.ID3v2.ID3v2.FrameFactory factory) {
    TagLibD_im.TagLib_MPEG_File_setID3v2FrameFactory(cast(void*)swigCPtr, TagLib.ID3v2.ID3v2.FrameFactory.swigGetCPtr(factory));
  }

  public int firstFrameOffset() {
    auto ret = TagLibD_im.TagLib_MPEG_File_firstFrameOffset(cast(void*)swigCPtr);
    return ret;
  }

  public int nextFrameOffset(int position) {
    auto ret = TagLibD_im.TagLib_MPEG_File_nextFrameOffset(cast(void*)swigCPtr, position);
    return ret;
  }

  public int previousFrameOffset(int position) {
    auto ret = TagLibD_im.TagLib_MPEG_File_previousFrameOffset(cast(void*)swigCPtr, position);
    return ret;
  }

  public int lastFrameOffset() {
    auto ret = TagLibD_im.TagLib_MPEG_File_lastFrameOffset(cast(void*)swigCPtr);
    return ret;
  }
}
