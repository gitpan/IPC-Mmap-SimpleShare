# -*- perl -*-

# t/001_load.t - check module loading and create testing directory


use Test::More tests => 3;

BEGIN { use_ok( 'IPC::Mmap::SimpleShare' ); }

my $object = IPC::Mmap::SimpleShare->new(100);

isa_ok ($object, 'IPC::Mmap::SimpleShare');

my $data = 135;

$object->set($data);

cmp_ok($data, '==', $object->get, "Store and retrieve");



