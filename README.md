BANKING ASSISTANT - WATSON ASSISTANT SAMPLE APPLICATION
-----------------------------------------------------------------------------------------------
This application serves as a Banking Assistant. It is a Simple application that demonstrates the Watson Assistant service in a chat.

> This is an interactive application which helps user with mutiple tasks. It serves as a virtual agent.
This application is built on chatbot which is developed using a Watson Assistant

> The application performs various tasks such as: Helps you choose the account type, Helps you with issues related to your account, Make appointment with manager etc 

## Click [here](http://54.144.212.171:3000/) to view a demo of the application

----------------------------------------------------------------
## Dependencies

 1. IBM Cloud CLI
 2. Node.js
 3. IBM Cloud Account
 4. AWS Account
 5. Docker
 6. Docker Compose
 7. Virtual Box
 8. Vagrant

--------------------------------------------------------------------------
## Prerequisites
1.	Sign up for an IBM Cloud account.
2.	Download the IBM Cloud CLI.
3.	Create an instance of the Watson Assistant service and get your credentials: 
1.	Go to the Watson Assistant page in the IBM Cloud Catalog.
2.	Log in to your IBM Cloud account.
3.	Click Create.
4.	Click Show to view the service credentials.
5.	Copy the apikey value, or copy the username and password values if your service instance doesn't provide an apikey.
6.	Copy the url value.
----------------------------------------------------------------------------------------------------------------------------------------
## Configurations

1.	In your IBM Cloud console, open the Watson Assistant service instance
2.	Click the Import workspace icon in the Watson Assistant service tool. Specify the location of the workspace JSON file in your local copy of the app project:
<project_root>/training/bank_simple_workspace.json
3.	Select Everything (Intents, Entities, and Dialog) and then click Import. The car dashboard workspace is created.
4.	Click the menu icon in the upper-right corner of the workspace tile, and then select View details.
5.	In the application folder, copy the .env.example file and create a file called .env
6.	cp .env.example .env
7.	Open the .env file and add the service credentials that you obtained in the previous step. 

The Watson SDK automaticaly locates the correct enviromental variables for either username, password, and url or the apikey and url credentials found in the .env file.

Example .env file that configures the apikey and url for a Watson Assistant service instance hosted in the US East region:

ASSISTANT_IAM_APIKEY= ttMEkgoiN76NuhS_fyuy78jhhyhhgfyu

ASSISTANT_URL= ://gateway.watsonplatform.net/assistant/api

1.	If your service instance uses username and password credentials, add the ASSISTANT_USERNAME and ASSISTANT_PASSWORD variables to the .env file.

Example .env file that configures the username, password, and url for a Watson Assistant service instance hosted in the US South region:
> WORKSPACE_ID="your ibm workspace id"

> ASSISTANT_USERNAME=apikey

> ASSISTANT_PASSWORD=dtkuu77989gygkyyt6g

> ASSISTANT_URL=https://gateway.watsonplatform.net/assistant/api

or
  
> ASSISTANT_IAM_APIKEY=ca2905e6 ttMEkgoiN76NuhS_fyuy78jhhyhhgfyu

> ASSISTANT_IAM_URL=https://gateway-syd.watsonplatform.net/assistant/api

----------------------------------------------------------------------------------------------------------------------------------------
# Running locally in IBM Cloud

