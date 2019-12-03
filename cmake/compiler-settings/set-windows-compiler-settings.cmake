include( ${JMSD_CMAKE_SETTINGS_PATH}/set-verbosity-configuration.cmake )

JMSD_CMAKE_CURRENT_FILE_IN( "set-windows-compiler-settings.cmake" )

if ( WIN32 )
	# C language
	#	message( STATUS "[JMSD] CMAKE_C_FLAGS: ${CMAKE_C_FLAGS}" )
	#	message( STATUS "[JMSD] CMAKE_C_FLAGS_DEBUG: ${CMAKE_C_FLAGS_DEBUG}" )
	#	message( STATUS "[JMSD] CMAKE_C_FLAGS_RELEASE: ${CMAKE_C_FLAGS_RELEASE}" )

	#	set( JMSD_CMAKE_C_FLAGS "" )
	#	set( JMSD_CMAKE_C_FLAGS_DEBUG "" )
	#	set( JMSD_CMAKE_C_FLAGS_RELEASE "" )

	#	string( REPLACE ";" " " JMSD_CMAKE_C_FLAGS_STR "${JMSD_CMAKE_C_FLAGS}" )
	#	string( REPLACE ";" " " JMSD_CMAKE_C_FLAGS_DEBUG_STR "${JMSD_CMAKE_C_FLAGS_DEBUG}" )
	#	string( REPLACE ";" " " JMSD_CMAKE_C_FLAGS_RELEASE_STR "${JMSD_CMAKE_C_FLAGS_RELEASE}" )

	#	set( CMAKE_C_FLAGS "" )
	#	set( CMAKE_C_FLAGS_DEBUG "" )
	#	set( CMAKE_C_FLAGS_RELEASE "" )

	#	set( CMAKE_C_FLAGS ${JMSD_CMAKE_C_FLAGS_STR} )
	#	set( CMAKE_C_FLAGS_DEBUG ${JMSD_CMAKE_C_FLAGS_DEBUG_STR} )
	#	set( CMAKE_C_FLAGS_RELEASE ${JMSD_CMAKE_C_FLAGS_RELEASE_STR} )

	# C++ language
	set( JMSD_CMAKE_CXX_FLAGS "" )
	set( JMSD_CMAKE_CXX_FLAGS_DEBUG "" )
	set( JMSD_CMAKE_CXX_FLAGS_RELEASE "" )

