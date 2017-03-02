#!/bin/bash
set -euf -o pipefail

ANSIBLE_HOSTS=`pwd`/ec2/ec2.py
EC2_INI_PATH=`pwd`/ec2/ec2.ini
ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook ec2.yml --user ec2-user -vvvvv
