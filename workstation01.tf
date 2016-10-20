provider "aws" {
  region                   = "${var.aws_region}"
  shared_credentials_file  = "/Users/juliendefreitas/.aws/credentials"
  profile                  = "default"
}

resource "aws_instance" "Workstation01" {
  ami = "${lookup(var.aws_amis, var.aws_region)}"
  instance_type = "t2.micro"
  availability_zone = "eu-west-1a"
  subnet_id = "subnet-36a75f6e"
  key_name = "EC2Proton"
  vpc_security_group_ids = ["sg-90e32ff6"]
  associate_public_ip_address = "True"
  tags {
  	"Name" = "Workstation01"
  	"Ansible" = "True"
  }
  root_block_device {
	volume_type = "standard"
	volume_size = 12
  }
}