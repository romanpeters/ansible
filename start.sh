#!/bin/bash

# generate ssh keys if not available
if [ ! -f ~/.ssh/id_rsa ]; then
  ssh-keygen
fi

# copy the public key to the Raspberry Pi
# if succesful, start the playbook
ssh-copy-id pi@raspberrypi.local && ./scripts/run_playbook.sh main.yml -i hosts;