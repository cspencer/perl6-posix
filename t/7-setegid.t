use Test;
use POSIX;

plan 1;

{
  my $egid = +$*EGID;
  my $res = setegid($egid);
  ok(1, 'Called setegid($egid)');
}
