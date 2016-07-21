#!/usr/bin/env perl
use Mojolicious::Lite;

@ARGV = qw(daemon --listen http://*:8443);
# Documentation browser under "/perldoc"
plugin 'PODRenderer';

get '/' => sub {
  my $c = shift;
  $c->render(template => 'index');
};

app->start;
