# Install the script for starting Gazebo.
install(PROGRAMS haptixStart DESTINATION ${CMAKE_INSTALL_PREFIX}/bin)
install(FILES haptixStart.desktop DESTINATION /home/haptix/Desktop)

# Install the script that checks for updates in our software.
install(PROGRAMS haptixUpdate DESTINATION ${CMAKE_INSTALL_PREFIX}/bin)
install(FILES haptixUpdate.desktop DESTINATION /home/haptix/Desktop)

# Install the script that provides remote support.
install(PROGRAMS haptixSupport DESTINATION ${CMAKE_INSTALL_PREFIX}/bin)
install(FILES haptixSupport.desktop DESTINATION /home/haptix/Desktop)

# Install all the icons.
add_subdirectory(icons)
