# Install xorg.conf.haptix with the HAPTIX options and xorg.conf simlink.
install(FILES xorg.conf.haptix xorg.conf DESTINATION /etc/X11/)

# Install service that verifies that xorg.conf points to the HAPTIX conf file.
install(PROGRAMS haptixXorg DESTINATION /etc/init.d/)

# Install S15haptixSorg enabling the previous service.
install(FILES S15haptixXorg DESTINATION /etc/rc2.d/)
