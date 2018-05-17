# Cloudformation-loadbalanced-webservers
Cloudformation template for 2 webservers and RDS Database - For Educational Purposes Only

PLEASE NOTE: THIS TEMPLATE IS NOT SUITABLE FOR PRODUCTION!!!

The cloudformation template creates the following in a Default VPC on AWS infrastructure:

- 2 Webservers 
- 1 Loadbalancer (Please note AWS will charge for the Loadbalancer!) 
- 1 RDS instance

Ensure that you have an AWS account and programmatic access to it
You can launch this entire infrastructure on a free AWS account. Before you can run it, you need to generate
an ssh key for the EC2 instances to use. This currently cannot be done with Cloudformation


There are many reasons why this template is not suited for production. I will give you a few of them:
1. Ssh access is open to the world
2. It is mainly hard coded with the exception of 3 parameters
3. All the infrastructure is in 1 template
4. It is meant to be very basic, so for many of the configurations defaults are implied
5. ... 


HOW TO USE:
1. execute the shell script and make sure that the template file (.json) is in the same folder
2. input the name of the ssh key you created 
3. Enter a password to be used by your RDS instance
4. Once it runs successfully you can browse to Cloudformation on AWS console and watch the stack form