#	set( JMSD_CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} )
#	set( JMSD_CMAKE_CXX_FLAGS_DEBUG ${CMAKE_CXX_FLAGS_DEBUG} )
#	set( JMSD_CMAKE_CXX_FLAGS_RELEASE ${CMAKE_CXX_FLAGS_RELEASE} )

	# warning settings
	#	common
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/Wall" ) # enable all warnings
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/WX" ) # treat warnings as errors
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/bigobj" ) # generate extended object format
	#	debug
	#	release

	# special warning settings (microsoft sucks)
	#	common
	#	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd4251" ) # class needs to have dll-interface to be used by clients of class
	#	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd4275" ) # non dll-interface class '' used as base for dll-interface class ''
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/D _CRT_SECURE_NO_WARNINGS" ) # this function or variable may be unsafe
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd4250" ) # inherits via dominance
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd4251" ) # class needs to have dll-interface to be used by clients of class
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd4371" ) # '': layout of class may have changed from a previous version of the compiler due to better packing of member ''
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd4435" ) # Object layout under /vd2 will change due to virtual base
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd4437" ) # dynamic_cast from virtual base '' to '' could fail in some contexts
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd4464" ) # relative include path contains '..'
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd4503" ) # '' : decorated name length exceeded, name was truncated
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd4514" ) # unreferenced inline function has been removed
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd4548" ) # expression before comma has no effect; expected expression with side-effect // malloc.h
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd4571" ) # catch( ... ) semantics changed since Visual C++ 7.1; structured exceptions (SEH) are no longer caught
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd4589" ) # Constructor of abstract class ignores initializer for virtual base class
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd4623" ) # '': default constructor was implicitly defined as deleted
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd4625" ) # copy constructor was implicitly defined as deleted
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd4626" ) # assignment operator was implicitly defined as deleted
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd4710" ) # function not inlined
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd4774" ) # 'sprintf_s' : format string expected in argument 3 is not a string literal
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd4820" ) # bytes padding added after data member
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd4866" ) # compiler may not enforce left-to-right evaluation order for call to ''
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd5026" ) # move constructor was implicitly defined as deleted
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd5027" ) # move assignment operator was implicitly defined as deleted
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd5038" ) # data member '' will be initialized after data member ''
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd5039" ) # '': pointer or reference to potentially throwing function passed to extern C function under -EHc. Undefined behavior may occur if this function throws an exception.
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd5045" ) # Compiler will insert Spectre mitigation for memory load if /Qspectre switch specified
	#	debug
	#	release
	list( APPEND JMSD_CMAKE_CXX_FLAGS_RELEASE "/wd4711" ) # function selected for automatic inline expansion

	# special warning settings (google [test] sucks)
	#	common
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd4061" ) # enumerator in switch of enum is not explicitly handled by a case label
	#	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd4365" ) # signed/unsigned mismatch
	#	list( APPEND JMSD_CMAKE_CXX_FLAGS "/wd4668" ) # is not defined as a preprocessor macro, replacing with '0' for '#if/#elif'
	#	debug
	#	release

	# optimization settings
	#	common
	#	list( APPEND JMSD_CMAKE_CXX_FLAGS /fp:precise ) # floating point model: precise [ precise | strict | fast ]
	#	debug
	list( APPEND JMSD_CMAKE_CXX_FLAGS_DEBUG "/Od" ) # disable optimization
	list( APPEND JMSD_CMAKE_CXX_FLAGS_DEBUG "/Oy-" ) # do not omit frame pointers
	#	release
	list( APPEND JMSD_CMAKE_CXX_FLAGS_RELEASE "/Gy" ) # Enable function level linking: (yes)
	list( APPEND JMSD_CMAKE_CXX_FLAGS_RELEASE "/Ox" ) # Optimization: full optimization
	list( APPEND JMSD_CMAKE_CXX_FLAGS_RELEASE "/Ob2" ) # Inline functions expansion: any suitable
	list( APPEND JMSD_CMAKE_CXX_FLAGS_RELEASE "/GT" ) # Enable fiber-safe optimiztions: (yes)
	list( APPEND JMSD_CMAKE_CXX_FLAGS_RELEASE "/Oy" ) # Omit frame pointers: (yes)
	list( APPEND JMSD_CMAKE_CXX_FLAGS_RELEASE "/Oi" ) # Enable intrinsic functions: (yes)
	list( APPEND JMSD_CMAKE_CXX_FLAGS_RELEASE "/Ot" ) # Favor size or speed: favor fast code // [ s | t ]

	if ( JMSD_ROOT_RELEASE_LINK_TIME_CODE_GENERATION )
		if ( ${JMSD_ROOT_RELEASE_LINK_TIME_CODE_GENERATION} STREQUAL "is_on" )
			list( APPEND JMSD_CMAKE_CXX_FLAGS_RELEASE "/GL" ) # Whole program optimization: (yes)
		endif()
	endif()

	# analysis settings
	#	common
	#	list( APPEND JMSD_CMAKE_CXX_FLAGS "/analyze-" ) # turn off static analysis // /analyze:WX- don't threat analyzer warnings as errors
	#	debug
	#	list( APPEND JMSD_CMAKE_CXX_FLAGS_DEBUG "/GS" ) # Buffer security check: enabled
	#	list( APPEND JMSD_CMAKE_CXX_FLAGS_DEBUG "/sdl" ) # SDL checks: (yes) // additional security checks
	#	list( APPEND JMSD_CMAKE_CXX_FLAGS_DEBUG "/RTCc" ) # Smaller type check: (yes)
	#	list( APPEND JMSD_CMAKE_CXX_FLAGS_DEBUG "/D _ALLOW_RTCc_IN_STL" ) # RTCc rejects conformant code, so it isn't supported by the C++ Standard Library.
	#	list( APPEND JMSD_CMAKE_CXX_FLAGS_DEBUG "/RTC1" ) # Basic runtime checks: Both [ RTCs | RTCu | RTC1/RTCsu ] // stack frames, unitialized variables
	#	release
	list( APPEND JMSD_CMAKE_CXX_FLAGS_RELEASE "/GS-" ) # Buffer security check: disabled

	# language settings
	#	common
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/std:c++latest" ) # All C++20 features require /std:c++latest; when the implementation is complete, a new /std:c++20 option will be enabled.
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/Zc:__cplusplus" ) # All C++20 features require /std:c++latest; when the implementation is complete, a new /std:c++20 option will be enabled.
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/permissive" ) # enable some nonconforming code to compile (feature set subject to change) (on by default)
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/Zc:forScope" ) # force conformance in for loop scope: (yes)
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/Zc:wchar_t" ) # treat wchar_t as built in type
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/Zc:auto" ) # enforce the new Standard C++ meaning for auto
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/Zc:trigraphs-" ) # enable trigraphs (off by default)
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/Zc:rvalueCast" ) # enforce type conversion rules
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/Zc:strictStrings" ) # disable string-literal to [char|wchar_t]* conversion (off by default)
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/Zc:implicitNoexcept" ) # enable implicit noexcept on required functions
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/Zc:threadSafeInit" ) # enable thread-safe local static initialization
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/Zc:inline" ) # remove unreferenced function or data if it is COMDAT or has internal linkage only (off by default)
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/Zc:sizedDealloc" ) # enable C++14 global sized deallocation functions (on by default)
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/Zc:throwingNew" ) # assume operator new throws on failure (off by default)
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/Zc:referenceBinding" ) # a temporary will not bind to an non-const lvalue reference (off by default)
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/Zc:twoPhase-" ) # disable two-phase name lookup
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/Zc:ternary" ) # enforce C++11 rules for conditional operator (off by default)
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/Zc:noexceptTypes" ) # enforce C++17 noexcept rules (on by default in C++17 or later)
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/Zc:alignedNew" ) # enable C++17 alignment of dynamically allocated objects (on by default)

	list( APPEND JMSD_CMAKE_CXX_FLAGS "/Zc:externConstexpr" ) # allows external linkage for constexpr variables

	list( APPEND JMSD_CMAKE_CXX_FLAGS "/volatile:iso" ) # Acquire/release semantics not guaranteed on volatile accesses

	list( APPEND JMSD_CMAKE_CXX_FLAGS "/GR" ) # enable run-time type information: (yes)
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/EHsc" ) # enable C++ exceptions: [ EHsc | EHa ] // yes, yes with SEH
	#	list( APPEND JMSD_CMAKE_CXX_FLAGS "/Gd" ) # calling conventions: __cdecl [ Gd | Gr | Gz | Gv ] // __cdecl, __fastcall, __stdcall, __vectorcall
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/Za" ) # disable language extensions: (yes)
	#	debug
	#	release

	# security settings
	#	common
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/Qspectre-" ) # enable mitigations for CVE 2017-5753 (disabled)
	#	debug
	#	release

	# additional stuff
	#	common
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/MP" ) # multi-processor compilation
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/Zi" ) # debug information output: program database
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/Gm-" ) # disable minimal rebuild
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/errorReport:none" ) # no internal compiler error reporting
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/nologo" ) # suppress the display of the copyright banner when the compiler starts up and display of informational messages during compiling.
	list( APPEND JMSD_CMAKE_CXX_FLAGS "/D _UNICODE" ) # Character set: [ _UNICODE | _MBCS ]
	#	debug
	list( APPEND JMSD_CMAKE_CXX_FLAGS_DEBUG "/MDd" ) # multi-threaded debug dll [ MT | MTd | MD | MDd ] // multi-threaded, debug, dll
	list( APPEND JMSD_CMAKE_CXX_FLAGS_DEBUG "/D _DEBUG" ) # debug flag
	#	release
	list( APPEND JMSD_CMAKE_CXX_FLAGS_RELEASE "/MD" ) # Runtime library: multi-threaded dll [ MT | MTd | MD | MDd ] // multi-threaded, debug, dll

	string( REPLACE ";" " " JMSD_CMAKE_CXX_FLAGS_STR "${JMSD_CMAKE_CXX_FLAGS}" )
	string( REPLACE ";" " " JMSD_CMAKE_CXX_FLAGS_DEBUG_STR "${JMSD_CMAKE_CXX_FLAGS_DEBUG}" )
	string( REPLACE ";" " " JMSD_CMAKE_CXX_FLAGS_RELEASE_STR "${JMSD_CMAKE_CXX_FLAGS_RELEASE}" )

	set( CMAKE_CXX_FLAGS "" )
	set( CMAKE_CXX_FLAGS_DEBUG "" )
	set( CMAKE_CXX_FLAGS_RELEASE "" )

	set( CMAKE_CXX_FLAGS ${JMSD_CMAKE_CXX_FLAGS_STR} )
	set( CMAKE_CXX_FLAGS_DEBUG ${JMSD_CMAKE_CXX_FLAGS_DEBUG_STR} )
	set( CMAKE_CXX_FLAGS_RELEASE ${JMSD_CMAKE_CXX_FLAGS_RELEASE_STR} )

