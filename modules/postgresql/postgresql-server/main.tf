resource "azurerm_postgresql_server" "postgresqlserver" {
   count                = length(var.postgresqlserver)
   name                 = lookup(var.postgresqlserver[count.index],"name")
   location             =  var.location
   resource_group_name  =  var.resourcegroup
   sku_name             = lookup(var.postgresqlserver[count.index],"sku_name")

  storage_profile {
    storage_mb            = lookup(var.postgresqlserver[count.index],"storage_mb")
    backup_retention_days = lookup(var.postgresqlserver[count.index],"backup_retention_days")
    geo_redundant_backup  = "Disabled"
  }

  # administrator_login          = lookup(var.postgresqlserver[count.index],"administrator_login")
  # administrator_login_password = lookup(var.postgresqlserver[count.index],"administrator_login_password")
  administrator_login           = "phani"
  administrator_login_password  = "9eb876d5@A"
  version                      = lookup(var.postgresqlserver[count.index],"version")
  ssl_enforcement              = "Enabled"
}

