use strict;
use Test::More tests => 1;
use Opcode qw(opmask_add opset invert_opset);
use Devel::DumpTHX;

ok(Devel::DumpTHX::GetTHXAddress());

