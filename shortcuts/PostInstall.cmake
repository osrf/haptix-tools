# Copy the files to the destination directory
EXECUTE_PROCESS(COMMAND chown haptix /home/haptix/Desktop/haptixStart.desktop
                COMMAND chgrp haptix /home/haptix/Desktop/haptixStart.desktop
                COMMAND chown haptix /home/haptix/Desktop/haptixUpdate.desktop
                COMMAND chgrp haptix /home/haptix/Desktop/haptixUpdate.desktop
                COMMAND chown haptix /home/haptix/Desktop/haptixSupport.desktop
                COMMAND chgrp haptix /home/haptix/Desktop/haptixSupport.desktop)