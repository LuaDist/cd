/*
 Canvas Draw - CD_XX Driver
*/

#include "cd.h"
#include "cdxx.h"
#include "cd_private.h"
#include <stdlib.h> 
#include <stdio.h> 
#include <memory.h> 


struct _cdCtxCanvas 
{ 
  cdCanvas* canvas;
};


static void cdkillcanvas(cdCtxCanvas *ctxcanvas)
{
  free(ctxcanvas);
}

static void cdcreatecanvas(cdCanvas *canvas, void *data)
{
  cdCtxCanvas* ctxcanvas = (cdCtxCanvas *)malloc(sizeof(cdCtxCanvas));

  ctxcanvas->canvas = canvas;
  canvas->ctxcanvas = ctxcanvas;
}

static void cdinittable(cdCanvas* canvas)
{
  canvas->KillCanvas = cdkillcanvas;
}

static cdContext cdXXContext =
{
  0,
  cdcreatecanvas,
  cdinittable,
  NULL,
  NULL,
};

cdContext* cdContextXX(void)
{
  return &cdXXContext;
}
