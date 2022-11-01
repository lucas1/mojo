package MojoliciousTest4;
use Mojo::Base 'Mojolicious';

sub startup {
  my $self = shift;
  
  my $r = $self->routes;
  
  $r->get('/another/app/g')->to('Foo#g');
  $r->get('/another/app/h')->to('Foo#h');
  $r->get('/another/app/i')->to('Foo#i');
}

1;
