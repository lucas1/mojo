package MojoliciousTest4::Controller::Foo;
use Mojolicious::Controller -base;

sub g { shift->render(text => 'Action G') }

sub h { shift->render(text => 'Action H') }

sub i { shift->render(text => 'Action I') }

1;
