Role Name
=========

Automate the creation on Virtual machines using Virtualbox and Vagrant.

Requirements
------------

Vagrant and Virtualbox should be installed on the machine host (machine that will host VM(s)).

Role Variables
--------------

Available variables are listed below, along with default values (see `defaults/main.yml`):


Dependencies
------------

None.

Example Playbook
----------------
    - hosts: servers
      roles:
        - aIrseneO.vm
      vars:
        ## User of the host machine
        #
        host_user: ansible

        ## Working directory on the host machine
        #
        working_dir: "/home/{{ host_user }}/vagrant"

        ## Public key to allow ssh client to access VM(s)
        #   Local ssh public key can be used "~/.ssh/id_rsa.pub"
        #
        # pub_key: "~/.ssh/id_rsa.pub"

        ## Vagrant available clicmd:
        #      up | resume | validate | status (default)
        #    halt | reload | suspend  | destroy
        #   clean | provision
        #
        clicmd: status

        ## Node selector (selected by NAME):
        #   Run command for a specific node(s) only i.e. "VM42"
        #
        # nodes_selector: []
        #
        ## To select all node with a string include in their name use:
        #
        # nodes_selector:
        #   include: k3s1

        ## Playbook to run on the VM (on the local machine)
        #
        # playbook_path: "{{ playbook_dir }}/playbook.yml"

        ## Script to run on the VM (on the local machine)
        #
        # script_path: "{{ playbook_dir }}/script.yml"

        ## List of VM(s) to create
        # 
        vnodes:
        - NAME: VM42
          HOSTNAME: VM42

          ## VM resources
          #
          CPU: 1
          MEMORY: 1024

          ## Image:
          #
          IMAGE: generic/ubuntu2004
          TAG: 4.3.6

          ## Provider: tested with Virtualbox only
          #
          PROVIDER: virtualbox

          ## Networking
          #   Network: public | private | forwarded_port
          NETWORK: private
          IP: 192.168.21.42

          ## SYNC: configure the sync betweem the host and the VM
          #
          DISABLE_SYNC: true
          LOCAL_SYNC: "."
          REMOTE_SYNC: "/vagrant"
          
          ## Task: To run on the VM during creation
          #
          RUN_PLAYBOOK: false
          RUN_SCRIPT: false
          SCRIPT_ARGS: ""

License
-------

MIT

Author Information
------------------

This role was create in 2023 by [AIrseneO](https://github.com/aIrseneO)