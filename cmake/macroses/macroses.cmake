macro(
	JMSD_LIST_TO_STRING
	in_list_out_string		
)
	string( REPLACE ";" " " ${in_list_out_string} "${${in_list_out_string}}" )
endmacro()

if ( UNIX )
	include( ${JMSD_CMAKE_SETTINGS_PATH}/macroses/linux-macroses.cmake )
elseif( WIN32 )
	include( ${JMSD_CMAKE_SETTINGS_PATH}/macroses/windows-macroses.cmake )
endif()

