variable "subscription_id" {
    type = string
}

variable "client_id" {
    type = string
}

variable "client_secret" {
    type = string
}

variable "tenant_id" {
    type = string
}

variable "location" {
    type = string
}

variable "environment" {
    type = string
}

variable "resourcegroups" {
    type = list
}

variable "vnets" {
    type = list
}

variable "subnets" {
    type = list
}

variable "aks-cluster" {
    type = list
}

variable "postgresqlserver" {
    type = list 
} 