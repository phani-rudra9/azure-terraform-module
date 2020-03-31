module "resourcegroup" {
    source = "./modules/resourcegroup"
    resourcegroups = var.resourcegroups
    environment = var.environment
    location = var.location
}

module "vnet" {
    source = "./modules/vnet"
    vnets = var.vnets
    resourcegroup = module.resourcegroup.resource_group_name[0]
    environment = var.environment
    location = var.location


}

module "subnets" {
    source = "./modules/subnets"
    vnet_name = module.vnet.vnet_name[0]
    subnets = var.subnets
    resourcegroup = module.resourcegroup.resource_group_name[0]
    environment = var.environment
    location = var.location
    
}

module "aks-cluster" {
    source = "./modules/aks-cluster"
    cluster = var.aks-cluster
    resourcegroup = module.resourcegroup.resource_group_name[0]
    subnet_ids = module.subnets.subnet_ids[0]
    environment = var.environment
    location = var.location

}

module "postgresql-server" {
    source = "./modules/postgresql/postgresql-server"
    postgresqlserver = var.postgresqlserver
    resourcegroup = module.resourcegroup.resource_group_name[0]
    environment = var.environment
    location = var.location

}





























































