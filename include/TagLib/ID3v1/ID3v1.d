/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

module TagLib.ID3v1.ID3v1;

static import TagLibD_im;

static import std.conv;
static import std.string;
import std.conv;
import std.string;
import core.stdc.stdlib;
static import TagLib.TagLib;
static import TagLib.TagLib;


class StringHandler {
  private void* swigCPtr;
  protected bool swigCMemOwn;

  public this(void* cObject, bool ownCObject) {
    swigCPtr = cObject;
    swigCMemOwn = ownCObject;
  }

  public static void* swigGetCPtr(StringHandler obj) {
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
          TagLibD_im.delete_TagLib_ID3v1_StringHandler(cast(void*)swigCPtr);
        }
        swigCPtr = null;
      }
    }
  }

  public string parse(TagLib.TagLib.ByteVector data) const {
        char* cstr = TagLibD_im.TagLib_ID3v1_StringHandler_parse(cast(void*)swigCPtr, TagLib.TagLib.ByteVector.swigGetCPtr(data));
        string tmp;
        try
            tmp = to!string(cstr);
        finally
            free(cstr);
        return tmp;
    }

  public TagLib.TagLib.ByteVector render(string s) const {
    TagLib.TagLib.ByteVector ret = new TagLib.TagLib.ByteVector(TagLibD_im.TagLib_ID3v1_StringHandler_render(cast(void*)swigCPtr, cast(char*)toStringz(s)), true);
    return ret;
  }

  public this() {
    this(TagLibD_im.new_TagLib_ID3v1_StringHandler(), true);
  }
}

class Tag : TagLib.TagLib.Tag {
  private void* swigCPtr;

  public this(void* cObject, bool ownCObject) {
    super(TagLibD_im.TagLib_ID3v1_Tag_Upcast(cObject), ownCObject);
    swigCPtr = cObject;
  }

  public static void* swigGetCPtr(Tag obj) {
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
          TagLibD_im.delete_TagLib_ID3v1_Tag(cast(void*)swigCPtr);
        }
        swigCPtr = null;
        super.dispose();
      }
    }
  }

  public this() {
    this(TagLibD_im.new_TagLib_ID3v1_Tag__SWIG_0(), true);
  }

  public this(TagLib.TagLib.File file, int tagOffset) {
    this(TagLibD_im.new_TagLib_ID3v1_Tag__SWIG_1(TagLib.TagLib.File.swigGetCPtr(file), tagOffset), true);
  }

  public TagLib.TagLib.ByteVector render() const {
    TagLib.TagLib.ByteVector ret = new TagLib.TagLib.ByteVector(TagLibD_im.TagLib_ID3v1_Tag_render(cast(void*)swigCPtr), true);
    return ret;
  }

  public static TagLib.TagLib.ByteVector fileIdentifier() {
    TagLib.TagLib.ByteVector ret = new TagLib.TagLib.ByteVector(TagLibD_im.TagLib_ID3v1_Tag_fileIdentifier(), true);
    return ret;
  }

  @property string title() const {
        char* cstr = TagLibD_im.TagLib_ID3v1_Tag_title__SWIG_0(cast(void*)swigCPtr);
        string tmp;
        try
            tmp = to!string(cstr);
        finally
            free(cstr);
        return tmp;
    }

  @property string artist() const {
        char* cstr = TagLibD_im.TagLib_ID3v1_Tag_artist__SWIG_0(cast(void*)swigCPtr);
        string tmp;
        try
            tmp = to!string(cstr);
        finally
            free(cstr);
        return tmp;
    }

  @property string album() const {
        char* cstr = TagLibD_im.TagLib_ID3v1_Tag_album__SWIG_0(cast(void*)swigCPtr);
        string tmp;
        try
            tmp = to!string(cstr);
        finally
            free(cstr);
        return tmp;
    }

  @property string comment() const {
        char* cstr = TagLibD_im.TagLib_ID3v1_Tag_comment__SWIG_0(cast(void*)swigCPtr);
        string tmp;
        try
            tmp = to!string(cstr);
        finally
            free(cstr);
        return tmp;
    }

  @property string genre() const {
        char* cstr = TagLibD_im.TagLib_ID3v1_Tag_genre__SWIG_0(cast(void*)swigCPtr);
        string tmp;
        try
            tmp = to!string(cstr);
        finally
            free(cstr);
        return tmp;
    }

  @property uint year() const {
    auto ret = TagLibD_im.TagLib_ID3v1_Tag_year__SWIG_0(cast(void*)swigCPtr);
    return ret;
  }

  @property uint track() const {
    auto ret = TagLibD_im.TagLib_ID3v1_Tag_track__SWIG_0(cast(void*)swigCPtr);
    return ret;
  }

  @property void title(string s) {
    TagLibD_im.TagLib_ID3v1_Tag_title__SWIG_1(cast(void*)swigCPtr, cast(char*)toStringz(s));
  }

  @property void artist(string s) {
    TagLibD_im.TagLib_ID3v1_Tag_artist__SWIG_1(cast(void*)swigCPtr, cast(char*)toStringz(s));
  }

  @property void album(string s) {
    TagLibD_im.TagLib_ID3v1_Tag_album__SWIG_1(cast(void*)swigCPtr, cast(char*)toStringz(s));
  }

  @property void comment(string s) {
    TagLibD_im.TagLib_ID3v1_Tag_comment__SWIG_1(cast(void*)swigCPtr, cast(char*)toStringz(s));
  }

  @property void genre(string s) {
    TagLibD_im.TagLib_ID3v1_Tag_genre__SWIG_1(cast(void*)swigCPtr, cast(char*)toStringz(s));
  }

  @property void year(uint i) {
    TagLibD_im.TagLib_ID3v1_Tag_year__SWIG_1(cast(void*)swigCPtr, i);
  }

  @property void track(uint i) {
    TagLibD_im.TagLib_ID3v1_Tag_track__SWIG_1(cast(void*)swigCPtr, i);
  }

  public static void setStringHandler(StringHandler handler) {
    TagLibD_im.TagLib_ID3v1_Tag_setStringHandler(StringHandler.swigGetCPtr(handler));
  }
}
