output "resource_group_name" {
    value = module.resourcegroup.resource_group_name
}

output "resource_group_id" {
    value = module.resourcegroup.resource_group_id
}

output "vnet_id" {
    value = module.vnet.vnet_id
}

output "vnet_name" {
    value = module.vnet.vnet_name
}

output "subnet_ids" {
    value = module.subnets.subnet_ids
}

output "subnet_names" {
    value = module.subnets.subnet_names
}

output "aks_id" {
  value = "${module.aks-cluster.aks_id}"
}

output "server_name" {
  value = "${module.postgresql-server.server_name}"
}

output "server_fqdn" {
  value = "${module.postgresql-server.server_fqdn}"
}

# output "administrator_login" {
#   value = "${module.postgresql-server.administrator_login}"
# }

# output "administrator_password" {
#   value     = "${module.postgresql-server.administrator_password}"
#   sensitive = true
# }