resource "azurerm_resource_group" "resource" {
  count = length(var.resourcegroups)
  name     = lookup(var.resourcegroups[count.index],"resource_group_name")
  location = var.location
  tags = {
    Environment = var.environment
    Terraform =  "True"
  }
}
