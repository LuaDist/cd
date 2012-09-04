/*---------------------------------------------------------------------------*
 |              PDFlib - A library for generating PDF on the fly             |
 +---------------------------------------------------------------------------+
 | Copyright (c) 1997-2006 Thomas Merz and PDFlib GmbH. All rights reserved. |
 +---------------------------------------------------------------------------+
 |                                                                           |
 |    This software is subject to the PDFlib license. It is NOT in the       |
 |    public domain. Extended versions and commercial licenses are           |
 |    available, please check http://www.pdflib.com.                         |
 |                                                                           |
 *---------------------------------------------------------------------------*/

/* $Id: p_table.c,v 1.3 2012/01/03 17:42:56 scuri Exp $
 *
 * PDFlib table function
 *
 */

#define P_TABLE_C

#include "p_intern.h"
#include "p_color.h"
#include "p_defopt.h"
#include "p_font.h"
#include "p_tagged.h"

