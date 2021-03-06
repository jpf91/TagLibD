/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

module TagLib.FLAC.FLAC;

static import TagLibD_im;

static import std.conv;
static import std.string;
import std.conv;
import std.string;
import core.stdc.stdlib;
static import TagLib.TagLib;
static import TagLib.TagLib;
static import TagLib.ID3v2.ID3v2;
static import TagLib.ID3v1.ID3v1;
static import TagLib.Ogg.Ogg;


class Properties : TagLib.TagLib.AudioProperties {
  private void* swigCPtr;

  public this(void* cObject, bool ownCObject) {
    super(TagLibD_im.TagLib_FLAC_Properties_Upcast(cObject), ownCObject);
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
          TagLibD_im.delete_TagLib_FLAC_Properties(cast(void*)swigCPtr);
        }
        swigCPtr = null;
        super.dispose();
      }
    }
  }

  public this(TagLib.TagLib.ByteVector data, int streamLength, TagLib.TagLib.AudioProperties.ReadStyle style) {
    this(TagLibD_im.new_TagLib_FLAC_Properties__SWIG_0(TagLib.TagLib.ByteVector.swigGetCPtr(data), streamLength, cast(int)style), true);
    if (TagLibD_im.SwigPendingException.isPending) throw TagLibD_im.SwigPendingException.retrieve();
  }

  public this(TagLib.TagLib.ByteVector data, int streamLength) {
    this(TagLibD_im.new_TagLib_FLAC_Properties__SWIG_1(TagLib.TagLib.ByteVector.swigGetCPtr(data), streamLength), true);
    if (TagLibD_im.SwigPendingException.isPending) throw TagLibD_im.SwigPendingException.retrieve();
  }

  public this(File file, TagLib.TagLib.AudioProperties.ReadStyle style) {
    this(TagLibD_im.new_TagLib_FLAC_Properties__SWIG_2(File.swigGetCPtr(file), cast(int)style), true);
  }

  public this(File file) {
    this(TagLibD_im.new_TagLib_FLAC_Properties__SWIG_3(File.swigGetCPtr(file)), true);
  }

  @property int length() const {
    auto ret = TagLibD_im.TagLib_FLAC_Properties_length(cast(void*)swigCPtr);
    return ret;
  }

  @property int bitrate() const {
    auto ret = TagLibD_im.TagLib_FLAC_Properties_bitrate(cast(void*)swigCPtr);
    return ret;
  }

  @property int sampleRate() const {
    auto ret = TagLibD_im.TagLib_FLAC_Properties_sampleRate(cast(void*)swigCPtr);
    return ret;
  }

  @property int channels() const {
    auto ret = TagLibD_im.TagLib_FLAC_Properties_channels(cast(void*)swigCPtr);
    return ret;
  }

  public int sampleWidth() const {
    auto ret = TagLibD_im.TagLib_FLAC_Properties_sampleWidth(cast(void*)swigCPtr);
    return ret;
  }
}

class File : TagLib.TagLib.File {
  private void* swigCPtr;

