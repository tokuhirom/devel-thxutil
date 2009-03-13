use strict;
use Test::More tests => 2;
use Opcode qw(opmask_add opset invert_opset);
use Devel::THXUtil;

like(Devel::THXUtil::THXUtil(), qr{op_mask: 0});
opmask_add(opset('system')); # trap 'system'
like(Devel::THXUtil::THXUtil(), qr{op_mask: [A-F0-9]+});

