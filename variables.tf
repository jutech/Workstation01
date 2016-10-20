variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "eu-west-1"
}

# Ubuntu Server 14.04 LTS (HVM), SSD Volume Type
variable "aws_amis" {
  default = {
    # Ireland
    "eu-west-1" = "ami-ed82e39e"
    # Frankfurt
    "eu-central-1" = "ami-26c43149"
  }
}