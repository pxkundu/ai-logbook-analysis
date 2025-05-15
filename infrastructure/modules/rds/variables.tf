variable "db_name" {
  description = "Name of the RDS database"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "instance_class" {
  description = "RDS instance class"
  type        = string
}

variable "master_username" {
  description = "RDS master username"
  type        = string
  sensitive   = true
}

variable "master_password" {
  description = "RDS master password"
  type        = string
  sensitive   = true
}
