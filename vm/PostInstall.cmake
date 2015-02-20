# Change the owner of the launchers.
EXECUTE_PROCESS(COMMAND chown haptix /home/haptix/.config/upstart/haptix_vm.conf
                COMMAND chgrp haptix /home/haptix/.config/upstart/haptix_vm.conf
)