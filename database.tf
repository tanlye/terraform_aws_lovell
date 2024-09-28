# resource "aws_db_instance" "rdsdb" {
#   allocated_storage    = 30
#   db_name              = "lovelldbtf"
#   engine               = "mysql"
#   engine_version       = "8.0"
#   instance_class       = "db.t3.micro"
#   username             = "admin"
#   password             = "password123"
#   skip_final_snapshot  = true
#   max_allocated_storage = 100
# }