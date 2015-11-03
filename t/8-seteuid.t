use Test;
use POSIX;

plan 1;

{
  my $euid = +$*EUID;
  my $res = seteuid($euid);
  ok(1, 'Called seteuid($euid)');
}
