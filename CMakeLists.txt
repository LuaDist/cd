# Copyright (C) 2007-2012 LuaDist.
# Created by Peter Kapec
# Redistribution and use of this file is allowed according to the terms of the MIT license.
# For details see the COPYRIGHT file distributed with LuaDist.
# Please note that the package source code is licensed under its own license.

project ( cd C CXX )
# note: C++ only required for GDI+
cmake_minimum_required ( VERSION 2.8 )
include ( cmake/dist.cmake )
INCLUDE( lua )

# Macros
macro ( ADD_PREFIX prefix rootlist )
set ( outlist )
foreach ( root ${${rootlist}} )
list ( APPEND outlist ${prefix}${root} )
endforeach ( root )
set ( ${rootlist} ${outlist} )
endmacro ( ADD_PREFIX )

######################################################

# platform tests for libtiff
include ( TestBigEndian )
test_big_endian ( BIGENDIAN_PLATFORM )

######################################################

# Find Lua
find_package ( Lua )

# find ext. libs
find_package ( OpenGL )
find_package ( GTK2 COMPONENTS gtk )
find_package ( X11 )
find_package ( Fontconfig )

find_package ( GDIPLUS )

if ( FONTCONFIG_FOUND )
  include_directories ( FONTCONFIG_INCLUDE_DIR )
endif ( )

if ( X11_FOUND )
	include_directories ( ${X11_INCLUDE_DIR} ${X11_FONTCONFIG_INCLUDE_DIR} )
	#MESSAGE (">>>>>> ${X11_INCLUDE_DIR} || ${X11_LIBRARIES} || ${X11_Xrender_LIB} || ${X11_Xt_LIB}")
endif ( )

find_package(IM)

######################################################

include_directories ( include src src/x11 src/win32 src/drv src/intcgm src/freetype2
  src/sim src/cairo src/zlib)

######################################################

# zlib lib
set ( SRCZLIB adler32.c compress.c crc32.c deflate.c inffast.c inflate.c inftrees.c
  trees.c uncompr.c zutil.c )
add_prefix ( src/zlib/ SRCZLIB )

add_library ( z STATIC ${SRCZLIB} src/zlib/zlib1.rc src/zlib/zlib.def )
set_source_files_properties ( ${SRCZLIB} PROPERTIES COMPILE_FLAGS "-fPIC" )

# freetype lib
set ( SRCTTF autofit/autofit.c bdf/bdf.c cff/cff.c base/ftbase.c base/ftcid.c base/ftfstype.c
  cache/ftcache.c gzip/ftgzip.c lzw/ftlzw.c gxvalid/gxvalid.c otvalid/otvalid.c pcf/pcf.c
  pfr/pfr.c psaux/psaux.c pshinter/pshinter.c psnames/psnames.c raster/raster.c sfnt/sfnt.c
  smooth/smooth.c truetype/truetype.c type1/type1.c cid/type1cid.c type42/type42.c
  winfonts/winfnt.c base/ftapi.c base/ftbbox.c base/ftbdf.c base/ftbitmap.c base/ftdebug.c
  base/ftgasp.c base/ftglyph.c base/ftgxval.c base/ftinit.c base/ftlcdfil.c base/ftmm.c
  base/ftotval.c base/ftpatent.c base/ftpfr.c base/ftstroke.c base/ftsynth.c base/ftsystem.c
  base/fttype1.c base/ftwinfnt.c base/ftxf86.c )
add_prefix ( "src/freetype2/" SRCTTF )

if ( APPLE )
  set_source_files_properties ( ${SRCTTF} PROPERTIES COMPILE_DEFINITIONS "FT2_BUILD_LIBRARY;FT_CONFIG_OPTION_SYSTEM_ZLIB;DARWIN_NO_CARBON" )
else()
  set_source_files_properties ( ${SRCTTF} PROPERTIES COMPILE_FLAGS "-fPIC" COMPILE_DEFINITIONS "FT2_BUILD_LIBRARY;FT_CONFIG_OPTION_SYSTEM_ZLIB" )
endif ( )

add_library ( freetype STATIC ${SRCTTF} src/freetype2/freetype.rc src/freetype2/freetype.def )
add_dependencies ( freetype z )
target_link_libraries ( freetype z )

