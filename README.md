# ansible
Ansible configuration files used for my Raspberry Pi

1. Download Raspbian and install Raspbian
1. Find the IP address of your Pi and write it on the second line of `hosts`
1. Copy your SSH public key to the Raspberry Pi with:
`$ sudo sh add_hostkey.sh`
1. Run the main playbook:
`$ ansible-playbook main.yml -i hosts`
