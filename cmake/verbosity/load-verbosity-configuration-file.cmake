if ( NOT DEFINED JMSD_VERBOSE_CONFIGURATION_FILE_WAS_INCLUDED )
	message( STATUS "[JMSD] VERBOSE configuration file is INCLUDED" )
	set( JMSD_VERBOSE_CONFIGURATION_FILE_WAS_INCLUDED true )

	if ( EXISTS "${CMAKE_SOURCE_DIR}/CMake-verbosity-configuration.cmake" ) # JMSD way to deal with configurations
		include( ${CMAKE_SOURCE_DIR}/CMake-verbosity-configuration.cmake )
	else()
		set( JMSD_CMAKE_VERBOSE_OUTPUT is_off ) # [ is_on | is_off ]
		set( JMSD_CMAKE_DEPENDENCY_OUTPUT is_off ) # [ is_on | is_off ]
	endif()
	
	if ( ${JMSD_CMAKE_VERBOSE_OUTPUT} STREQUAL "is_on" )
		set( JMSD_CMAKE_VERBOSE_OUTPUT_IS_ON true )
		set( JMSD_CMAKE_DEPENDENCY_OUTPUT_IS_ON true )
		message( STATUS "[JMSD] VERBOSE is ON" ) 
	else()
		set( JMSD_CMAKE_VERBOSE_OUTPUT_IS_ON false )
		set( JMSD_CMAKE_DEPENDENCY_OUTPUT_IS_ON false )
		message( STATUS "[JMSD] VERBOSE is OFF" )
	endif()

endif()
