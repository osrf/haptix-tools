#!/bin/sh

## Copyright (C) 2015 Open Source Robotics Foundation
##
## Licensed under the Apache License, Version 2.0 (the "License");
## you may not use this file except in compliance with the License.
## You may obtain a copy of the License at
##
##     http://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS,
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.
##
## Author: Open Source Robotics Foundation.
## Description: Create the "haptix" user and SSH keys if needed.

# Check if there is a "haptix" user
getent passwd haptix > /dev/null

if [ $? -ne 0 ]; then
  # Create the "haptix" user add the user to the "sudo" group.
  echo "You don't have a "haptix" user. Creating it..."
  useradd -m haptix -G sudo -s /bin/bash
  echo "Please, enter a password for the "haptix" user."
  passwd haptix
fi

# Check if the user has a SSH key pair.
if [ ! -f /home/haptix/.ssh/id_rsa.pub ]; then
  # Generate SSH key.
  su haptix -c "ssh-keygen -q -t rsa -N \"\" -f /home/haptix/.ssh/id_rsa"
fi

