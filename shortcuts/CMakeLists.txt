# Install the script for starting Gazebo.
install(PROGRAMS haptixStart DESTINATION ${CMAKE_INSTALL_PREFIX}/bin)
install(PROGRAMS haptixStart.desktop DESTINATION /home/haptix/Desktop)

# Install the script that checks for updates in our software.
install(PROGRAMS haptixUpdate DESTINATION ${CMAKE_INSTALL_PREFIX}/bin)
install(PROGRAMS haptixUpdate.desktop DESTINATION /home/haptix/Desktop)

# Install the script that provides remote support.
install(PROGRAMS haptixSupport DESTINATION ${CMAKE_INSTALL_PREFIX}/bin)
install(PROGRAMS haptixSupport.desktop DESTINATION /home/haptix/Desktop)

# Install all the icons.
add_subdirectory(icons)

# Change ownership of the .desktop launchers (from "root" to "haptix").
install(SCRIPT "${CMAKE_CURRENT_SOURCE_DIR}/PostInstall.cmake")
