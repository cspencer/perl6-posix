package POSIX {
  use NativeCall;

  constant uid_t = uint32;
  constant gid_t = uint32;

  class passwd is repr('CStruct') {
    has Str   $.pw_name;
    has Str   $.pw_passwd;
    has uid_t $.pw_uid;
    has gid_t $.pw_gid;
    has Str   $.pw_gecos;
    has Str   $.pw_dir;
    has Str   $.pw_shell;
  };

  our sub getgid()  returns gid_t is native('libc') { * };
  our sub getuid()  returns uid_t is native('libc') { * };
  our sub getegid() returns gid_t is native('libc') { * };
  our sub geteuid() returns uid_t is native('libc') { * };

  our sub setgid(gid_t)  returns int32 is native('libc') { * };
  our sub setuid(uid_t)  returns int32 is native('libc') { * };
  our sub setegid(gid_t) returns int32 is native('libc') { * };
  our sub seteuid(uid_t) returns int32 is native('libc') { * };

  our sub getpwnam(Str) returns passwd is native('libc') { * };
  our sub getpwent()    returns passwd is native('libc') { * };
}
