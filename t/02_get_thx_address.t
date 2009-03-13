use strict;
use Test::More tests => 1;
use Opcode qw(opmask_add opset invert_opset);
use Devel::THXUtil;

ok(Devel::THXUtil::GetTHXAddress());

