# Install script for directory: /home/marscat/Desktop/ethereum/aleth

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aleth" TYPE FILE FILES "/home/marscat/Desktop/ethereum/aleth/cmake/aleth/buildinfo.json")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/marscat/Desktop/ethereum/aleth/cmake/evmc/cmake_install.cmake")
  include("/home/marscat/Desktop/ethereum/aleth/cmake/libaleth-interpreter/cmake_install.cmake")
  include("/home/marscat/Desktop/ethereum/aleth/cmake/libdevcore/cmake_install.cmake")
  include("/home/marscat/Desktop/ethereum/aleth/cmake/libdevcrypto/cmake_install.cmake")
  include("/home/marscat/Desktop/ethereum/aleth/cmake/libp2p/cmake_install.cmake")
  include("/home/marscat/Desktop/ethereum/aleth/cmake/libethcore/cmake_install.cmake")
  include("/home/marscat/Desktop/ethereum/aleth/cmake/libevm/cmake_install.cmake")
  include("/home/marscat/Desktop/ethereum/aleth/cmake/libethereum/cmake_install.cmake")
  include("/home/marscat/Desktop/ethereum/aleth/cmake/libethashseal/cmake_install.cmake")
  include("/home/marscat/Desktop/ethereum/aleth/cmake/libwebthree/cmake_install.cmake")
  include("/home/marscat/Desktop/ethereum/aleth/cmake/libweb3jsonrpc/cmake_install.cmake")
  include("/home/marscat/Desktop/ethereum/aleth/cmake/aleth/cmake_install.cmake")
  include("/home/marscat/Desktop/ethereum/aleth/cmake/aleth-key/cmake_install.cmake")
  include("/home/marscat/Desktop/ethereum/aleth/cmake/aleth-vm/cmake_install.cmake")
  include("/home/marscat/Desktop/ethereum/aleth/cmake/rlp/cmake_install.cmake")
  include("/home/marscat/Desktop/ethereum/aleth/cmake/aleth-bootnode/cmake_install.cmake")
  include("/home/marscat/Desktop/ethereum/aleth/cmake/test/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/marscat/Desktop/ethereum/aleth/cmake/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
