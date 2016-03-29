# Change the owner of the launchers.
EXECUTE_PROCESS(COMMAND chown haptix /home/haptix/Desktop/haptixMPLRightStart.desktop
                COMMAND chgrp haptix /home/haptix/Desktop/haptixMPLRightStart.desktop
                COMMAND chown haptix /home/haptix/Desktop/haptixMPLLeftStart.desktop
                COMMAND chgrp haptix /home/haptix/Desktop/haptixMPLLeftStart.desktop
                COMMAND chown haptix /home/haptix/Desktop/haptixLukeRightStart.desktop
                COMMAND chgrp haptix /home/haptix/Desktop/haptixLukeRightStart.desktop
                COMMAND chown haptix /home/haptix/Desktop/haptixLukeLeftStart.desktop
                COMMAND chgrp haptix /home/haptix/Desktop/haptixLukeLeftStart.desktop
                COMMAND chown haptix /home/haptix/Desktop/haptixUpdate.desktop
                COMMAND chgrp haptix /home/haptix/Desktop/haptixUpdate.desktop
                COMMAND chown haptix /home/haptix/Desktop/haptixSupport.desktop
                COMMAND chgrp haptix /home/haptix/Desktop/haptixSupport.desktop
                COMMAND chown haptix /home/haptix/Desktop/checkStereo.desktop
                COMMAND chgrp haptix /home/haptix/Desktop/checkStereo.desktop)
