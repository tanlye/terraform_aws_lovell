terraform {
  backend "s3" {
    bucket = "sctp-ce7-tfstate" 
    key    = "terraform-ex-ec2-lovell.tfstate" #Change the value of this to <your suggested name>.tfstate for  example
    region = "us-east-1"
  }
}