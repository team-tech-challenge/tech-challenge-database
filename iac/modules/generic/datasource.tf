data "aws_vpc" "selected" {
  id = local.selected_vpc_id
}

data "aws_subnet" "selected_a" {
  id = local.selected_subnets.us_east_1a
}

data "aws_subnet" "selected_b" {
  id = local.selected_subnets.us_east_1b
}