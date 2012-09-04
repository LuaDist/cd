/** \file
 * \brief Cairo as Context Plus
 *
 * See Copyright Notice in cd.h
 */
 
#include "cd.h"
#include "cd_private.h"
#include "cdcairo.h"
#include <stdlib.h>
#include <memory.h>


void cdInitContextPlus(void)
{
  cdContext* ctx_list[CD_CTXPLUS_COUNT];
  memset(ctx_list, 0, sizeof(ctx_list));

  ctx_list[CD_CTXPLUS_NATIVEWINDOW] = cdContextCairoNativeWindow();
  ctx_list[CD_CTXPLUS_IMAGE] = cdContextCairoImage();
  ctx_list[CD_CTXPLUS_DBUFFER] = cdContextCairoDBuffer();
#ifndef CAIRO_X11                                          /* NOT available in pure X11 */
  ctx_list[CD_CTXPLUS_PRINTER] = cdContextCairoPrinter();  /* only available in Win32 and in GTK/X11 */
#endif
#ifdef WIN32
  ctx_list[CD_CTXPLUS_EMF] = cdContextCairoEMF();  /* only available in Win32 */
#endif

  cdInitContextPlusList(ctx_list);
}
