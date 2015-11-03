use Test;
use POSIX;

plan 1;

{
  my $gid = +$*GID;
  my $res = setgid($gid);
  ok(1, 'Called setgid($gid)');
}
