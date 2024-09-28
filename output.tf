## Just to be able to view output when doing terraform apply
output "vpc_id" {
  description = "VPC ID"
  value = aws_vpc.vpc.id
}

output "vpc_arn" {
  description = "VPC Amazon Resource Name"
  value = aws_vpc.vpc.arn
}

output "ami_id" {
  description = "AMS ID"
  value = data.aws_ami.ami_id
}
