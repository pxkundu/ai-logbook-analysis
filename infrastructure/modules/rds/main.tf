data "aws_secretsmanager_secret_version" "rds_credentials" {
  secret_id = "logbook-rds-credentials-${var.environment}"
}

locals {
  rds_credentials = jsondecode(data.aws_secretsmanager_secret_version.rds_credentials.secret_string)
}

resource "aws_db_instance" "database" {
  identifier           = "logbookdb-${var.environment}"
  engine               = "postgres"
  engine_version       = "15.3"
  instance_class       = var.instance_class
  allocated_storage    = 20
  db_name              = var.db_name
  username             = local.rds_credentials.username
  password             = local.rds_credentials.password
  parameter_group_name = "default.postgres15"
  skip_final_snapshot  = true

  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  multi_az               = var.environment == "prod" ? true : false

  tags = {
    Name        = "ai-logbook-rds"
    Environment = var.environment
  }
}

resource "aws_security_group" "rds_sg" {
  name        = "logbook-rds-sg-${var.environment}"
  description = "Security group for RDS instance"

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"] # Replace with your VPC CIDR
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "ai-logbook-rds-sg"
    Environment = var.environment
  }
}
