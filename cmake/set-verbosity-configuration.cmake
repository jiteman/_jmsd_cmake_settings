include( ${JMSD_CMAKE_SETTINGS_PATH}/verbosity/load-verbosity-configuration-file.cmake )

macro( JMSD_CMAKE_CURRENT_FILE_IN current-filename )
	if ( JMSD_CMAKE_VERBOSE_OUTPUT_IS_ON )
		if ( JMSD_CMAKE_CMAKE_OUTPUT_IS_ON )
			message( STATUS "[JMSD] --> ${current-filename}" )
		endif()
	endif()
endmacro()

macro( JMSD_CMAKE_CURRENT_FILE_OUT current-filename )
	if ( JMSD_CMAKE_VERBOSE_OUTPUT_IS_ON )
		if ( JMSD_CMAKE_CMAKE_OUTPUT_IS_ON )
			message( STATUS "[JMSD] <-- ${current-filename}" )
		endif()
	endif()
endmacro()
