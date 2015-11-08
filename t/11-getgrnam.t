use Test;
use POSIX;

plan 4;

{
  my $name  = ~$*GROUP;
  my $group = getgrnam($name);

  ok(1, "Called getgrnam($name)");

  ok($group.defined, '$group is defined');

  ok($group.isa(Str), '$group is an Str');

  ok($group eq ~$*GROUP, '$group matches current $*GROUP');
}
