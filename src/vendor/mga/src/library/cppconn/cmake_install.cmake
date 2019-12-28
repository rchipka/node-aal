# Install script for directory: /Users/administrator/node-aal/src/vendor/cppconn

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
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xJDBCDevx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/cppconn/build_config.h;/cppconn/config.h;/cppconn/connection.h;/cppconn/datatype.h;/cppconn/driver.h;/cppconn/exception.h;/cppconn/metadata.h;/cppconn/parameter_metadata.h;/cppconn/prepared_statement.h;/cppconn/resultset.h;/cppconn/resultset_metadata.h;/cppconn/statement.h;/cppconn/sqlstring.h;/cppconn/warning.h;/cppconn/version_info.h;/cppconn/variant.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/cppconn" TYPE FILE FILES
    "/Users/administrator/node-aal/src/vendor/cppconn/build_config.h"
    "/Users/administrator/node-aal/src/vendor/cppconn/config.h"
    "/Users/administrator/node-aal/src/vendor/cppconn/connection.h"
    "/Users/administrator/node-aal/src/vendor/cppconn/datatype.h"
    "/Users/administrator/node-aal/src/vendor/cppconn/driver.h"
    "/Users/administrator/node-aal/src/vendor/cppconn/exception.h"
    "/Users/administrator/node-aal/src/vendor/cppconn/metadata.h"
    "/Users/administrator/node-aal/src/vendor/cppconn/parameter_metadata.h"
    "/Users/administrator/node-aal/src/vendor/cppconn/prepared_statement.h"
    "/Users/administrator/node-aal/src/vendor/cppconn/resultset.h"
    "/Users/administrator/node-aal/src/vendor/cppconn/resultset_metadata.h"
    "/Users/administrator/node-aal/src/vendor/cppconn/statement.h"
    "/Users/administrator/node-aal/src/vendor/cppconn/sqlstring.h"
    "/Users/administrator/node-aal/src/vendor/cppconn/warning.h"
    "/Users/administrator/node-aal/src/vendor/cppconn/version_info.h"
    "/Users/administrator/node-aal/src/vendor/cppconn/variant.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/administrator/node-aal/src/vendor/cppconn/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
