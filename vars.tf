provider "aws" {
    region = "us-east-1"
    profile = "default"
}
variable "name" { default = "APP-ORUAM"}
variable "maxsize" { default = "3"}
variable "minsize" { default = "1"}
variable "security_groups" { default = "sg-0144b4bf088112c94"}
variable "vpc" { default = "vpc-023664f526f34eec4"} 
variable "accesskey" { default = "padrao-tf"}
variable "os" { default = "ami-0a7a010d882669c5e"}
variable "instance_type" { default = "t2.micro"}
variable "alb_internal" { default = "false"}
variable "launch_configuration" { default ="LC-ORUAM"}
