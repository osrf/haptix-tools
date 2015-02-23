# Change the owner of the launchers.
EXECUTE_PROCESS(COMMAND chown haptix /home/haptix/Desktop/haptixStart.desktop
                COMMAND chgrp haptix /home/haptix/Desktop/haptixStart.desktop
                COMMAND chown haptix /home/haptix/Desktop/haptixUpdate.desktop
                COMMAND chgrp haptix /home/haptix/Desktop/haptixUpdate.desktop
                COMMAND chown haptix /home/haptix/Desktop/haptixSupport.desktop
                COMMAND chgrp haptix /home/haptix/Desktop/haptixSupport.desktop
                COMMAND chown haptix /home/haptix/Desktop/checkStereo.desktop
                COMMAND chgrp haptix /home/haptix/Desktop/checkStereo.desktop)