#	message( STATUS "[JMSD] CXX_FLAGS: " ${JMSD_CMAKE_CXX_FLAGS_STR} )
#	message( STATUS "[JMSD] CXX_FLAGS debug: " ${JMSD_CMAKE_CXX_FLAGS_DEBUG_STR} )
#	message( STATUS "[JMSD] CXX_FLAGS release: " ${JMSD_CMAKE_CXX_FLAGS_RELEASE_STR} )

else()
	message( SEND_ERROR "[JMSD] COMPILER SETTINGS: set-windows-compiler-settings.cmake is included while not on windows" )

endif()

JMSD_CMAKE_CURRENT_FILE_OUT( "set-windows-compiler-settings.cmake" )

## COMMON

##/D "WIN32"
##/D "NDEBUG" # for release
##/D "_WINDOWS"
##/D "_USRDLL"
##/D "SHAREDSETTINGSEXAMPLE_EXPORTS"
##/D "_WINDLL"
##/D "UNICODE"

# /Zc:arg1[,arg2] C++ language conformance, where arguments can be:
# threadSafeInit[-]     enable thread-safe local static initialization
# sizedDealloc[-]       enable C++14 global sized deallocation
#                       functions (on by default)
# throwingNew[-]        assume operator new throws on failure (off by default)
# referenceBinding[-]   a temporary will not bind to an non-const
#                       lvalue reference (off by default)
