#! /bin/bash

echo -e "\n______________________________________________________________________________________\n"
echo -e "  This will create 1 simple t2.micro EC2 instance in the Ireland region..."
echo -e "  PLEASE NOTE: The SSH key needed to access your EC2 instance must already exist!"
echo -e "               This template is NOT SUITABLE for production - For Educationl use ONLY!"
echo -e "______________________________________________________________________________________\n"

read -p "Enter the name of the AWS Stack Name to be setup: " AWSstack
read -p "Enter the name of the EXISTING SSH key to be used: " AWSkey
read -p "Enter the ROOT password for the RDS Instance: " MySQLrootPass


echo -e "\nPLEASE NOTE: Deleting the stack in the AWS Console/CLI will delete all the resources created!"
echo -e "Attempting to create $AWSstack...\n"

aws cloudformation create-stack --stack-name $AWSstack --region=eu-west-1 --template-body file://./EC2x2-RDS-ELB-defaultVPC.json\
 --parameters\
 ParameterKey=KeyName,ParameterValue=$AWSkey\
 ParameterKey=DBPassword,ParameterValue=$MySQLrootPass

echo -e "\n"
