/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.4
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

module TagLib.MP4.MP4;

static import TagLibD_im;

static import std.conv;
static import std.string;
import std.conv;
import std.string;
import core.stdc.stdlib;
static import TagLib.TagLib;
static import TagLib.TagLib;
static import TagLib.TagLib;
static import TagLibD;
static import TagLibD;
static import TagLib.TagLib;
static import TagLib.TagLib;
static import TagLibD;


class CoverArt {
  private void* swigCPtr;
  protected bool swigCMemOwn;

  public this(void* cObject, bool ownCObject) {
    swigCPtr = cObject;
    swigCMemOwn = ownCObject;
  }

  public static void* swigGetCPtr(CoverArt obj) {
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
          TagLibD_im.delete_TagLib_MP4_CoverArt(cast(void*)swigCPtr);
        }
        swigCPtr = null;
      }
    }
  }

  enum Format {
    JPEG = 0x0D,
    PNG = 0x0E
  }

  public this(CoverArt.Format format, TagLib.TagLib.ByteVector data) {
    this(TagLibD_im.new_TagLib_MP4_CoverArt__SWIG_0(cast(int)format, TagLib.TagLib.ByteVector.swigGetCPtr(data)), true);
    if (TagLibD_im.SwigPendingException.isPending) throw TagLibD_im.SwigPendingException.retrieve();
  }

  public this(CoverArt item) {
    this(TagLibD_im.new_TagLib_MP4_CoverArt__SWIG_1(CoverArt.swigGetCPtr(item)), true);
    if (TagLibD_im.SwigPendingException.isPending) throw TagLibD_im.SwigPendingException.retrieve();
  }

  public CoverArt.Format format() const {
    CoverArt.Format ret = cast(CoverArt.Format)TagLibD_im.TagLib_MP4_CoverArt_format(cast(void*)swigCPtr);
    return ret;
  }

  public TagLib.TagLib.ByteVector data() const {
    TagLib.TagLib.ByteVector ret = new TagLib.TagLib.ByteVector(TagLibD_im.TagLib_MP4_CoverArt_data(cast(void*)swigCPtr), true);
    return ret;
  }
}

class File : TagLib.TagLib.File {
  private void* swigCPtr;

  public this(void* cObject, bool ownCObject) {
    super(TagLibD_im.TagLib_MP4_File_Upcast(cObject), ownCObject);
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
          TagLibD_im.delete_TagLib_MP4_File(cast(void*)swigCPtr);
        }
        swigCPtr = null;
        super.dispose();
      }
    }
  }

  public this(string file, bool readProperties, TagLib.TagLib.AudioProperties.ReadStyle audioPropertiesStyle) {
    this(TagLibD_im.new_TagLib_MP4_File__SWIG_0(std.string.toStringz(file), readProperties, cast(int)audioPropertiesStyle), true);
  }

  public this(string file, bool readProperties) {
    this(TagLibD_im.new_TagLib_MP4_File__SWIG_1(std.string.toStringz(file), readProperties), true);
  }

  public this(string file) {
    this(TagLibD_im.new_TagLib_MP4_File__SWIG_2(std.string.toStringz(file)), true);
  }

  public override TagLib.TagLib.Tag tag() const {
    void* cPtr = TagLibD_im.TagLib_MP4_File_tag(cast(void*)swigCPtr);
    TagLib.TagLib.Tag ret = (cPtr is null) ? null : new TagLib.TagLib.Tag(cPtr, false);
    return ret;
  }

  public override Properties audioProperties() const {
    void* cPtr = TagLibD_im.TagLib_MP4_File_audioProperties(cast(void*)swigCPtr);
    Properties ret = (cPtr is null) ? null : new Properties(cPtr, false);
    return ret;
  }

  public override bool save() {
    bool ret = TagLibD_im.TagLib_MP4_File_save(cast(void*)swigCPtr) ? true : false;
    return ret;
  }
}

class Item {
  private void* swigCPtr;
  protected bool swigCMemOwn;

  public this(void* cObject, bool ownCObject) {
    swigCPtr = cObject;
    swigCMemOwn = ownCObject;
  }

