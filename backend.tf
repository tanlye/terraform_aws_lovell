terraform {
  backend "s3" { #if not specified, will be saved to local
    bucket = "sctp-ce7-tfstate"
    key    = "terraform-ec2-lovell.tfstate" #Change the value of this to <your suggested name>.tfstate for  example
    region = "us-east-1"
  }
}