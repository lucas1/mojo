use Mojo::Base -strict;

BEGIN {
  $ENV{MOJO_MODE}    = 'development';
  $ENV{MOJO_REACTOR} = 'Mojo::Reactor::Poll';
}

use Test::Mojo;
use Test::More;

use Mojo::File qw(curfile);
use lib curfile->sibling('lib')->to_string;

my $t = Test::Mojo->new('MojoliciousTest');

# without hash(#)
$t->get_ok('/v1/bar/a')->status_is(200)->header_is(Server => 'Mojolicious (Perl)')->content_like(qr/Action A/);
$t->get_ok('/v1/bar/b')->status_is(200)->header_is(Server => 'Mojolicious (Perl)')->content_like(qr/Action B/);
$t->get_ok('/v1/bar/c')->status_is(200)->header_is(Server => 'Mojolicious (Perl)')->content_like(qr/Action C/);
$t->get_ok('/v1/bar/foo/d')->status_is(200)->header_is(Server => 'Mojolicious (Perl)')->content_like(qr/Action D/);
$t->get_ok('/v1/bar/foo/e')->status_is(200)->header_is(Server => 'Mojolicious (Perl)')->content_like(qr/Action E/);
$t->get_ok('/v1/bar/foo/f')->status_is(200)->header_is(Server => 'Mojolicious (Perl)')->content_like(qr/Action F/);

# with hash(#)
$t->get_ok('/v2/bar/b')->status_is(200)->header_is(Server => 'Mojolicious (Perl)')->content_like(qr/Action B/);
$t->get_ok('/v2/bar/a')->status_is(200)->header_is(Server => 'Mojolicious (Perl)')->content_like(qr/Action A/);
$t->get_ok('/v2/bar/c')->status_is(200)->header_is(Server => 'Mojolicious (Perl)')->content_like(qr/Action C/);
$t->get_ok('/v2/bar/foo/d')->status_is(200)->header_is(Server => 'Mojolicious (Perl)')->content_like(qr/Action D/);
$t->get_ok('/v2/bar/foo/e')->status_is(200)->header_is(Server => 'Mojolicious (Perl)')->content_like(qr/Action E/);
$t->get_ok('/v2/bar/foo/f')->status_is(200)->header_is(Server => 'Mojolicious (Perl)')->content_like(qr/Action F/);

# test another app
$t->get_ok('/another/app/g')->status_is(200)->content_like(qr/Action G/);
$t->get_ok('/another/app/h')->status_is(200)->content_like(qr/Action H/);
$t->get_ok('/another/app/i')->status_is(200)->content_like(qr/Action I/);

done_testing;
