cmake_minimum_required(VERSION 2.8)

project(haptix-tools)
string(TOLOWER ${PROJECT_NAME} PROJECT_NAME_LOWER)
set(MAJOR_VERSION 0)
set(MINOR_VERSION 3)
set(PATCH_VERSION 0)
set(VERSION ${MAJOR_VERSION}.${MINOR_VERSION})
set(VERSION_FULL ${MAJOR_VERSION}.${MINOR_VERSION}.${PATCH_VERSION})

message(STATUS "${PROJECT_NAME} version ${VERSION_FULL}")

# Desktop shortcuts.
add_subdirectory(shortcuts)
# Upstart job for keeping the Windows virtual machine alive.
add_subdirectory(vm)
# Xorg related tools and configuration files.
add_subdirectory(xorg)

########################################
# Package Creation:
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY
    "Infrastructure to be installed in the team machines for the HAPTIX project"
)
set(CPACK_PACKAGE_VENDOR "Open Source Robotics Foundation, Inc.")
set(CPACK_PACKAGE_DESCRIPTION_FILE "${CMAKE_CURRENT_SOURCE_DIR}/README")
set(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/LICENSE")
set(CPACK_PACKAGE_VERSION_MAJOR ${MAJOR_VERSION})
set(CPACK_PACKAGE_VERSION_MINOR ${MINOR_VERSION})
set(CPACK_PACKAGE_VERSION_PATCH ${PATCH_VERSION})
set(CPACK_SOURCE_PACKAGE_FILE_NAME "${PROJECT_NAME_LOWER}-${VERSION_FULL}")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "${PROJECT_NAME_LOWER}")
set(CPACK_SOURCE_GENERATOR "TBZ2")
list(APPEND CPACK_SOURCE_IGNORE_FILES
  ";~$;TODO;/.hg/;.swp$;/build/;.hgtags;.hgignore")
include(CPack)
