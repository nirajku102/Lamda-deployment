# UC04-Lamda-deployment
This repo is used to create Lambda Function with API Gateway and VPC - Terraform Deployment

**ARCHITECTURE**

![alt text](<lamda function architecture.jpg>)


TECH STACKS

**AWS**

**DOCKER**

**TERRAFORM**

**GITHUB ACTIONS**


**DIRECTORY TREE**

![alt text](<diagram uc04.PNG>)


The app directory contains a sample python code with a lamda handler function

It has a docker file for the application in the same app directory.

we have created terraform module for VPC and other resources. The **TERRAFORM** directory includes :

1. main.tf : It includes the vpc modules for creation of vpc and a public and private subnet which will be within the api gateway.

It also creates an Amazon Elastic Container Registry (ECR) repository with the name hello-world-lambda.

ECR is used to store Docker images, which can be used by AWS Lambda.

It creates a Lambda function named hello-world.

IAM role and permissions is used for the lamda function

The role allows the Lambda service (lambda.amazonaws.com) to assume it.

The function uses a Docker image specified by var.image_uri.

The function is associated with the IAM role created earlier.

The vpc_config block specifies that the Lambda function will run within the private subnets of the VPC and will use the security group lambda_sg.

we also create a security group named lambda_sg for the Lambda function.

We then create an HTTP API Gateway named hello-world-api.

HTTP APIs is used for the lamda function

We use API INTEGRATION with LAMDA to integrate the Lambda function with the API Gateway.

The integration_type is set to AWS_PROXY, which means the API Gateway will forward requests to the Lambda function.

The integration_uri is the ARN of the Lambda function.

The integration_method is set to POST, and the payload_format_version is set to 2.0.

The $default method is used and we set autodeploy to true.



            







