package XslateGraceful;
use 5.008001;
use strict;
use warnings;

our $VERSION = "0.01";

use Text::Xslate;
use JSON::XS;

sub run {
    my ($self) = @_;

    my $view = Text::Xslate->new(
        syntax   => 'Kolon',
        cache    => 1,
        function => {
            json => sub {
                JSON::XS->new->utf8->encode(@_);
            }
        },
    );

    sub {
        my $env = shift;

        return [
            200,
            [],
            [ $view->render('tmpl/hoge.tmpl', {a => ["restarted"] }) ]
        ]
    }

}


1;
__END__

=encoding utf-8

=head1 NAME

XslateGraceful - It's new $module

=head1 SYNOPSIS

    use XslateGraceful;

=head1 DESCRIPTION

XslateGraceful is ...

=head1 LICENSE

Copyright (C) yusuke-enomoto.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

yusuke-enomoto E<lt>yusuke.enomoto@dena.comE<gt>

=cut

