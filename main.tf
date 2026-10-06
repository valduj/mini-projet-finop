# 1. Ressource conforme FinOps
resource "aws_instance" "app_server_prod" {
  ami           = "ami-00c1445787b84869e"
  instance_type = "t2.micro"

  tags = {
    Name        = "ec2-app-prod"
    Environment = "Production"
    Owner       = "Team-Data"
    CostCenter  = "CC-102"
  }
}

# 2. Ressource orpheline sans tag (non-conforme)
resource "aws_instance" "app_server_dev" {
  ami           = "ami-00c1445787b84869e"
  instance_type = "t2.micro"
}
