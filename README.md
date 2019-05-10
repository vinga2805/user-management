# SOLUTION
- This solution has been implemented with the combination of SHELL and ANSIBLE.
- Shell script is providing the wrapper script to invoke ansible script.
- Shell script will perform below actions via menu driven program.
- ADD USER
- LIST USER
- DELETE USER
## Assumption
- Anisble is insstalled in Ubuntu server.(Ubuntu 16.04)
- Creating ssh-key pair in the local directory, later on private key can be emailed to user.
## Installation steps
- git clone https://github.com/vinga2805/user-management.git
- edit hosts file to add server entries like below.
- X.X.X.X ansible_user=xyz ansible_ssh_private_key_file=abc.pem--->(tested on aws)
- chmod 775 user-manage.sh
- sh ./user-manage.sh
- Follow men driven program.
