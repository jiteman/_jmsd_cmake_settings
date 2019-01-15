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


function(
	JMSD_REMOVE_FILE_FROM_THE_LIST
	out_list
	in_list
	file_name_to_remove
)
	set( found_file_indices "" )

	foreach( file_path ${in_list} )
		string( FIND ${file_path} ${file_name_to_remove} found_index )

		if( NOT found_index EQUAL -1 )
			list( APPEND found_file_indicies ${found_index} )
		endif()
	endforeach()

	list( REVERSE found_file_indicies )

	foreach( file_index ${found_file_indicies} )
		list( REMOVE_AT ${${in_out_list}} ${file_index} )
	endforeach()

endfunction()


function(
	JMSD_REMOVE_FILES_FROM_THE_LIST
	in_out_list
	file_name_to_remove_list
)
	foreach( filename ${${file_name_to_remove_list}} )
		JMSD_REMOVE_FILE_FROM_THE_LIST( ${in_out_list} ${filename} )
	endforeach()

endfunction()