# ftgl lib
if ( OPENGL_FOUND )
  include_directories ( include src/ftgl src/ftgl/FTGL )

  file ( GLOB FTGlyph "src/ftgl/FTGlyph/*.cpp" )
  file ( GLOB FTFont "src/ftgl/FTFont/*.cpp" )
  file ( GLOB FTLayout "src/ftgl/FTLayout/*.cpp" )
  file ( GLOB FTGL "src/ftgl/*.cpp" )

  set ( FTGL_SRC ${FTGlyph} ${FTFont} ${FTLayout} ${FTGL} src/ftgl/ftgl.def )

  set_source_files_properties ( ${FTGL_SRC} PROPERTIES COMPILE_FLAGS "-fPIC" COMPILE_DEFINITIONS
    "FTGL_LIBRARY_STATIC" )

  add_library ( ftgl STATIC ${FTGL_SRC} )
  add_dependencies ( ftgl freetype )
  target_link_libraries ( ftgl freetype ${OPENGL_LIBRARIES} )

  if ( APPLE )
    set_source_files_properties ( ${FTGL_SRC} PROPERTIES COMPILE_DEFINITIONS "USE_MACOS_OPENGL" )
    set_target_properties ( ftgl PROPERTIES COMPILE_FLAGS "-framework OpenGL" )
  else ( )
    set_source_files_properties ( ${FTGL_SRC} PROPERTIES COMPILE_DEFINITIONS "USE_OPENGL" )
  endif ( )
endif ( )

# pdflib lib
include_directories ( src src/sim src/pdflib/font src/pdflib/flate src/pdflib/pdcore
  src/pdflib/pdflib )

file ( GLOB SRCFONT "src/pdflib/font/*.c" )
file ( GLOB SRCPDCORE "src/pdflib/pdcore/*.c" )
file ( GLOB SRCPDFLIB "src/pdflib/pdflib/*.c" )

set ( SRC_CDPDFLIB src/pdflib/pdflib/pdflib.c ${SRCPDFLIB} ${SRCPDCORE} ${SRCFONT} )

if ( BIGENDIAN_PLATFORM )
  set ( WORDS_BIGENDIAN_FLAG "-DWORDS_BIGENDIAN" )
endif ( )

set_source_files_properties ( ${SRC_CDPDFLIB} PROPERTIES COMPILE_FLAGS "-fPIC ${WORDS_BIGENDIAN_FLAG}" )

add_library ( pdflib STATIC ${SRC_CDPDFLIB} src/pdflib/pdflib.rc src/pdflib/pdflib.def )
add_dependencies ( pdflib z )
target_link_libraries ( pdflib z )

######################################################

# cd lib
add_definitions ( -DCD_NO_OLD_INTERFACE )

file ( GLOB SRCCOMM "src/*.c" )
file ( GLOB SRCSVG "src/svg/*.c" )
file ( GLOB SRCINTCGM "src/intcgm/*.c" )
file ( GLOB SRCDRV "src/drv/*.c" )
file ( GLOB SRCSIM "src/sim/*.c" )

set ( SRC ${SRCCOMM} ${SRCSVG} ${SRCINTCGM} ${SRCDRV} ${SRCSIM} )

file ( GLOB SRCWIN32 "src/win32/*.c" )
file ( GLOB SRCX11 "src/x11/*.c" )

file ( GLOB SRCGDK "src/gdk/*.c" )

set ( SRCCAIRO cdcairodbuf.c cdcairopdf.c cdcairosvg.c cdcairo.c cdcairoimg.c cdcairoplus.c
  cdcairoirgb.c cdcairops.c cdcaironative_gdk.c )
add_prefix ( src/cairo/ SRCCAIRO )

file ( GLOB SRCNULL "src/drv/null/*.c" )

set ( CD_DEF_FILE resources/cd.def )
set ( CD_RC_FILE resources/cd.rc )

# Windows
if ( WIN32 )
  set ( SRC ${SRC} ${SRCWIN32} )

  # Under Windows we may have GTK -> build cdgdk
  if ( GTK2_FOUND )
    set ( SRC_CDGDK ${SRC} src/cairo/cdcairoprn_win32.c src/cairo/cdcairoemf.c )

    add_library ( cdgdk SHARED ${SRC_CDGDK} resources/cdgdk.def ${CD_RC_FILE} )
    add_dependencies ( cdgdk freetype )
    target_link_libraries ( cdgdk freetype ${GTK2_LIBRARIES} )

    install_library ( cdgdk )
  endif ( )

  # Non-Windows
