#!/usr/bin/perl

sub f {
    sleep $_[0];
    print "$_[0]\n";
}

for ( 0 .. $#ARGV ) {
    $pid = fork();
    if ($pid) {

        # parent
        push( @childs, $pid );
    }
    if ( $pid == 0 ) {

        # child
        &f( $ARGV[$_] );
        exit(0);
    }
}

foreach (@childs) {
    waitpid( $_, 0 );
}
