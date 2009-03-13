use strict;
use Test::More tests => 2;
use Opcode qw(opmask_add opset invert_opset);
use Devel::DumpTHX;

like(Devel::DumpTHX::DumpTHX(), qr{op_mask: 0});
opmask_add(opset('system')); # trap 'system'
like(Devel::DumpTHX::DumpTHX(), qr{op_mask: [A-F0-9]+});

