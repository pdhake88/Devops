 Ansible: Configuration Management tool for different nodes.
 
 sudo yum install python3: to get pip3 installer.
 Pip3 is a version of the pip installer for python3, which can download and configure new python modules with a simple one line command like… pip3 install --user pyserial
![image](https://user-images.githubusercontent.com/60160837/74350414-b327b580-4d83-11ea-90e2-3dbf92f0d069.png)

sudo pip3 install ansible : To install Ansible.
![image](https://user-images.githubusercontent.com/60160837/74350742-23363b80-4d84-11ea-9b64-3d3c3f4d8a4c.png)

ansible --version : To check the version of ansible
![image](https://user-images.githubusercontent.com/60160837/74350832-4f51bc80-4d84-11ea-90d0-26814ceeb4a1.png)

vi hosts : to add all the machines on which configuration needs to be done(nodes).

![image](https://user-images.githubusercontent.com/60160837/74352956-3b5b8a00-4d87-11ea-8c37-11ac658affeb.png)

Generated keys for Ansible master machine using ssh. And copied public key of ansible host in .ssh/authorized_keys file on node machines.

![image](https://user-images.githubusercontent.com/60160837/74353917-95a91a80-4d88-11ea-91f4-5a26b177e0ef.png)

ansible -i hosts all -a "hostname" -u ec2-user: to fetch all the available nodes for configuration.

![image](https://user-images.githubusercontent.com/60160837/74358590-b45edf80-4d8f-11ea-949e-c4889ae85196.png)

ansible -i hosts webserver1 -a "hostname" -u ec2-user: to fetch a group or node.

![image](https://user-images.githubusercontent.com/60160837/74359078-95ad1880-4d90-11ea-88cd-226bb178874e.png)

created httpd.yml file for installing httpd on node machines and copying index.html file from same directory.

![image](https://user-images.githubusercontent.com/60160837/74369861-1c1f2580-4da4-11ea-9f4d-471482c0e720.png)

Copied index file from local machine on ansible server.

![image](https://user-images.githubusercontent.com/60160837/74363942-98f8d200-4d99-11ea-8a60-cb983b2e63d3.png)

Moved index.html file from /tmp to current directory where httpd.yml is stored.

![image](https://user-images.githubusercontent.com/60160837/74364073-d2c9d880-4d99-11ea-9148-88f8c55d46a8.png)

ansible-playbook -i hosts -u ec2-user httpd.yml: deployed YAML file for installing httpd server on webserver1 machine.

![image](https://user-images.githubusercontent.com/60160837/74369195-f8a7ab00-4da2-11ea-80cd-686614c3f7f0.png)

When playbook in excuted successfully, httpd is installed on specified node and copied index file.
![image](https://user-images.githubusercontent.com/60160837/74370098-82a44380-4da4-11ea-8f8e-99bcf375f722.png)




















To run uptime for all the hosts in aws group
ansible aws -a “/sbin/uptime”
or
ansible aws -a “/sbin/uptime” -u ec2-user

Creating new directory
ansible aws -m file -a “dest=/home/ec2-user/textfile1.txt mode=777
owner=ubuntu group=ubuntu state=directory”

Deleting whole new directory
ansible aws -m file -a “dest=/home/ec2-user/textfile1.txt
state=absent”

Managing Packages
ansible aws -m yum -a “name=httpd state=present”
ansible aws -m yum -a “name=httpd state=absent”
ansible aws -m yum -a “name=httpd state=latest”

Gathering Facts
ansible all -a hostname
ansible all -a setup
