# - Try to find Iconv
# Once done this will define
#  ICONV_FOUND - System has Iconv
#  ICONV_INCLUDE_DIRS - The Iconv include directories
#  ICONV_LIBRARIES - The libraries needed to use Iconv
#  ICONV_DEFINITIONS - Compiler switches required for using Iconv

find_path ( ICONV_INCLUDE_DIR iconv.h )
find_library ( ICONV_LIBRARY NAMES iconv )

set ( ICONV_LIBRARIES ${ICONV_LIBRARY} )
set ( ICONV_INCLUDE_DIRS ${ICONV_INCLUDE_DIR} )

include ( FindPackageHandleStandardArgs )
find_package_handle_standard_args ( ICONV DEFAULT_MSG ICONV_LIBRARY ICONV_INCLUDE_DIR )

mark_as_advanced ( ICONV_INCLUDE_DIR ICONV_LIBRARY)