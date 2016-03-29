# Script to be executed at installation time create the "haptix" user and
# SSH keys if needed.
INSTALL(CODE "execute_process(COMMAND sh ${CMAKE_SOURCE_DIR}/shortcuts/PreInstall.sh)")

# Install the script for starting Gazebo.
install(PROGRAMS haptixMPLStart DESTINATION ${CMAKE_INSTALL_PREFIX}/bin)
install(PROGRAMS haptixMPLStart.desktop DESTINATION /home/haptix/Desktop)
install(PROGRAMS haptixLukeRightStart DESTINATION ${CMAKE_INSTALL_PREFIX}/bin)
install(PROGRAMS haptixLukeRightStart.desktop DESTINATION /home/haptix/Desktop)
install(PROGRAMS haptixLukeLeftStart DESTINATION ${CMAKE_INSTALL_PREFIX}/bin)
install(PROGRAMS haptixLukeLeftStart.desktop DESTINATION /home/haptix/Desktop)

# Install the script that checks for updates in our software.
install(PROGRAMS haptixUpdate DESTINATION ${CMAKE_INSTALL_PREFIX}/bin)
install(PROGRAMS haptixUpdate.desktop DESTINATION /home/haptix/Desktop)

# Install the script that provides remote support.
install(PROGRAMS haptixSupport DESTINATION ${CMAKE_INSTALL_PREFIX}/bin)
install(PROGRAMS haptixSupport.desktop DESTINATION /home/haptix/Desktop)

# Install the launcher that checks stereo using glxgears.
install(PROGRAMS checkStereo.desktop DESTINATION /home/haptix/Desktop)

# Install all the icons.
add_subdirectory(icons)

# Script to be executed at installation time to change the ownership of the
# .desktop files.
INSTALL(SCRIPT PostInstall.cmake)