  public static void* swigGetCPtr(Item obj) {
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
          TagLibD_im.delete_TagLib_MP4_Item(cast(void*)swigCPtr);
        }
        swigCPtr = null;
      }
    }
  }

  public this() {
    this(TagLibD_im.new_TagLib_MP4_Item__SWIG_0(), true);
  }

  public this(Item item) {
    this(TagLibD_im.new_TagLib_MP4_Item__SWIG_1(Item.swigGetCPtr(item)), true);
    if (TagLibD_im.SwigPendingException.isPending) throw TagLibD_im.SwigPendingException.retrieve();
  }

  public this(int value) {
    this(TagLibD_im.new_TagLib_MP4_Item__SWIG_2(value), true);
  }

  public this(bool value) {
    this(TagLibD_im.new_TagLib_MP4_Item__SWIG_3(value), true);
  }

  public this(int first, int second) {
    this(TagLibD_im.new_TagLib_MP4_Item__SWIG_4(first, second), true);
  }

  public this(TagLib.TagLib.StringList value) {
    this(TagLibD_im.new_TagLib_MP4_Item__SWIG_5(TagLib.TagLib.StringList.swigGetCPtr(value)), true);
    if (TagLibD_im.SwigPendingException.isPending) throw TagLibD_im.SwigPendingException.retrieve();
  }

  public this(TagLibD.SWIGTYPE_p_TagLib__ListT_TagLib__MP4__CoverArt_t value) {
    this(TagLibD_im.new_TagLib_MP4_Item__SWIG_6(TagLibD.SWIGTYPE_p_TagLib__ListT_TagLib__MP4__CoverArt_t.swigGetCPtr(value)), true);
    if (TagLibD_im.SwigPendingException.isPending) throw TagLibD_im.SwigPendingException.retrieve();
  }

  public int toInt() const {
    auto ret = TagLibD_im.TagLib_MP4_Item_toInt(cast(void*)swigCPtr);
    return ret;
  }

  public bool toBool() const {
    bool ret = TagLibD_im.TagLib_MP4_Item_toBool(cast(void*)swigCPtr) ? true : false;
    return ret;
  }

  public TagLibD.SWIGTYPE_p_TagLib__MP4__Item__IntPair toIntPair() const {
    TagLibD.SWIGTYPE_p_TagLib__MP4__Item__IntPair ret = new TagLibD.SWIGTYPE_p_TagLib__MP4__Item__IntPair(TagLibD_im.TagLib_MP4_Item_toIntPair(cast(void*)swigCPtr), true);
    return ret;
  }

  public TagLib.TagLib.StringList toStringList() const {
    TagLib.TagLib.StringList ret = new TagLib.TagLib.StringList(TagLibD_im.TagLib_MP4_Item_toStringList(cast(void*)swigCPtr), true);
    return ret;
  }

  public TagLibD.SWIGTYPE_p_TagLib__ListT_TagLib__MP4__CoverArt_t toCoverArtList() const {
    TagLibD.SWIGTYPE_p_TagLib__ListT_TagLib__MP4__CoverArt_t ret = new TagLibD.SWIGTYPE_p_TagLib__ListT_TagLib__MP4__CoverArt_t(TagLibD_im.TagLib_MP4_Item_toCoverArtList(cast(void*)swigCPtr), true);
    return ret;
  }

  public bool isValid() const {
    bool ret = TagLibD_im.TagLib_MP4_Item_isValid(cast(void*)swigCPtr) ? true : false;
    return ret;
  }
}

class Properties : TagLib.TagLib.AudioProperties {
  private void* swigCPtr;

  public this(void* cObject, bool ownCObject) {
    super(TagLibD_im.TagLib_MP4_Properties_Upcast(cObject), ownCObject);
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
          TagLibD_im.delete_TagLib_MP4_Properties(cast(void*)swigCPtr);
        }
        swigCPtr = null;
        super.dispose();
      }
    }
  }

  public this(File file, TagLibD.SWIGTYPE_p_TagLib__MP4__Atoms atoms, TagLib.TagLib.AudioProperties.ReadStyle style) {
    this(TagLibD_im.new_TagLib_MP4_Properties__SWIG_0(File.swigGetCPtr(file), TagLibD.SWIGTYPE_p_TagLib__MP4__Atoms.swigGetCPtr(atoms), cast(int)style), true);
  }

  public this(File file, TagLibD.SWIGTYPE_p_TagLib__MP4__Atoms atoms) {
    this(TagLibD_im.new_TagLib_MP4_Properties__SWIG_1(File.swigGetCPtr(file), TagLibD.SWIGTYPE_p_TagLib__MP4__Atoms.swigGetCPtr(atoms)), true);
  }

  @property int length() const {
    auto ret = TagLibD_im.TagLib_MP4_Properties_length(cast(void*)swigCPtr);
    return ret;
  }

  @property int bitrate() const {
    auto ret = TagLibD_im.TagLib_MP4_Properties_bitrate(cast(void*)swigCPtr);
    return ret;
  }

  @property int sampleRate() const {
    auto ret = TagLibD_im.TagLib_MP4_Properties_sampleRate(cast(void*)swigCPtr);
    return ret;
  }

  @property int channels() const {
    auto ret = TagLibD_im.TagLib_MP4_Properties_channels(cast(void*)swigCPtr);
    return ret;
  }

  public int bitsPerSample() const {
    auto ret = TagLibD_im.TagLib_MP4_Properties_bitsPerSample(cast(void*)swigCPtr);
    return ret;
  }
}