else ( )
  # System with GTK (Linux + BSD)
  if ( GTK2_FOUND )

    # Under Linux we usually have X11 available -> build cdx11
    if ( X11_FOUND )
      set ( SRC_CDX11 ${SRC} ${SRCX11} ${SRCNULL} )

      add_library ( cdx11 SHARED ${SRC_CDX11} ${CD_DEF_FILE} ${CD_RC_FILE} )
      add_dependencies ( cdx11 freetype )
      target_link_libraries ( cdx11 freetype ${X11_LIBRARIES} )

      install_library ( cdx11 )
    endif ( )

    # build the native GTK CD
    find_path ( GTK_UNIX_PRINT NAMES gtk/gtkprintunixdialog.h PATHS
      /usr/local/include/gtk-unix-print-2.0
      /usr/include/gtk-unix-print-2.0 )

    include_directories ( ${GTK2_INCLUDE_DIRS} ${GTK_UNIX_PRINT} )

    set ( SRC ${SRC} ${SRCGDK} ${SRCCAIRO} ${SRCNULL} )

    set ( SRC ${SRC} src/cairo/cdcairoprn_unix.c )

    # other Unix-like without GTK (e.g. IRIX, AIX and SunOS)
  elseif ( X11_FOUND )
  set ( SRC ${SRC} ${SRCX11} ${SRCNULL} )
  endif ( )
endif ( )

add_library ( cd SHARED ${SRC} ${CD_DEF_FILE} ${CD_RC_FILE} )
add_dependencies ( cd freetype )
target_link_libraries ( cd freetype )

if ( WIN32 )
  target_link_libraries ( cd gdi32 user32 comdlg32 winspool )
else ( )
  if ( GTK2_FOUND )
    target_link_libraries ( cd ${GTK2_LIBRARIES} )
  elseif ( X11_FOUND )
  target_link_libraries ( cd ${X11_LIBRARIES} )
  endif ( )
endif ( )

# cdcairo lib
if ( GTK2_FOUND )
  set ( CDCAIRO_SRC cdcairodbuf.c cdcairopdf.c cdcairosvg.c cdcairo.c cdcairoimg.c
    cdcairoplus.c cdcairoirgb.c cdcairops.c )
  add_prefix ( src/cairo/ CDCAIRO_SRC )

  if ( WIN32 )
    set ( CDCAIRO_SRC ${CDCAIRO_SRC} src/cairo/cdcaironative_win32.c src/cairo/cdcairoprn_win32.c
      src/cairo/cdcairoemf.c )
  else ( )
    set ( CDCAIRO_SRC ${CDCAIRO_SRC} src/cairo/cdcaironative_x11.c )
    add_definitions ( -DCAIRO_X11 )
  endif ( )

  add_library ( cdcairo SHARED ${CDCAIRO_SRC} )
  target_link_libraries ( cdcairo ${GTK2_LIBRARIES} cd ${X11_LIBRARIES})
  set ( CDCAIRO_LIB cdcairo )
endif ( )

# cdcontextplus lib
if ( WIN32 )
  if ( GDIPLUS_FOUND )
    message ( "-- GDI+ found." )

    file ( GLOB SRC_CDCONTEXTPLUS_GDIPLUS "src/gdiplus/*.cpp" )
    list ( APPEND SRC_CDCONTEXTPLUS_GDIPLUS src/gdiplus/cdwgdiplus.c )

    if ( MSVC )
      set ( CDCONTEXTPLUS_DEF_FILE src/gdiplus/cdcontextplus.def )
    endif ( )

    add_library ( cdcontextplus SHARED ${SRC_CDCONTEXTPLUS_GDIPLUS} ${CDCONTEXTPLUS_DEF_FILE} )
    target_link_libraries ( cdcontextplus cd gdiplus )

    add_dependencies ( cdcontextplus cd )

    set ( CDCONTEXTPLUS_LIB cdcontextplus )
  endif ( )

