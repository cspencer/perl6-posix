use Test;
use POSIX;

plan 1;

{
  my $uid = POSIX::getuid();
  say "uid is $uid"
}
