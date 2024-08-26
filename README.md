# Ansible Playbooks

A collection of [Ansible][1] playbooks and roles to manage development (local) environment.

## Playbooks

+ [setup_dev.yml](setup_dev.yml)
Setup a new machine for development

+ [docker_containers.yml](docker_containers.yml)
Create Docker containers

## Roles

All available roles can be found in [roles](roles) directory.

# Usage

There is [ansible.cfg](ansible.cfg) file in the root of the project with default settings. By default the inventory file is [hosts](hosts). The only one target in hosts is `localhost`.

Run Ansible playbook with this command `ansible-playbook <playbook_name>`, for example: `ansible-playbook setup_dev.yml`.

You can create local playbooks that won't be committed to the version control system. To do this, use the following naming pattern: `<playbook_name>.local.yml`. The same applies to Ansible roles, just create any role inside `roles/local/<role_name>` directory. And it's also can be applied to files: `roles/dev_shell/files/shell/<file_name>.local.<ext>`.

Frankly, any file with pattern `*.local.*` and directory with name `local` will not be commited to the VCS (see [.gitignore](.gitignore)).

[1]: https://docs.ansible.com/ansible/latest/getting_started/introduction.html
