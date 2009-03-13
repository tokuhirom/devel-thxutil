#ifdef __cplusplus
extern "C" {
#endif
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "ppport.h"
#ifdef __cplusplus
}
#endif

MODULE = Devel::DumpTHX  PACKAGE = Devel::DumpTHX

SV*
DumpTHX()
CODE:
    // SV *buf = newSV(0);
    // sv_setpvf(buf, "op_mask: %X", (int)PL_op_mask);
    // v(buf, "HOGE");
    RETVAL = newSVpvf("op_mask: %X", (int)PL_op_mask);
OUTPUT:
    RETVAL

void
ClearOpMask()
CODE:
    if (aTHX->Iop_mask) {
        Safefree(aTHX->Iop_mask);
        aTHX->Iop_mask = NULL;
    }

