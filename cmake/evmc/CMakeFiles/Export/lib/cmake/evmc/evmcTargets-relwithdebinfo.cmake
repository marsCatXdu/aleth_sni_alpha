#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "evmc::instructions" for configuration "RelWithDebInfo"
set_property(TARGET evmc::instructions APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(evmc::instructions PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/libevmc-instructions.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS evmc::instructions )
list(APPEND _IMPORT_CHECK_FILES_FOR_evmc::instructions "${_IMPORT_PREFIX}/lib/libevmc-instructions.a" )

# Import target "evmc::loader" for configuration "RelWithDebInfo"
set_property(TARGET evmc::loader APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(evmc::loader PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/libevmc-loader.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS evmc::loader )
list(APPEND _IMPORT_CHECK_FILES_FOR_evmc::loader "${_IMPORT_PREFIX}/lib/libevmc-loader.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
