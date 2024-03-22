provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "postgres_db" {
  allocated_storage    = 20
  db_name =             "job_scraper"
  storage_type         = "gp2"
  engine               = "postgres"
  engine_version       = "16.1"  
  instance_class       = "db.t3.micro"
  username             = "postgres"
  password             = "password"
  parameter_group_name = "default.postgres16"
  skip_final_snapshot  = true
  publicly_accessible  = true
  
}