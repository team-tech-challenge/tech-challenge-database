################################################
#                                              #
#           AWS RDS INSTANCE MODULE            #
#                                              #
################################################

module "aws_rds_instance" {
  source = "git::https://github.com/team-tech-challenge/terraform-modules-remotes.git//aws_databases?ref=main"

  create_db_instance = var.create_aws_rds

  db_instance_identifier     = var.rds_instance_identifier
  db_engine                  = var.rds_engine
  db_engine_version          = var.rds_engine_version
  db_instance_class          = var.rds_instance_class
  db_allocated_storage       = var.rds_allocated_storage
  db_storage_type            = var.rds_storage_type
  db_storage_encrypted       = var.rds_storage_encrypted
  db_multi_az                = var.rds_multi_az
  db_publicly_accessible     = var.rds_publicly_accessible
  db_deletion_protection     = var.rds_deletion_protection
  db_skip_final_snapshot     = var.rds_skip_final_snapshot
  db_parameter_group_name    = module.aws_db_parameter_group.name
  db_subnet_group_name       = module.aws_database_subnet_group.aws_database_subnet_group_name
  db_security_group_id       = module.aws_security_group.security_group_id
  db_name                    = var.rds_db_name
  db_username                = var.rds_db_username
  db_maintenance_window      = var.rds_maintenance_window
  db_backup_window           = var.rds_backup_window
  db_backup_retention_period = var.rds_backup_retention_period
  db_tags = merge(var.rds_tags, {
    Name = "${var.rds_instance_identifier}"
  })
}

################################################
#                                              #
#           AWS RDS PARAMETER GROUP            #
#                                              #
################################################

module "aws_db_parameter_group" {
  source = "git::https://github.com/team-tech-challenge/terraform-modules-remotes.git//aws_db_parameter_group?ref=main"

  create_db_parameter_group = var.create_aws_rds
  name                      = var.rds_instance_identifier
  engine                    = var.rds_engine
  engine_version            = var.rds_engine_version
  tags = merge(var.rds_tags, {
    Name = "${var.rds_instance_identifier}"
  })
}

################################################
#                                              #
#           AWS RDS SUBNET GROUP               #
#                                              #
################################################

module "aws_database_subnet_group" {
  source = "git::https://github.com/team-tech-challenge/terraform-modules-remotes.git//aws_database_subnet_group?ref=main"

  create_db_subnet_group = var.create_aws_rds

  name = var.rds_instance_identifier
  subnet_ids = [
    data.aws_subnet.selected_a.id,
    data.aws_subnet.selected_b.id
  ]
  tags = merge(var.rds_tags, {
    Name = "${var.rds_instance_identifier}"
  })
}

################################################
#                                              #
#           AWS SECURITY GROUP                 #
#                                              #
################################################

module "aws_security_group" {
  source = "git::https://github.com/team-tech-challenge/terraform-modules-remotes.git//aws_security_group?ref=main"

  create_security_group = var.create_aws_rds

  name        = "security-group-${var.rds_instance_identifier}"
  description = "Security group for ${var.rds_instance_identifier} database instances"
  vpc_id      = data.aws_vpc.selected.id

  ingress_rules = local.ingress_rules
  egress_rules  = local.egress_rules

  tags = merge(var.rds_tags, {
    Name = "security-group-${var.rds_instance_identifier}"
  })
}

################################################
#                                              #
#              SECRETS MANAGER                 #
#                                              #
################################################

module "aws_secrets_manager" {
  source             = "git::https://github.com/team-tech-challenge/terraform-modules-remotes.git//aws_secret_manager?ref=main"
  secret_name        = "rds-secrets-${var.rds_instance_identifier}"
  secret_description = "Secret for ${var.rds_instance_identifier} database instances"
  tags = merge(var.rds_tags, {
    Name = "${var.rds_instance_identifier}"
  })
  create_secret = var.create_aws_rds

  depends_on = [module.aws_rds_instance]
}

################################################
#                                              #
#          SECRETS MANAGER VERSION             #
#                                              #
################################################

module "aws_secret_manager_version" {
  source                = "git::https://github.com/team-tech-challenge/terraform-modules-remotes.git//aws_secret_manager_version?ref=main"
  secret_id             = module.aws_secrets_manager.secret_manager_id
  create_secret_version = var.create_aws_rds

  secret_string = jsonencode({
    "DB_HOST" : module.aws_rds_instance.rds_instance_address,
    "DB_PORT" : module.aws_rds_instance.rds_instance_port,
    "DB_USER" : module.aws_rds_instance.rds_instance_user,
    "DB_PASS" : module.aws_rds_instance.rds_instance_password,
    "DB_NAME" : module.aws_rds_instance.rds_db_name
  })
  depends_on = [module.aws_secrets_manager]
}

