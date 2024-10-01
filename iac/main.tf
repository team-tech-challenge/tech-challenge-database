module "aws_rds_instance_postgresql" {
  source = "./modules/generic"

  create_aws_rds              = true
  rds_instance_identifier     = "tech-challenge-postgresql"
  rds_engine                  = "postgres"
  rds_engine_version          = "16"
  rds_instance_class          = "db.t3.micro"
  rds_allocated_storage       = 20
  rds_storage_type            = "gp2"
  rds_storage_encrypted       = true
  rds_multi_az                = false
  rds_publicly_accessible     = true
  rds_deletion_protection     = false
  rds_skip_final_snapshot     = true
  rds_db_name                 = "tech_challenge"
  rds_db_username             = "tech_challenge"
  rds_maintenance_window      = "Mon:00:00-Mon:03:00"
  rds_backup_window           = "03:00-05:00"
  rds_backup_retention_period = 7
  rds_tags                    = local.tags
  workspace_environment       = var.workspace_environment
}
