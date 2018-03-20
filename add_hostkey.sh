#!/usr/bin/env bash

# generate ssh keys if not available
if [ ! -f ~/.ssh/id_rsa ]; then
    ssh-keygen
fi

# get the second line from the hosts inventory
host=$(sed "2q;d" hosts)

# copy the public key to the Raspberry Pi
# if succesful, start the playbook
ssh-copy-id pi@$host
