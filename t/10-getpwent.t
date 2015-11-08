use Test;
use POSIX;

plan 9;

{
  my $pwnam = getpwent();

  ok(1, 'Called getpwent()');

  ok($pwnam.username.isa(str), ".username isa Str");

  ok($pwnam.password.isa(Str), ".password isa Str");

  ok($pwnam.uid.isa(Int), ".uid isa Int");

  ok($pwnam.gid.isa(Int), ".gid isa Int");

  ok($pwnam.gecos.isa(Str), ".gecos isa Str");

  ok($pwnam.homedir.isa(Str), ".homedir isa Str");

  ok($pwnam.shell.isa(Str), ".shell isa Str");

  my @pwnams = ($pwnam);
  loop {
    my $p = getpwent();

    last if ! $p.defined;

    @pwnams.push($pwnam);
  };
  my @ids = @pwnams.map({ $_.uid }).unique;

  ok(@pwnams > 1, "successive calls to getpwent returned different records");
}
