# Ansible GitLab Installation

- Ansible core version 2.14.2 verified to work
- Install geerlingguy.gitlab role with `ansible-galaxy install geerlingguy.gitlab`

1. Make sure terraform module is applied and EC2 instance is deployed
2. Verify you have stored ssh private key in format specified in [hosts](./hosts) file
3. Run `ansible all -i hosts -m ping` to verify connection
4. Run `ansible-playbook -i hosts gitlab.yml` to start gitlab installation
