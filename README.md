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
          action: up
          host_user: ansible
          pub_key: "~/.ssh/id_rsa.pub"
          node_select: VM42
          nodes_vm:
          - NAME: VM42
            HOSTNAME: VM42
            CPU: 1
            MEMORY: 1024
            IMAGE: generic/ubuntu2004
            TAG: 4.3.6
            PROVIDER: virtualbox
            NETWORK: public
            IP: 192.168.1.42
            MAC: "080027d590d9"
            BRIDGE: "{{ ansible_default_ipv4.interface }}"
            DISABLE_SYNC: true
            LOCAL_SYNC: "."
            REMOTE_SYNC: "/vagrant"

License
-------

MIT

Author Information
------------------

This role was create in 2023 by [AIrseneO](https://github.com/aIrseneO)