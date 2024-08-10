variable "rds_instance_identifier" {
  description = "The identifier for the RDS instance"
  type        = string
  default     = null
}

variable "rds_engine" {
  description = "The database engine to use for the RDS instance"
  type        = string
  default     = null
}

variable "rds_engine_version" {
  description = "The version of the database engine to use for the RDS instance"
  type        = string
  default     = null
}

variable "rds_instance_class" {
  description = "The class of the RDS instance"
  type        = string
  default     = null
}

variable "rds_allocated_storage" {
  description = "The amount of storage to allocate for the RDS instance"
  type        = number
  default     = null
}

variable "rds_storage_type" {
  description = "The type of storage to use for the RDS instance"
  type        = string
  default     = null
}

variable "rds_storage_encrypted" {
  description = "Whether to encrypt the storage for the RDS instance"
  type        = bool
  default     = null
}

variable "rds_multi_az" {
  description = "Whether to enable multi-AZ for the RDS instance"
  type        = bool
  default     = null
}

variable "rds_publicly_accessible" {
  description = "Whether the RDS instance should be publicly accessible"
  type        = bool
  default     = null
}

variable "rds_deletion_protection" {
  description = "Whether to enable deletion protection for the RDS instance"
  type        = bool
  default     = null
}

variable "rds_skip_final_snapshot" {
  description = "Whether to skip the final snapshot when deleting the RDS instance"
  type        = bool
  default     = null
}

variable "rds_db_name" {
  description = "The name of the database to create in the RDS instance"
  type        = string
  default     = null
}

variable "rds_db_username" {
  description = "The username to use for the database in the RDS instance"
  type        = string
  sensitive   = true
  default     = null
}

variable "rds_maintenance_window" {
  description = "The maintenance window for the RDS instance"
  type        = string
  default     = null
}

variable "rds_backup_window" {
  description = "The backup window for the RDS instance"
  type        = string
  default     = null
}

variable "rds_backup_retention_period" {
  description = "The retention period for backups of the RDS instance"
  type        = number
  default     = null
}

variable "rds_performance_insights_enabled" {
  description = "Whether to enable performance insights for the RDS instance"
  type        = bool
  default     = null
}

variable "rds_performance_insights_kms_key_id" {
  description = "The KMS key ID to use for performance insights encryption"
  type        = string
  default     = null
}

variable "rds_tags" {
  description = "The tags to apply to the RDS instance"
  type        = map(string)
  default     = null
}

variable "create_aws_rds" {
  description = "Whether to create the RDS instance"
  type        = bool
  default     = false
}

variable "workspace_environment" {
  description = "The environment to deploy the resources to"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
  default     = null
}

variable "subnet_ids" {
  description = "List of Subnet IDs"
  type        = list(string)
  default     = null
}