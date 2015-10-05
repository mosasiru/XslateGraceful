package ViewFunctions;
use strict;
use warnings;
use utf8;
use parent qw(Exporter);
use JSON::XS;
use Module::Functions;

our @EXPORT = get_public_functions();

#sub json {
    #JSON::XS->new->utf8->encode(@_);
#}

1;
