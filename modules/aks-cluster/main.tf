resource "azurerm_kubernetes_cluster" "cluster" {
  count               =  length(var.cluster)
  name                =  lookup(var.cluster[count.index],"name")
  location            =  var.location
  resource_group_name =  var.resourcegroup
  dns_prefix          =  lookup(var.cluster[count.index],"dns_prefix")
 

  default_node_pool {
    name            = lookup(var.cluster[count.index],"name1")
    vm_size         = lookup(var.cluster[count.index],"vm_size")
    os_disk_size_gb = lookup(var.cluster[count.index],"os_disk_size_gb")
    node_count      = lookup(var.cluster[count.index],"node_count")
    vnet_subnet_id  =  var.subnet_ids
  }

  service_principal {
    client_id     = ""
    client_secret = ""
  }
    tags = {
    Environment = var.environment
    Terraform   =  "True"
  }
}
