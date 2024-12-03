module "aws_rds_instance_products_service" {
  source = "./modules/generic"

  create_aws_rds              = true
  rds_instance_identifier     = "products-service"
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
  rds_db_name                 = "products_service"
  rds_db_username             = "products_service"
  rds_maintenance_window      = "Mon:00:00-Mon:03:00"
  rds_backup_window           = "03:00-05:00"
  rds_backup_retention_period = 7
  rds_tags                    = local.tags
  workspace_environment       = var.workspace_environment
}

module "aws_rds_instance_users_service" {
  source = "./modules/generic"

  create_aws_rds              = true
  rds_instance_identifier     = "users-service-postgresql"
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
  rds_db_name                 = "users_service"
  rds_db_username             = "users_service"
  rds_maintenance_window      = "Mon:00:00-Mon:03:00"
  rds_backup_window           = "03:00-05:00"
  rds_backup_retention_period = 7
  rds_tags                    = local.tags
  workspace_environment       = var.workspace_environment
}

module "aws_rds_instance_payments_service" {
  source = "./modules/generic"

  create_aws_rds              = true
  rds_instance_identifier     = "payments-service-postgresql"
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
  rds_db_name                 = "payments_service"
  rds_db_username             = "payments_service"
  rds_maintenance_window      = "Mon:00:00-Mon:03:00"
  rds_backup_window           = "03:00-05:00"
  rds_backup_retention_period = 7
  rds_tags                    = local.tags
  workspace_environment       = var.workspace_environment
}

module "aws_rds_instance_orders_service" {
  source = "./modules/generic"

  create_aws_rds              = true
  rds_instance_identifier     = "orders-service-postgresql"
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
  rds_db_name                 = "orders_service"
  rds_db_username             = "orders_service"
  rds_maintenance_window      = "Mon:00:00-Mon:03:00"
  rds_backup_window           = "03:00-05:00"
  rds_backup_retention_period = 7
  rds_tags                    = local.tags
  workspace_environment       = var.workspace_environment
}

module "aws_rds_instance_campaigns_service" {
  source = "./modules/generic"

  create_aws_rds              = true
  rds_instance_identifier     = "campaigns-service-postgresql"
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
  rds_db_name                 = "campaigns_service"
  rds_db_username             = "campaigns_service"
  rds_maintenance_window      = "Mon:00:00-Mon:03:00"
  rds_backup_window           = "03:00-05:00"
  rds_backup_retention_period = 7
  rds_tags                    = local.tags
  workspace_environment       = var.workspace_environment
}



module "aws_rds_instance_tools_service" {
  source = "./modules/generic"

  create_aws_rds              = true
  rds_instance_identifier     = "tools-service"
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
  rds_db_name                 = "tools_service"
  rds_db_username             = "tools_service"
  rds_maintenance_window      = "Mon:00:00-Mon:03:00"
  rds_backup_window           = "03:00-05:00"
  rds_backup_retention_period = 7
  rds_tags                    = local.tags
  workspace_environment       = var.workspace_environment
}