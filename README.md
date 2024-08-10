# terraform-modules-remotes

[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/Naereen/StrapDown.js/graphs/commit-activity)
[![MIT License](https://img.shields.io/badge/License-MIT-blue.svg)](https://lbesson.mit-license.org/)
[![Terraform](https://img.shields.io/badge/Terraform-v1.0.0+-623CE4?logo=terraform)](https://img.shields.io/badge/Terraform-v1.0.0+-623CE4?logo=terraform)
[![Terraform AWS Documentation](https://img.shields.io/badge/Terraform%20AWS-Documentation-623CE4?logo=terraform)](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
[![Terraform Documentation](https://img.shields.io/badge/Terraform-Documentation-623CE4?logo=terraform)](https://www.terraform.io/docs/index.html)
[![GitHub](https://img.shields.io/badge/GitHub-terraform--modules--registry-181717?logo=github)](https://github.com/team-tech-challenge/terraform-modules-remotes)

### This repository contains Terraform modules for AWS resources.

##  **Structure of the Repository**

The repository is structured as follows:


```
./
├── CHANGELOG.md
├── LICENSE
├── README.md
└── iac
    ├── backend.tf
    ├── locals.tf
    ├── main.tf
    ├── modules
    │   └── generic
    │       ├── datasource.tf
    │       ├── locals.tf
    │       ├── main.tf
    │       ├── output.tf
    │       ├── variables_rds.tf
    │       └── version.tf
    ├── provider.tf
    ├── variables.tf
    └── version.tf
```

##  **Modules Generic**

* This generic module executes the download of remote modules from the repository terraform-modules-remotes.
  * The generic module is located in the directory ./iac/modules/generic.

- This project utilization modules:
  * [x] [aws_databases](https://github.com/team-tech-challenge/terraform-modules-remotes/tree/main/aws_databases)
  * [x] [aws_db_parameter_group](https://github.com/team-tech-challenge/terraform-modules-remotes/tree/main/aws_db_parameter_group)
  * [x] [aws_database_subnet_group](https://github.com/team-tech-challenge/terraform-modules-remotes/tree/main/aws_database_subnet_group)
  * [x] [aws_security_group](https://github.com/team-tech-challenge/terraform-modules-remotes/tree/main/aws_security_group)
  * [x] [aws_secret_manager](https://github.com/team-tech-challenge/terraform-modules-remotes/tree/main/aws_secret_manager)
  * [x] [aws_secret_manager_version](https://github.com/team-tech-challenge/terraform-modules-remotes/tree/main/aws_secret_manager_version)

