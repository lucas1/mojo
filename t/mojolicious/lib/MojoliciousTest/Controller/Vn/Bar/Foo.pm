package MojoliciousTest::Controller::Vn::Bar::Foo;
use Mojolicious::Controller -base;

sub d { shift->render(text => 'Action D') }

sub e { shift->render(text => 'Action E') }

sub f { shift->render(text => 'Action F') }

1;
