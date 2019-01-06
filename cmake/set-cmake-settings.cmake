JMSD_CMAKE_CURRENT_FILE_IN( "set-cmake-settings.cmake" )

# verbosity
#set( CMAKE_VERBOSE_MAKEFILE ON )
#set( CMAKE_COLOR_MAKEFILE ON )

set( CMAKE_DISABLE_IN_SOURCE_BUILD	ON )
set( CMAKE_DISABLE_SOURCE_CHANGES	ON )

# option( BUILD_SHARED_LIBS "Build the shared library" ON )
set( BUILD_SHARED_LIBS ON )

set( CMAKE_DEBUG_POSTFIX "" )
set( CMAKE_SHARED_LIBRARY_PREFIX "" )
# set( CMAKE_STATIC_LIBRARY_PREFIX "" )

if ( "${CMAKE_SOURCE_DIR}" STREQUAL "${CMAKE_BINARY_DIR}" )
	message( SEND_ERROR "[JMSD] In-source build is not allowed." )
endif()

JMSD_CMAKE_CURRENT_FILE_OUT( "set-cmake-settings.cmake" )
