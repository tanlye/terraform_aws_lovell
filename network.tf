# Creates a security group that allows us to create 
# ingress rules allowing traffic for HTTP, HTTPS and SSH protocols from anywhere

resource "aws_security_group" "ec2_sg" {
  name   = var.sg_name
  vpc_id = aws_vpc.vpc.id # var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["192.168.1.100/32"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["18.206.107.24/29"]
  }

  # ingress {
  #   from_port   = 22
  #   to_port     = 22
  #   protocol    = "tcp"
  #   cidr_blocks = ["0.0.0.0/0"]
  # }

  # ingress {
  #   from_port   = 80
  #   to_port     = 80
  #   protocol    = "tcp"
  #   cidr_blocks = ["0.0.0.0/0"]
  # }

  # ingress {
  #   from_port   = 443
  #   to_port     = 443
  #   protocol    = "tcp"
  #   cidr_blocks = ["0.0.0.0/0"]
  # }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "lovell-tf-SSHSecurityGroup",
    description = "Security Group To Allow SSH from my IP range(s)",

  }
}



#Internet Gateway

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "lovell-tf-igw"
  }
}


# # Uses an existing VPC, filtered by vpc_name in variables.tf
# data "aws_vpc" "selected_vpc" {
#   filter {
#     name   = "tag:Name"
#     values = [var.vpc_name]
#   }
# }

# # Uses an existing subnet on aws console, filtered by subnet_name in variables.tf
# data "aws_subnet" "selected_subnet" {
#   filter {
#     name   = "tag:Name"
#     values = [var.subnet_name]
#   }
# }