1.	Install the dependencies
2.	npm install
3.	Run the application
4.	npm start
5.	View the application in a browser at localhost:3000

 ![Alt text](https://github.com/DeekshaSudini/marist-mscs621-deekshasudini/blob/master/readme_images/ibmcloud_deployment.JPG)



-----------------------------------------------------------------------------------------------
# Deploying Watson Application in AWS to make hybrid cloud

## Prerequisites:

1.	Sign up for an AWS Cloud Account.
2.	Create an instance of the Amazon service and get your credentials: 
1.	Go to the AWS sevices EC2 page in the AWS Cloud Services.
2.	Log in to your AWS Cloud account.
3.	Click  Services.
4.	Click EC2 under compute to create an instance.
5.	Click Launch Instance
6.	Choose an AMI (eg: Ubuntu Server 16.04 LTS (HVM), SSD Volume Type - ami-0f9cf087c1f27d9b1 (64-bit x86) / ami-036ede09922dadc9b (64-bit Arm) I have used this for my project)
7.	Click select and choose a instance type (t2 micro is used in this project).
8.	Click next until you see launch button.
9.	Select a new key-pair and download the keypair immediately later this file won't be available and click create
10.	And the Instance is created and then moves to running state
11.	Copy the Public DNS and Public IP and store it for later use.
----------------------------------------------------------------------------------------------------------------------------------------
## Running the application in AWS cloud:

In the terminal do the following:

1.	Run command chmod 400 ./aws-keypair.pem (./aws-keypair.pem is the one which you download while creating the instance)
2.	Run  comman ssh -i /aws-keypair.pem ubuntu@"public DNS" (paste the previously copied public DNS value in "public DNS" in your command).
3.	Now you will enter into aws cloud.
4.	Clone the project folder.
5.	Inside the cloned project now copy the .env.example file to .env

Follow the steps in Configurations

1.	Install Node.js
2.	Install IBM Cloud CLI.
3.	Install Docker
4.	Install Docker-Compose

1.	Run npm install
2.	Run npm start

You can see that application is running on port 3000 

1.	Under Network and Security go to Security Groups in AWS cloud 
2.	Select a security group other than default
![Alt text](https://github.com/DeekshaSudini/marist-mscs621-deekshasudini/blob/master/readme_images/SecurityGroup_image.PNG)
 
3.	Under inbound click edit and click add rule set the type to Custom TCP Rule, port range( give ibm port number here i.e: 3000) 
4.	Click Save 
5.	Now with the public IP (previously copied information while creating an instance) of the instance in the aws cloud and port-number 3000 from ibm cloud check whether the hybrid cloud is deployed successfully

> Example: 100.26.189.253:3000

You can see in the below screenshot that the application is running in hybrid cloud environment by combining ip address from AWS and port number from IBM Watson. 

![Alt text](https://github.com/DeekshaSudini/marist-mscs621-deekshasudini/blob/master/readme_images/AWScloud_deployment.JPG)

 
-------------------------------------------------------------------------------------
# How to containerize the application

In the terminal navigate to the folder where you have your project folder

1.	Create a docker file using "nano dockerfile" command
2.	Create a docker-compose.yml file "nano docker-compose.yml" command
3.	Make sure with the indentation.
4.	Make sure that you have .env in your folder 
5.	Run sudo docker-compose up 

Wait until you see done on the command line and it starts running on the web 

![Alt text](https://github.com/DeekshaSudini/marist-mscs621-deekshasudini/blob/master/readme_images/containerize.JPG)

Dockerfile

![Alt text](https://github.com/DeekshaSudini/marist-mscs621-deekshasudini/blob/master/readme_images/dockerfile_image.PNG)
 
Docker-compose.yml
 
![Alt text](https://github.com/DeekshaSudini/marist-mscs621-deekshasudini/blob/master/readme_images/Docker-compose_image.PNG)
 
# Deploying Application in Local Cloud Environment
-----------------------------------------------------------------------

1.	Run Vagrant up
2.	Run Vagrant ssh
3.	Clone the project folder into your vagrant

![Alt text](https://github.com/DeekshaSudini/marist-mscs621-deekshasudini/blob/master/readme_images/started_running_in_localcloud.PNG)
 
![Alt text](https://github.com/DeekshaSudini/marist-mscs621-deekshasudini/blob/master/readme_images/Localcloud_environment.JPG)
 
 
Navigate to the local project folder and make a .env file from .env.example

1.	Run cp  .env.example .env

> To open the .evn file
2.	Run nano .env 

Inside the .env file give the credentials by following the steps in #configurations

1.	Install Node.js
2.	Install IBM Cloud CLI.
3.	Install Docker
4.	Install Docker-Compose

And now run sudo docker-compose up 

![Alt text](https://github.com/DeekshaSudini/marist-mscs621-deekshasudini/blob/master/readme_images/Vagrant_3000.JPG)

It runs on the your VM port which is in your vagrant file 

> Example: 192.168.33.10:3000

----------------------------------------------------------------------------------------------------------------------------------------
This application is taken from the other git project
--------------------------------------------------------------------------------------------
How it differs from the original project:
--------------------------------------------------------------------------------------------
1.	This application is made hybrid by using services of both AWS and IBM cloud.
2.	The application is containerized
3.	The application is deployed locally using vagrant.

 









