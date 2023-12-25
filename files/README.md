# Playgrounds
## Master node:
```bash
NAME=master IMAGE=generic/ubuntu1804 TAG=4.1.20 NETWORK=public \
IP=192.168.1.100 BRIDGE=wlp1s0 HOSTNAME=master PROVIDER=virtualbox \
CPU=3 MEMORY=3072 PLAYBOOK=playbook.yml \
vagrant status master
```