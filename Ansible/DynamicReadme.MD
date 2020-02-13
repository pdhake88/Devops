sudo pip3 install awscli: Install AWS with pip3. Python3 needs to be installed first.

![image](https://user-images.githubusercontent.com/60160837/74471431-2dccff80-4e6e-11ea-992b-5df1bb5ac759.png)

aws configure : to configure aws user.

aws iam get-user: get user from aws configuration.

![image](https://user-images.githubusercontent.com/60160837/74471889-fca0ff00-4e6e-11ea-94f7-2d98ad747c7e.png)

Steps to setup tools to run the dynamic inventory

1. sudo apt-get install -y python3.6
2. sudo apt-get install -y python3-pip
3. sudo pip3 install virtualenv
4. mkdir -p ~/ansible-dir
5. cd ansible-dir
6. virtualenv venv
7. source venv/bin/activate
8. pip install ansible
9. pip install awscli boto boto3
10. pip install botocore
and, then run this command -
ansible-inventory -i aws_ec2.yml --list
Now, you will be good to work with Ansible AWS Dynamic Inventory

