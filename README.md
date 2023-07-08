ansible-role-vm
=========

Automate the creation of Virtual Machine(s) using Vagrant and Virtualbox

Requirements
------------

Vagrant and VirtualBox are required on the host of the VM(s)

<!-- Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well. -->

<!-- Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles. -->

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: test
      roles:
        - role: ansible-role-vm
          vars:
            host_working_directory: "/home/{{ ansible_user }}"

            provision_files:
              - script.sh
              - task.yml

            provision_directories: []

            iodo: up
          
            nodes_vm:
              - NAME: VM42
                CPU: 1
                MEMORY: 1024
                HOSTNAME: VM42

                IMAGE: generic/ubuntu2004
                TAG: 4.2.16

                PROVIDER: virtualbox

                NETWORK: public
                IP: 192.168.1.42

                DISABLE_SYNC: false
                LOCAL_SYNC: "."
                REMOTE_SYNC: "/vagrant"
                
                TASKS_FILE: ""

                SCRIPT_FILE: ""
                SCRIPT_ARGS: ""

```bash
ansible-playbook -i inventory test.yml -e iodo=up
```

License
-------

MIT
<!-- 
Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed). -->
