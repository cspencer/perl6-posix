Perl 6 POSIX Library
====================

This module implements a Perl 6 interface to the functions specified by the POSIX IEEE Std 1003.1.  It is currently a work in progress and doesn't implement the full list of functions, so if you'd like something that's not currently present, please feel free to contribute!

Implemented Functions
---------------------

At present, the following functions have been implemented:

  * getgid()
  * getuid()
  * getegid()
  * geteuid()
  * setgid(gid_t)
  * setuid(uid_t)
  * setegid(gid_t)
  * seteuid(uid_t)
  * getpwnam(Str)
  * getpwent()
  * getgrnam(Str)
  * getgrgid(gid_t)
  
Author
------

Cory Spencer <cspencer@sprocket.org>
