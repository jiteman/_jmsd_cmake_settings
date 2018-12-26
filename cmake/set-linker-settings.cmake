JMSD_CMAKE_CURRENT_FILE_IN( "set-linker-settings.cmake" )

if ( UNIX )
	if (JMSD_CMAKE_VERBOSE_OUTPUT_IS_ON )
		message( STATUS "[JMSD] LINKER SETTINGS: Linux linker settings are selected" )
	endif()
	
	include( ${JMSD_CMAKE_SETTINGS_PATH}/linker-settings/set-linux-linker-settings.cmake )

elseif( WIN32 )
	if ( JMSD_CMAKE_VERBOSE_OUTPUT_IS_ON )
		message( STATUS "[JMSD] LINKER SETTINGS: Windows linker settings are selected")
	endif()
	
	include( ${JMSD_CMAKE_SETTINGS_PATH}/linker-settings/set-windows-linker-settings.cmake )

else()
	message( STATUS "[JMSD] LINKER SETTINGS: Unsupported platform. Default settings are used." )

endif()

JMSD_CMAKE_CURRENT_FILE_IN( "set-linker-settings.cmake" )
