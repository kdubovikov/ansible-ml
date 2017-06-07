# Ansible EC2 data science enviroment
This playbook spins up Amazon EC2 stop instance with preinstalled packages useful for data science and machine learning related tasks:
* miniconda
* zsh
* vim
* tmux
* git
* CUDA and CUDNN (optional)	

## Provisioning spot instances from scratch
1. Setup ansible for use with Amazon EC2: https://aws.amazon.com/ru/blogs/apn/getting-started-with-ansible-and-dynamic-amazon-ec2-inventory-management/
1. Edit EC2 variables in `ec2.yml` playbook for your preperences (instance type, spot price, ...)
1. Spin it up with `provision.sh`

## Configuring provisioned instances
Use `ec2-gpu-cuda.yml` playbook. By default it will apply to all g2.2xlarge instances (see `hosts` in the playbook). 

## References
This playbook uses the following roles:

1. https://github.com/robinandeer/ansible-miniconda (MIT License)
