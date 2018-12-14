macro(
	JMSD_REMOVE_PLATFORM_HEADER_FILES_FOR_POCO
	file_list
	file_list_to_remove
	subfolder
)
	set( JMSD_PLATFORM_LIST "Android;C99;DEC;DUMMY;HPUX;POSIX;QNX;STD;STD_POSIX;STD_VX;STD_WIN32;SUN;UNIX;VMS;VX;WIN32;WIN32_OSVER;WIN32U;WINCE" )

	foreach( platform_name ${JMSD_PLATFORM_LIST} )
		foreach( filename ${${file_list_to_remove}} )
			list( REMOVE_ITEM ${file_list} ${PROJECT_SOURCE_DIR}/${subfolder}/${filename}_${platform_name}.h )
		endforeach()
	endforeach()

endmacro()

macro(
	JMSD_REMOVE_PLATFORM_CXX_SOURCE_FILES_FOR_POCO
	file_list
	file_list_to_remove
	subfolder
)
	set( JMSD_PLATFORM_LIST "Android;C99;DEC;DUMMY;HPUX;POSIX;QNX;STD;STD_POSIX;STD_VX;STD_WIN32;SUN;UNIX;VMS;VX;WIN32;WIN32_OSVER;WIN32U;WINCE" )

	foreach( platform_name ${JMSD_PLATFORM_LIST} )
		foreach( filename ${${file_list_to_remove}} )
			list( REMOVE_ITEM ${file_list} ${PROJECT_SOURCE_DIR}/${subfolder}/${filename}_${platform_name}.cpp )
		endforeach()
	endforeach()

endmacro()

macro(
	JMSD_REMOVE_HEADER_FILES_FOR_POCO
	file_list
	file_list_to_remove
	subfolder
)
	foreach( filename ${${file_list_to_remove}} )
		list( REMOVE_ITEM ${file_list} ${PROJECT_SOURCE_DIR}/${subfolder}/${filename}.h )
	endforeach()

endmacro()

macro(
	JMSD_REMOVE_CXX_SOURCE_FILES_FOR_POCO
	file_list
	file_list_to_remove
	subfolder
)
	foreach( filename ${${file_list_to_remove}} )
		list( REMOVE_ITEM ${file_list} ${PROJECT_SOURCE_DIR}/${subfolder}/${filename}.cpp )
	endforeach()

endmacro()

if ( UNIX )
	include( ${JMSD_CMAKE_SETTINGS_PATH}/macroses/linux-macroses.cmake )
elseif( WIN32 )
	include( ${JMSD_CMAKE_SETTINGS_PATH}/macroses/windows-macroses.cmake )
endif()

