# RDS Module

Provisions an AWS RDS PostgreSQL instance.

## Resources
- PostgreSQL database (version 15.3).
- Security group for restricted access.

## Usage
```hcl
module "rds" {
  source            = "./modules/rds"
  db_name           = "logbookdb"
  environment       = "dev"
  instance_class    = "db.t3.micro"
  master_username   = "admin"
  master_password   = "securepassword"
}
```
