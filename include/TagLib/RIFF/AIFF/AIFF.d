/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

module TagLib.RIFF.AIFF.AIFF;

static import TagLibD_im;

static import std.conv;
static import std.string;
import std.conv;
import std.string;
import core.stdc.stdlib;
static import TagLib.TagLib;
static import TagLib.TagLib;
static import TagLib.ID3v2.ID3v2;
static import TagLib.RIFF.RIFF;


class Properties : TagLib.TagLib.AudioProperties {
  private void* swigCPtr;

  public this(void* cObject, bool ownCObject) {
    super(TagLibD_im.TagLib_RIFF_AIFF_Properties_Upcast(cObject), ownCObject);
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
          TagLibD_im.delete_TagLib_RIFF_AIFF_Properties(cast(void*)swigCPtr);
        }
        swigCPtr = null;
        super.dispose();
      }
    }
  }

  public this(TagLib.TagLib.ByteVector data, TagLib.TagLib.AudioProperties.ReadStyle style) {
    this(TagLibD_im.new_TagLib_RIFF_AIFF_Properties(TagLib.TagLib.ByteVector.swigGetCPtr(data), cast(int)style), true);
    if (TagLibD_im.SwigPendingException.isPending) throw TagLibD_im.SwigPendingException.retrieve();
  }

  @property int length() const {
    auto ret = TagLibD_im.TagLib_RIFF_AIFF_Properties_length(cast(void*)swigCPtr);
    return ret;
  }

  @property int bitrate() const {
    auto ret = TagLibD_im.TagLib_RIFF_AIFF_Properties_bitrate(cast(void*)swigCPtr);
    return ret;
  }

  @property int sampleRate() const {
    auto ret = TagLibD_im.TagLib_RIFF_AIFF_Properties_sampleRate(cast(void*)swigCPtr);
    return ret;
  }

  @property int channels() const {
    auto ret = TagLibD_im.TagLib_RIFF_AIFF_Properties_channels(cast(void*)swigCPtr);
    return ret;
  }
}

class File : TagLib.RIFF.RIFF.File {
  private void* swigCPtr;

  public this(void* cObject, bool ownCObject) {
    super(TagLibD_im.TagLib_RIFF_AIFF_File_Upcast(cObject), ownCObject);
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
          TagLibD_im.delete_TagLib_RIFF_AIFF_File(cast(void*)swigCPtr);
        }
        swigCPtr = null;
        super.dispose();
      }
    }
  }

  public this(string file, bool readProperties, TagLib.TagLib.AudioProperties.ReadStyle propertiesStyle) {
    this(TagLibD_im.new_TagLib_RIFF_AIFF_File__SWIG_0(std.string.toStringz(file), readProperties, cast(int)propertiesStyle), true);
  }

  public this(string file, bool readProperties) {
    this(TagLibD_im.new_TagLib_RIFF_AIFF_File__SWIG_1(std.string.toStringz(file), readProperties), true);
  }

  public this(string file) {
    this(TagLibD_im.new_TagLib_RIFF_AIFF_File__SWIG_2(std.string.toStringz(file)), true);
  }

  public override TagLib.ID3v2.ID3v2.Tag tag() const {
    void* cPtr = TagLibD_im.TagLib_RIFF_AIFF_File_tag(cast(void*)swigCPtr);
    TagLib.ID3v2.ID3v2.Tag ret = (cPtr is null) ? null : new TagLib.ID3v2.ID3v2.Tag(cPtr, false);
    return ret;
  }

  public override Properties audioProperties() const {
    void* cPtr = TagLibD_im.TagLib_RIFF_AIFF_File_audioProperties(cast(void*)swigCPtr);
    Properties ret = (cPtr is null) ? null : new Properties(cPtr, false);
    return ret;
  }

  public override bool save() {
    bool ret = TagLibD_im.TagLib_RIFF_AIFF_File_save(cast(void*)swigCPtr) ? true : false;
    return ret;
  }
}
