## How to run vagrant command from host machine:

```bash
NAME=VM42 HOSTNAME=VM42 CPU=1 MEMORY=1024 IMAGE=generic/ubuntu2004 TAG=4.3.6 \
PROVIDER=virtualbox NETWORK=public IP=192.168.1.42 MAC=080027d590d9 \
vagrant status master
```