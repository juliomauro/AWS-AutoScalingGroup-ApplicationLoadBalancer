# AWS: Configure AutoScalingGroup + ApplicationLoadBalancer

Script para automação da criação do Autoscaling e Application Load Balancer na AWS

# What we will do
- Auto Scaling Setup
- App Load Balancer Configuration
- Security Group Configuration
- Launch Configuration

### Prerequisites
* Have an AMI ready for your application.
* Own privileges on the AWS console by CLI

### Files that must be changed before playbook execution.

#### - [vars.tf](https://github.com/juliomauro/AWS-AutoScalingGroup-ApplicationLoadBalancer/blob/master/vars.tf)

```
provider "aws" {
    region = "us-east-1" # change to your region
    profile = "default"
}
variable "name" { default = "APP-ORUAM"} # Application name
variable "maxsize" { default = "3"} # Max number of instances
variable "minsize" { default = "2"} # Min number of instances
variable "security_groups" { default = "sg-0144b4bf088112c94"} # Security Group ID
variable "vpc" { default = "vpc-023664f526f34eec4"} # VPC to be used for the application
variable "accesskey" { default = "padrao-tf"} # Key to access the instance
variable "os" { default = "ami-0a7a010d882669c5e"} # AMI of your application
variable "instance_type" { default = "t2.micro"} # Instance tipe
variable "alb_internal" { default = "false"} # Balancer type. False = External
variable "launch_configuration" { default ="LC-ORUAM"} # LC name
```
### Run
 ```
 terraform init
  ```
  ```
 terraform plan
  ```
  ```
 terraform apply
 ```
 
# Maintainer - Julio Cesar Mauro
- e-mail: <juliomauro@gmail.com>
- linkedin: <https://linkedin.com/in/juliomauro>