else ( X11_FOUND AND cdx11 )
  if ( X11_Xrender_FOUND AND X11_Xt_FOUND )
    message ( "-- Xrender & Xt found." )

    file ( GLOB SRC_CDCONTEXTPLUS_XRENDER "src/xrender/*.c" )

    add_library ( cdcontextplus SHARED ${SRC_CDCONTEXTPLUS_XRENDER} src/x11/cdx11.c )
    target_link_libraries ( cdcontextplus cdx11 ${X11_Xft_LIB} ${X11_Xrender_LIB}
      ${X11_Xt_LIB} ${X11_LIBRARIES} )

    add_dependencies ( cdcontextplus cdx11 )

    set ( CDCONTEXTPLUS_LIB cdcontextplus )
  endif ( )
endif ( )
#~  	ENDIF()

# cdgl lib
if ( OPENGL_FOUND )
  add_library ( cdgl SHARED src/drv/gl/cdgl.c resources/cdgl.def )

  add_dependencies ( cdgl ftgl )
  target_link_libraries ( cdgl ftgl cd )
  if(APPLE)
	target_link_libraries ( cdgl iconv ${FONTCONFIG_LIBRARIES})
  endif()
  set ( CDGL_LIB cdgl )
endif ( )

# cdpdf lib
add_library ( cdpdf SHARED src/drv/pdf/cdpdf.c resources/cdpdf.def )
add_dependencies ( cdpdf pdflib cd )
target_link_libraries ( cdpdf pdflib cd )


######################################################
if ( LUA_FOUND )

# set stuff
	include_directories ( ${LUA_INCLUDE_DIR} )
	ADD_DEFINITIONS(-DCD_NO_OLD_INTERFACE )

# cdlua lib
  file ( GLOB SRC_CDLUA "src/lua5/libcdlua/*.c" )

  add_library ( cdlua SHARED ${SRC_CDLUA} resources/cdlua5.def )
  target_link_libraries ( cdlua ${LUA_LIBRARIES} cd )

  install_library ( cdlua )

# cdlua module
	install_lua_module (cdlua_module src/lua5/cdlua/cdlua_module.c resources/cdlua_module.def LINK cdlua )
	SET_TARGET_PROPERTIES(cdlua_module PROPERTIES PREFIX "" OUTPUT_NAME cdlua CLEAN_DIRECT_OUTPUT 1 )

# cdluapdf
	install_lua_module(cdluapdf src/lua5/modules/cdluapdf5.c resources/cdluapdf5.def LINK cdlua cdpdf )

# cdluacontextplus
	IF( CDCONTEXTPLUS_LIB )
		IF(WIN32)
			install_lua_module(cdluacontextplus src/lua5/modules/cdluacontextplus5.c resources/cdluacontextplus5.def
				LINK cdlua ${CDCONTEXTPLUS_LIB} )
		ELSE()
			install_lua_module(cdluacontextplus src/lua5/modules/cdluacontextplus5.c resources/cdluacontextplus5.def
				LINK cdlua  ${CDCONTEXTPLUS_LIB}  ${X11_Xft_LIB} )
		ENDIF ()
	ENDIF()

# cdluacairo
	IF(CDCAIRO_LIB)
		install_lua_module(cdluacairo src/lua5/modules/cdluacairo5.c resources/cdluacairo5.def LINK cdlua cdpdf )
	ENDIF()

# cdluaim
	IF(IM_LIBRARY AND IM_LIBRARY_LUA)
		install_lua_module(cdluaim src/lua5/modules/cdluaim5.c resources/cdluaim5.def LINK cdlua  ${IM_LIBRARY_LUA} ${IM_LIBRARY} )
	ENDIF()

# cdluagl
	IF(CDGL_LIB)
		install_lua_module( cdluagl src/lua5/modules/cdluagl5.c resources/cdluagl5.def LINK  cdlua  ${CDGL_LIB} )
	ENDIF()

endif ( )

######################################################

# install all libs
install_library ( cd cdpdf ${CDCAIRO_LIB} ${CDGL_LIB} ${CDCONTEXTPLUS_LIB} )

# install headers
install_header ( include/ )

# install other
install_data ( COPYRIGHT README )

# install documentation
install_doc ( doc/ )
