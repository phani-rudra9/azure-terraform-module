output "resource_group_name" {
    value = azurerm_resource_group.resource.*.name
}

output "resource_group_id" {
    value = azurerm_resource_group.resource.*.id
}