class Tag : TagLib.TagLib.Tag {
  private void* swigCPtr;

  public this(void* cObject, bool ownCObject) {
    super(TagLibD_im.TagLib_MP4_Tag_Upcast(cObject), ownCObject);
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
          TagLibD_im.delete_TagLib_MP4_Tag(cast(void*)swigCPtr);
        }
        swigCPtr = null;
        super.dispose();
      }
    }
  }

  public this(TagLib.TagLib.File file, TagLibD.SWIGTYPE_p_TagLib__MP4__Atoms atoms) {
    this(TagLibD_im.new_TagLib_MP4_Tag(TagLib.TagLib.File.swigGetCPtr(file), TagLibD.SWIGTYPE_p_TagLib__MP4__Atoms.swigGetCPtr(atoms)), true);
  }

  public bool save() {
    bool ret = TagLibD_im.TagLib_MP4_Tag_save(cast(void*)swigCPtr) ? true : false;
    return ret;
  }

  @property string title() const {
        char* cstr = TagLibD_im.TagLib_MP4_Tag_title__SWIG_0(cast(void*)swigCPtr);
        string tmp;
        try
            tmp = to!string(cstr);
        finally
            free(cstr);
        return tmp;
    }

  @property string artist() const {
        char* cstr = TagLibD_im.TagLib_MP4_Tag_artist__SWIG_0(cast(void*)swigCPtr);
        string tmp;
        try
            tmp = to!string(cstr);
        finally
            free(cstr);
        return tmp;
    }

  @property string album() const {
        char* cstr = TagLibD_im.TagLib_MP4_Tag_album__SWIG_0(cast(void*)swigCPtr);
        string tmp;
        try
            tmp = to!string(cstr);
        finally
            free(cstr);
        return tmp;
    }

  @property string comment() const {
        char* cstr = TagLibD_im.TagLib_MP4_Tag_comment__SWIG_0(cast(void*)swigCPtr);
        string tmp;
        try
            tmp = to!string(cstr);
        finally
            free(cstr);
        return tmp;
    }

  @property string genre() const {
        char* cstr = TagLibD_im.TagLib_MP4_Tag_genre__SWIG_0(cast(void*)swigCPtr);
        string tmp;
        try
            tmp = to!string(cstr);
        finally
            free(cstr);
        return tmp;
    }

  @property uint year() const {
    auto ret = TagLibD_im.TagLib_MP4_Tag_year__SWIG_0(cast(void*)swigCPtr);
    return ret;
  }

  @property uint track() const {
    auto ret = TagLibD_im.TagLib_MP4_Tag_track__SWIG_0(cast(void*)swigCPtr);
    return ret;
  }

  @property void title(string value) {
    TagLibD_im.TagLib_MP4_Tag_title__SWIG_1(cast(void*)swigCPtr, cast(char*)toStringz(value));
  }

  @property void artist(string value) {
    TagLibD_im.TagLib_MP4_Tag_artist__SWIG_1(cast(void*)swigCPtr, cast(char*)toStringz(value));
  }

  @property void album(string value) {
    TagLibD_im.TagLib_MP4_Tag_album__SWIG_1(cast(void*)swigCPtr, cast(char*)toStringz(value));
  }

  @property void comment(string value) {
    TagLibD_im.TagLib_MP4_Tag_comment__SWIG_1(cast(void*)swigCPtr, cast(char*)toStringz(value));
  }

  @property void genre(string value) {
    TagLibD_im.TagLib_MP4_Tag_genre__SWIG_1(cast(void*)swigCPtr, cast(char*)toStringz(value));
  }

  @property void year(uint value) {
    TagLibD_im.TagLib_MP4_Tag_year__SWIG_1(cast(void*)swigCPtr, value);
  }

  @property void track(uint value) {
    TagLibD_im.TagLib_MP4_Tag_track__SWIG_1(cast(void*)swigCPtr, value);
  }

  public TagLibD.SWIGTYPE_p_TagLib__MapT_TagLib__String_TagLib__MP4__Item_t itemListMap() {
    TagLibD.SWIGTYPE_p_TagLib__MapT_TagLib__String_TagLib__MP4__Item_t ret = new TagLibD.SWIGTYPE_p_TagLib__MapT_TagLib__String_TagLib__MP4__Item_t(TagLibD_im.TagLib_MP4_Tag_itemListMap(cast(void*)swigCPtr), false);
    return ret;
  }
}
