package MojoliciousTest::Controller::Vn::Bar;
use Mojolicious::Controller -base;

sub a { shift->render(text => 'Action A') }

sub b { shift->render(text => 'Action B') }

sub c { shift->render(text => 'Action C') }

1;
