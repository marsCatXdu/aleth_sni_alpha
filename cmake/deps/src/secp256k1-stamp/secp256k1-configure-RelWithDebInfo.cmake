

set(command "/usr/bin/cmake;-DCMAKE_INSTALL_PREFIX=/home/marscat/Desktop/ethereum/aleth/cmake/deps;-DCMAKE_POSITION_INDEPENDENT_CODE=;-DCMAKE_C_COMPILER=/usr/bin/cc;-DCMAKE_CXX_COMPILER=/usr/bin/c++;-GUnix Makefiles;/home/marscat/Desktop/ethereum/aleth/cmake/deps/src/secp256k1")
execute_process(
  COMMAND ${command}
  RESULT_VARIABLE result
  OUTPUT_FILE "/home/marscat/Desktop/ethereum/aleth/cmake/deps/src/secp256k1-stamp/secp256k1-configure-out.log"
  ERROR_FILE "/home/marscat/Desktop/ethereum/aleth/cmake/deps/src/secp256k1-stamp/secp256k1-configure-err.log"
  )
if(result)
  set(msg "Command failed: ${result}\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach()
  set(msg "${msg}\nSee also\n  /home/marscat/Desktop/ethereum/aleth/cmake/deps/src/secp256k1-stamp/secp256k1-configure-*.log")
  message(FATAL_ERROR "${msg}")
else()
  set(msg "secp256k1 configure command succeeded.  See also /home/marscat/Desktop/ethereum/aleth/cmake/deps/src/secp256k1-stamp/secp256k1-configure-*.log")
  message(STATUS "${msg}")
endif()
