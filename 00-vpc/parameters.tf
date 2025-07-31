resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.project_name}/${var.environment}/vpc_id"
  type  = "String"
  value = module.vpc.vpc_id
}

resource "aws_ssm_parameter" "public_subnet_ids" {
  name  = "/${var.project_name}/${var.environment}/public_subnet_ids"
  type  = "StringList"
  value = join(",", module.vpc.public_subnet_ids)
}

resource "aws_ssm_parameter" "private_subnet_ids" {
  name  = "/${var.project_name}/${var.environment}/private_subnet_ids"
  type  = "StringList"
  value = join(",", module.vpc.private_subnet_ids)
}

resource "aws_ssm_parameter" "database_subnet_ids" {
  name  = "/${var.project_name}/${var.environment}/database_subnet_ids"
  type  = "StringList"
  value = join(",", module.vpc.database_subnet_ids)
}
resource "aws_ssm_parameter" "database_subnet_group_name" {
  name  = "/${var.project_name}/${var.environment}/database_subnet_group_name"
  type  = "String"
  value = module.vpc.database_subnet_group_name
}

# resource "aws_ssm_parameter" "mysql_sg_id" {
#   name  = "/${var.project_name}/${var.environment}/mysql_sg_id"
#   type  = "StringList"
#   value =  module.vpc.mysql_sg_id
# }

# resource "aws_ssm_parameter" "bastion_sg_id" {
#   name  = "/${var.project_name}/${var.environment}/bastion_sg_id"
#   type  = "StringList"
#   value =  module.vpc.bastion_sg_id
# }