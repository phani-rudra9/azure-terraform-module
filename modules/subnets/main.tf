resource "azurerm_subnet" "subnet" {
  count                = length(var.subnets)
  name                 = lookup(var.subnets[count.index],"subnet_name")
  resource_group_name  = var.resourcegroup
  virtual_network_name = var.vnet_name
  address_prefix       = lookup(var.subnets[count.index],"subnet_prefix")
}