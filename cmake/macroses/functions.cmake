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
	out_in_file_list
	file_name_to_remove
)
	set( found_file_indicies "" )
	set( filename_index 0 )

	foreach( file_path ${${out_in_file_list}} )
		string( FIND ${file_path} ${file_name_to_remove} found_index )

		if( NOT found_index EQUAL -1 )
			list( APPEND found_file_indicies ${filename_index} )
		endif()

		math( EXPR filename_index "${filename_index} + 1" )
	endforeach()

	list( LENGTH found_file_indicies index_quantity )

	if( ${index_quantity} GREATER 0 )
		if( ${index_quantity} GREATER 1 )
			list( REVERSE found_file_indicies )
		endif()

		set( out_list ${${out_in_file_list}} )

		foreach( file_index ${found_file_indicies} )
			list( REMOVE_AT out_list ${file_index} )
		endforeach()
	endif()

	set( ${out_in_file_list} ${out_list} PARENT_SCOPE )

endfunction()


function(
	JMSD_REMOVE_FILES_FROM_THE_LIST
	out_in_file_list
	file_name_to_remove_list
)
	set( out_in_list ${${out_in_file_list}} )


	foreach( filename ${${file_name_to_remove_list}} )
		JMSD_REMOVE_FILE_FROM_THE_LIST( out_in_list ${filename} )
	endforeach()

	set( ${out_in_file_list} ${out_in_list} PARENT_SCOPE )

endfunction()
