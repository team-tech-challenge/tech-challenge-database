locals {
  default_ingress_rules_mysql = [
    {
      from_port   = 3306
      to_port     = 3306
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow MySQL connections"
    }
  ]

  default_ingress_rules_postgres = [
    {
      from_port   = 5432
      to_port     = 5432
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow PostgreSQL connections"
    }
  ]

  default_egress_rules = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow all outbound traffic"
    }
  ]

  ingress_rules = var.rds_engine == "mysql" ? local.default_ingress_rules_mysql : local.default_ingress_rules_postgres
  egress_rules  = local.default_egress_rules
}


locals {
  vpc_ids = {
    production = "vpc-017a8101d1d049d62"
  }

  subnet_ids = {
    production = {
      us_east_1a = "subnet-07b365d4159f1c834"
      us_east_1b = "subnet-0b64fd0b0a704cc2f"
      us_east_1c = "subnet-0ffa2444e4a3c4b82"
    }
  }
  selected_vpc_id  = local.vpc_ids[var.workspace_environment]
  selected_subnets = local.subnet_ids[var.workspace_environment]
}