variable "ami_id" {
  description = "ami for ubuntu latest version"
  type        = string
  default     = "ami-0e83be366243f524a" #here the ami id provided will apply to ec2.tf file and we need to mention the var.ami_id in ec2.tf file
}
variable "inst_type" {
  description = "providing instance type"
  type        = string
  default     = "t2.medium"
}

# input variables
variable "ec2_tags" {
  description = "providing tags to the instances"
  type        = map(string)
  default = {
    "Name"        = "Pub-ins"
    "Environment" = "Production"
  }
}

# local variables
locals {
  demo_tags = {
    "Prod" = "demo"
  }
}