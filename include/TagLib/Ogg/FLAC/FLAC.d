/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

module TagLib.Ogg.FLAC.FLAC;

static import TagLibD_im;

static import std.conv;
static import std.string;
import std.conv;
import std.string;
import core.stdc.stdlib;
static import TagLib.TagLib;
static import TagLib.Ogg.Ogg;
static import TagLib.FLAC.FLAC;


class File : TagLib.Ogg.Ogg.File {
  private void* swigCPtr;

  public this(void* cObject, bool ownCObject) {
    super(TagLibD_im.TagLib_Ogg_FLAC_File_Upcast(cObject), ownCObject);
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
          TagLibD_im.delete_TagLib_Ogg_FLAC_File(cast(void*)swigCPtr);
        }
        swigCPtr = null;
        super.dispose();
      }
    }
  }

  public this(string file, bool readProperties, TagLib.TagLib.AudioProperties.ReadStyle propertiesStyle) {
    this(TagLibD_im.new_TagLib_Ogg_FLAC_File__SWIG_0(std.string.toStringz(file), readProperties, cast(int)propertiesStyle), true);
  }

  public this(string file, bool readProperties) {
    this(TagLibD_im.new_TagLib_Ogg_FLAC_File__SWIG_1(std.string.toStringz(file), readProperties), true);
  }

  public this(string file) {
    this(TagLibD_im.new_TagLib_Ogg_FLAC_File__SWIG_2(std.string.toStringz(file)), true);
  }

  public override TagLib.Ogg.Ogg.XiphComment tag() const {
    void* cPtr = TagLibD_im.TagLib_Ogg_FLAC_File_tag(cast(void*)swigCPtr);
    TagLib.Ogg.Ogg.XiphComment ret = (cPtr is null) ? null : new TagLib.Ogg.Ogg.XiphComment(cPtr, false);
    return ret;
  }

  public override TagLib.FLAC.FLAC.Properties audioProperties() const {
    void* cPtr = TagLibD_im.TagLib_Ogg_FLAC_File_audioProperties(cast(void*)swigCPtr);
    TagLib.FLAC.FLAC.Properties ret = (cPtr is null) ? null : new TagLib.FLAC.FLAC.Properties(cPtr, false);
    return ret;
  }

  public override bool save() {
    bool ret = TagLibD_im.TagLib_Ogg_FLAC_File_save(cast(void*)swigCPtr) ? true : false;
    return ret;
  }

  public int streamLength() {
    auto ret = TagLibD_im.TagLib_Ogg_FLAC_File_streamLength(cast(void*)swigCPtr);
    return ret;
  }
}
