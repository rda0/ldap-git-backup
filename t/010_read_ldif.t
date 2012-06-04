#!perl
use Modern::Perl;
use English qw( -no_match_vars );

use Test::More;

my $BASE = '.';
require "$BASE/ldap-git-backup";

my $ldif_cmd  = "cat $BASE/t/testdata/data_A1.ldif";
my $ldif_aref = LDAP::Utils::read_ldif($ldif_cmd);
ok(@$ldif_aref == 2, 'simple LDIF testdata should have 2 entries');

done_testing();
