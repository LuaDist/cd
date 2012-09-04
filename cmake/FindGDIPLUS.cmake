# Copyright (C) 2012 LuaDist.
# Created by Peter Kapec <kapecp@gmail.com>
# Redistribution and use of this file is allowed according to the terms of the MIT license.
# For details see the COPYRIGHT file distributed with LuaDist.
#	Note:
#		Searching headers and libraries is very sGDIPLUSple and is NOT as powerful as scripts
#		distributed with CMake, because LuaDist defines directories to search for.
#		Everyone is encouraged to contact the author with GDIPLUSprovements. Maybe this file
#		becomes part of CMake distribution sometGDIPLUSes.

# - Find GDIPLUS
# Find the native GDIPLUS headers and libraries.
#
# GDIPLUS_INCLUDE_DIRS	- where to find GDIPLUS.h.
# GDIPLUS_LIBRARIES	- List of libraries when using GDIPLUS.
# GDIPLUS_FOUND	- True if GDIPLUS found.

# Look for the header file.
FIND_PATH( GDIPLUS_INCLUDE_DIR NAMES gdiplus/gdiplus.h gdiplus.h
	PATHS
      c:/MinGW/bin
      "[HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\MinGW;InstallLocation]/include"
      "[HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\TDM-GCC;InstallLocation]/include"
)

# Look for the library.
FIND_LIBRARY( GDIPLUS_LIBRARY NAMES gdiplus )

# Handle the QUIETLY and REQUIRED arguments and set GDIPLUS_FOUND to TRUE if all listed variables are TRUE.
INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(GDIPLUS DEFAULT_MSG GDIPLUS_LIBRARY GDIPLUS_INCLUDE_DIR)

# Copy the results to the output variables.
IF(GDIPLUS_FOUND)
	SET(GDIPLUS_LIBRARIES ${GDIPLUS_LIBRARY})
	SET(GDIPLUS_INCLUDE_DIRS ${GDIPLUS_INCLUDE_DIR})
ENDIF(GDIPLUS_FOUND)

MARK_AS_ADVANCED(GDIPLUS_INCLUDE_DIRS GDIPLUS_LIBRARIES)
