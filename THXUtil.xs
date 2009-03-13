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
    if (PL_op_mask) {
        Safefree(PL_op_mask);
        PL_op_mask = NULL;
    }