  public this(void* cObject, bool ownCObject) {
    super(TagLibD_im.TagLib_FLAC_File_Upcast(cObject), ownCObject);
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
          TagLibD_im.delete_TagLib_FLAC_File(cast(void*)swigCPtr);
        }
        swigCPtr = null;
        super.dispose();
      }
    }
  }

  public this(string file, bool readProperties, TagLib.TagLib.AudioProperties.ReadStyle propertiesStyle) {
    this(TagLibD_im.new_TagLib_FLAC_File__SWIG_0(std.string.toStringz(file), readProperties, cast(int)propertiesStyle), true);
  }

  public this(string file, bool readProperties) {
    this(TagLibD_im.new_TagLib_FLAC_File__SWIG_1(std.string.toStringz(file), readProperties), true);
  }

  public this(string file) {
    this(TagLibD_im.new_TagLib_FLAC_File__SWIG_2(std.string.toStringz(file)), true);
  }

  public this(string file, TagLib.ID3v2.ID3v2.FrameFactory frameFactory, bool readProperties, TagLib.TagLib.AudioProperties.ReadStyle propertiesStyle) {
    this(TagLibD_im.new_TagLib_FLAC_File__SWIG_3(std.string.toStringz(file), TagLib.ID3v2.ID3v2.FrameFactory.swigGetCPtr(frameFactory), readProperties, cast(int)propertiesStyle), true);
  }

  public this(string file, TagLib.ID3v2.ID3v2.FrameFactory frameFactory, bool readProperties) {
    this(TagLibD_im.new_TagLib_FLAC_File__SWIG_4(std.string.toStringz(file), TagLib.ID3v2.ID3v2.FrameFactory.swigGetCPtr(frameFactory), readProperties), true);
  }

  public this(string file, TagLib.ID3v2.ID3v2.FrameFactory frameFactory) {
    this(TagLibD_im.new_TagLib_FLAC_File__SWIG_5(std.string.toStringz(file), TagLib.ID3v2.ID3v2.FrameFactory.swigGetCPtr(frameFactory)), true);
  }

  public override TagLib.TagLib.Tag tag() const {
    void* cPtr = TagLibD_im.TagLib_FLAC_File_tag(cast(void*)swigCPtr);
    TagLib.TagLib.Tag ret = (cPtr is null) ? null : new TagLib.TagLib.Tag(cPtr, false);
    return ret;
  }

  public override Properties audioProperties() const {
    void* cPtr = TagLibD_im.TagLib_FLAC_File_audioProperties(cast(void*)swigCPtr);
    Properties ret = (cPtr is null) ? null : new Properties(cPtr, false);
    return ret;
  }

  public override bool save() {
    bool ret = TagLibD_im.TagLib_FLAC_File_save(cast(void*)swigCPtr) ? true : false;
    return ret;
  }

  public TagLib.ID3v2.ID3v2.Tag ID3v2Tag(bool create) {
    void* cPtr = TagLibD_im.TagLib_FLAC_File_ID3v2Tag__SWIG_0(cast(void*)swigCPtr, create);
    TagLib.ID3v2.ID3v2.Tag ret = (cPtr is null) ? null : new TagLib.ID3v2.ID3v2.Tag(cPtr, false);
    return ret;
  }

  public TagLib.ID3v2.ID3v2.Tag ID3v2Tag() {
    void* cPtr = TagLibD_im.TagLib_FLAC_File_ID3v2Tag__SWIG_1(cast(void*)swigCPtr);
    TagLib.ID3v2.ID3v2.Tag ret = (cPtr is null) ? null : new TagLib.ID3v2.ID3v2.Tag(cPtr, false);
    return ret;
  }

  public TagLib.ID3v1.ID3v1.Tag ID3v1Tag(bool create) {
    void* cPtr = TagLibD_im.TagLib_FLAC_File_ID3v1Tag__SWIG_0(cast(void*)swigCPtr, create);
    TagLib.ID3v1.ID3v1.Tag ret = (cPtr is null) ? null : new TagLib.ID3v1.ID3v1.Tag(cPtr, false);
    return ret;
  }

  public TagLib.ID3v1.ID3v1.Tag ID3v1Tag() {
    void* cPtr = TagLibD_im.TagLib_FLAC_File_ID3v1Tag__SWIG_1(cast(void*)swigCPtr);
    TagLib.ID3v1.ID3v1.Tag ret = (cPtr is null) ? null : new TagLib.ID3v1.ID3v1.Tag(cPtr, false);
    return ret;
  }

  public TagLib.Ogg.Ogg.XiphComment xiphComment(bool create) {
    void* cPtr = TagLibD_im.TagLib_FLAC_File_xiphComment__SWIG_0(cast(void*)swigCPtr, create);
    TagLib.Ogg.Ogg.XiphComment ret = (cPtr is null) ? null : new TagLib.Ogg.Ogg.XiphComment(cPtr, false);
    return ret;
  }

  public TagLib.Ogg.Ogg.XiphComment xiphComment() {
    void* cPtr = TagLibD_im.TagLib_FLAC_File_xiphComment__SWIG_1(cast(void*)swigCPtr);
    TagLib.Ogg.Ogg.XiphComment ret = (cPtr is null) ? null : new TagLib.Ogg.Ogg.XiphComment(cPtr, false);
    return ret;
  }

  public void setID3v2FrameFactory(TagLib.ID3v2.ID3v2.FrameFactory factory) {
    TagLibD_im.TagLib_FLAC_File_setID3v2FrameFactory(cast(void*)swigCPtr, TagLib.ID3v2.ID3v2.FrameFactory.swigGetCPtr(factory));
  }

  public TagLib.TagLib.ByteVector streamInfoData() {
    TagLib.TagLib.ByteVector ret = new TagLib.TagLib.ByteVector(TagLibD_im.TagLib_FLAC_File_streamInfoData(cast(void*)swigCPtr), true);
    return ret;
  }

  public int streamLength() {
    auto ret = TagLibD_im.TagLib_FLAC_File_streamLength(cast(void*)swigCPtr);
    return ret;
  }
}
