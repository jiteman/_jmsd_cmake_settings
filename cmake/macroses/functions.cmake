function(
	JMSD_SHOW_MESSAGE
	message_text
)
	if ( JMSD_CMAKE_VERBOSE_OUTPUT_IS_ON )
		message( STATUS "[JMSD] ${message_text}" )
	endif()
endfunction()


function(
	JMSD_ECHO_DIRECTORY_LIST
	directory_list
)
	foreach( directory ${${directory_list}} )
		message( STATUS "  " ${directory} )
	endforeach()
endfunction()
