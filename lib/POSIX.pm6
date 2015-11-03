package POSIX {
  use NativeCall;

  constant uid_t = uint32;
  constant gid_t = uint32;

  constant darwin_time_t = uint64;

  constant passwd = do given ($*KERNEL) {
                      when 'darwin' {
                          # OS X defines extra fields in the passwd struct.
                          class :: is repr('CStruct') {
                            has Str           $.username;
                            has Str           $.password;
                            has uid_t         $.uid;
                            has gid_t         $.gid;
                            has darwin_time_t $.changed;
                            has Str           $.gecos;
                            has Str           $.homedir;
                            has Str           $.shell;
                            has darwin_time_t $.expiration;
                          }
                        };

                        default {
                          # Default passwd struct for Linux and others.
                          class :: is repr('CStruct') {
                            has Str   $.username;
                            has Str   $.password;
                            has uid_t $.uid;
                            has gid_t $.gid;
                            has Str   $.gecos;
                            has Str   $.homedir;
                            has Str   $.shell;
                          }
                        };
                      }

  our sub getgid()  returns gid_t is native { * };
  our sub getuid()  returns uid_t is native { * };
  our sub getegid() returns gid_t is native { * };
  our sub geteuid() returns uid_t is native { * };

  our sub setgid(gid_t)  returns int32 is native { * };
  our sub setuid(uid_t)  returns int32 is native { * };
  our sub setegid(gid_t) returns int32 is native { * };
  our sub seteuid(uid_t) returns int32 is native { * };

  our sub getpwnam(Str) returns passwd is native { * };
  our sub getpwent()    returns passwd is native { * };
}
