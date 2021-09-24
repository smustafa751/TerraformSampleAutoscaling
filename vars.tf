variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
  default = "eu-west-1"
}

variable "AMIS" {
  type = "map"

  default = {
    us-east-1 = "ami-55ef662f"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-1a962263"
  }
}

#variable "PATH_TO_PRIVATE_KEY" {
#  default = "mykey"
#}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}

variable "INSTANCE_USERNAME" {
  default = "ec2-user"
}

variable "INSTANCE_DEVICE_NAME" {
	default = "/dev/xvdh"
}

variable "RDS_PASSWORD" {
  default ="root1234"
}