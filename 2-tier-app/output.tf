output "vpc_id" {
  value = data.aws_vpc.default.id
}
output "security_group_id" {
  value = module.security_group.security_group_id
}
output "private_subnet_ids" {
  value = data.aws_subnets.private_subnets.ids
}
output "db_subnet_group_id" {
  value = aws_db_subnet_group.db_subnet_group.id
}
output "database_endpoint" {
  value = aws_db_instance.database.endpoint
}
output "auto_scaling_group_id" {
  value = aws_autoscaling_group.deep.id
}
output "application_url" {
    value ="https://${aws_lb.deep.dns_name}:${aws_lb_target_group.tg_4000.port}"
    }