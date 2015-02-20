# Install the service that keeps the Windows virtual machine alive.
install(FILES haptix_vm.conf DESTINATION /home/haptix/.config/upstart)

# Script to be executed at installation time to change the ownership of the
# haptix_vm service.
INSTALL(SCRIPT PostInstall.cmake)