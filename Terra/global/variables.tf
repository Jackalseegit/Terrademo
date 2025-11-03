variable "region1" {
  description = "Primary region"
  type        = string
  default     = "us-east-1"
}

variable "region2" {
  description = "Secondary region"
  type        = string
  default     = "ap-south-1"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  type = string
}

variable "project_name" {
  type    = string
  default = "devops-demo"
}

variable "ami_id_region1" {
  type    = string
  default = "ami-0c02fb55956c7d316"
}

variable "ami_id_region2" {
  type    = string
  default = "ami-0f58b397bc5c1f2e8"
}
