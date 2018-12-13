include( ${JMSD_CMAKE_SETTINGS_PATH}/set-verbosity-configuration.cmake )

JMSD_CMAKE_CURRENT_FILE_IN( "set-compiler-settings.cmake" )

if ( UNIX )
	if ( JMSD_CMAKE_VERBOSE_OUTPUT_IS_ON )
		message( STATUS "[JMSD] COMPILER SETTINGS: Linux linker settings are selected" )
	endif()
	
	include( ${JMSD_CMAKE_SETTINGS_PATH}/compiler-settings/set-linux-compiler-settings.cmake )

elseif( WIN32 )
	if ( JMSD_CMAKE_VERBOSE_OUTPUT_IS_ON )
		message( STATUS "[JMSD] COMPILER SETTINGS: Windows linker settings are selected" )
	endif()
	
	include( ${JMSD_CMAKE_SETTINGS_PATH}/compiler-settings/set-windows-compiler-settings.cmake )

else()
	message( STATUS "[JMSD] COMPILER SETTINGS: Unsupported platform. Default settings are used." )

endif()


#CONFIG += c++1z
#CONFIG += exceptions
#CONFIG += depend_includepath
#CONFIG += incremental

JMSD_CMAKE_CURRENT_FILE_OUT( "set-compiler-settings.cmake" )
