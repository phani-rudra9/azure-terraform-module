subscription_id = ""
client_id = ""
client_secret = ""
tenant_id = ""

# name = "project-test"
location = "westus"
environment = "testing"


resourcegroups = [
    {
        resource_group_name = "testresourcegrp"
    }
]

vnets =  [
    {
        name = "test.example.com"
        address = "10.1.0.0/16"
    }
]

subnets =  [
    {
        subnet_name = "subnet-west-us-1"
        subnet_prefix = "10.1.100.0/24"
    },
    {
        subnet_name = "subnet-west-us-2"
        subnet_prefix = "10.1.101.0/24"
    }
]

aks-cluster = [
    {
  name           = "example-aks1"
  dns_prefix     = "exampleaks1"

    name1       = "default"
    node_count  = 1
    vm_size     = "Standard_D2_v2"
    os_disk_size_gb = "40" 
  }   
]

postgresqlserver = [
    {
        name = "example-server"
        sku_name    = "B_Gen5_2"
        storage_mb  = 5120
        backup_retention_days = 7
         version              = "9.5"
    }
]