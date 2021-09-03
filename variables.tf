variable "aws_region" {
  description = "Region where Cloud Formation is created"
  default     = "eu-central-1"
}

variable "cluster_name" {
  description = "Name of the AWS Minikube cluster - will be used to name all created resources"
}

variable "tags" {
  description = "Tags used for the AWS resources created by this template"
  type        = map(string)
}

variable "addons" {
  description = "list of YAML files with Kubernetes addons which should be installed"
  type        = list(string)
}

variable "aws_instance_type" {
  description = "Type of instance"
  default     = "t2.medium"
}

variable "aws_subnet_id" {
  description = "The subnet-id to be used for the instance"
}

variable "key_name" {
  description = "Key which should be used for the instance"
}

variable "ami_image_id" {
  description = "ID of the AMI image which should be used. If empty, the latest CentOS 7 image will be used. See README.md for AMI image requirements."
  default     = ""
}

variable "ssh_access_cidr" {
  description = "CIDR from which SSH access is allowed"
  default     = "0.0.0.0/0"
}

variable "api_access_cidr" {
  description = "CIDR from which API access is allowed"
  default     = "0.0.0.0/0"
}

