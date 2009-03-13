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

MODULE = Devel::THXUtil  PACKAGE = Devel::THXUtil

SV*
THXUtil()
CODE:
    RETVAL = newSVpvf("op_mask: %X", (int)PL_op_mask);
OUTPUT:
    RETVAL

SV*
GetTHXAddress()
CODE:
    RETVAL = newSViv(vTHX);
OUTPUT:
    RETVAL

void
ClearOpMask()
CODE:
    if (aTHX->Iop_mask) {
        Safefree(aTHX->Iop_mask);
        aTHX->Iop_mask = NULL;
    }

