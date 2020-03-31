resource "azurerm_virtual_network" "vnet" {
  count                = length(var.vnets)
  name                =  lookup(var.vnets[count.index],"name")
  address_space       =  [lookup(var.vnets[count.index],"address")]
  resource_group_name =  var.resourcegroup
  location            =  var.location
  tags = {
    Environment = var.environment
    Terraform =  "True"
  }
}