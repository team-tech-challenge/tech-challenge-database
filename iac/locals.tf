locals {
  tags = {
    Environment = var.workspace_environment
    ManagedBy   = "Terraform"
    Service     = "AWS RDS - PostgreSQL"
    Team        = "Tech Challenge"
  }
}