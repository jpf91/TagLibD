%pragma(d) proxydmodulecode =
"
import core.stdc.stdlib;
import std.conv;
import std.typecons;
debug(FileRef) import std.stdio;
/* Contains code from std.typecons.RefCounted - thanks*/
struct FileRef
{
    private:
        TagLib.TagLib.CPP_FileRef _payload;
        size_t* _count;

        void initialize(A...)(A args)
        {
            _payload = new TagLib.TagLib.CPP_FileRef(args);
            _count = cast(size_t*)malloc(size_t.sizeof);
            *_count = 1;
           debug(FileRef) writeln(typeof(this).stringof,
                \"@\", cast(void*) _payload, \": initialized with \",
                    A.stringof);
        }

    public:
        //Reference Counting stuff

        this(this)
        {
            if (!isInitialized) return;
            ++*_count;
            debug(FileRef)
                 writeln(typeof(this).stringof,
                \"@\", cast(void*) _payload, \": bumped refcount to \",
                *_count);
        }

        ~this()
        {
            if (!_payload) return;
            assert(*_count > 0);
            if (--*_count)
            {
                debug(FileRef)
                {
                         writeln(typeof(this).stringof,
                        \"@\", cast(void*)_payload,
                        \": decrement refcount to \", *_count);
                }
                return;
            }
            debug(FileRef)
            {
                write(typeof(this).stringof,
                        \"@\", cast(void*)_payload, \": freeing... \");
                stdout.flush();
            }
            // Done, deallocate
            assert(_payload);
            _payload.dispose();
            clear(_payload);
            free(_count);
            _count = null;
            _payload = null;
            debug(RefCounted)writeln(\"done!\");
        }

        /**
           Returns $(D true) if and only if the underlying store has been
           allocated and initialized.
        */
        @property bool isInitialized() const
        {
            return _payload !is null;
        }

        void opAssign(FileRef rhs)
        {
            _payload = rhs._payload;
            _count = rhs._count;
        }

        //CPP FileRef members
        public this(string fileName, bool readAudioProperties, TagLib.TagLib.AudioProperties.ReadStyle audioPropertiesStyle) {
            initialize(fileName, readAudioProperties, audioPropertiesStyle);
        }
        
        public this(string fileName, bool readAudioProperties) {
            initialize(fileName, readAudioProperties);
        }
        
        public this(string fileName) {
            initialize(fileName);
        }
        
        public this(TagLib.TagLib.File file) {
            initialize(file);
        }
        
        public TagLib.TagLib.Tag tag() const {
            return _payload.tag();
        }
        
        public TagLib.TagLib.AudioProperties audioProperties() const {
            return _payload.audioProperties();
        }
        
        public TagLib.TagLib.File file() const {
            return _payload.file();
        }
        
        public bool save() {
            return _payload.save();
        }
        
        public static TagLibD.FileTypeResolver addFileTypeResolver(TagLibD.FileTypeResolver resolver) {
            return TagLib.TagLib.CPP_FileRef.addFileTypeResolver(resolver);
        }
        
        public static TagLib.TagLib.StringList defaultFileExtensions() {
            return TagLib.TagLib.CPP_FileRef.defaultFileExtensions();
        }
        
        public bool isNull() const {
            return _payload.isNull();
        }
        
        public static TagLib.TagLib.File create(string fileName, bool readAudioProperties, TagLib.TagLib.AudioProperties.ReadStyle audioPropertiesStyle) {
            return TagLib.TagLib.CPP_FileRef.create(fileName, readAudioProperties, audioPropertiesStyle);
        }
        
        public static TagLib.TagLib.File create(string fileName, bool readAudioProperties) {
            return TagLib.TagLib.CPP_FileRef.create(fileName, readAudioProperties);
        }
        
        public static TagLib.TagLib.File create(string fileName) {
            return TagLib.TagLib.CPP_FileRef.create(fileName);
        }
}
"
