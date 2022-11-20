variable "resourcegroup_details" {
    type = object({
          name=string
            location=string
            })
    default = {
      location = "eastus"
      name = "srii5"
    }
}
variable "vnet_details" {
    type = object({
        name=string
        address_space=list(string)
    })
     default = {
     name = "pavv3"
     address_space = [ "192.168.0.0/16" ]
     }
}
variable "subnet_details" {
    type = object({
        names=list(string)
    })
     default = {
     names =  [ "web", "app", "db" ]
} 

}
variable "runningversion" {
    type = string
    default = "1.0"
}
variable "network_security_group_details" {
    type =object({
 name                = string
  location            = string
    })
    default = {
        name = "security"
        location = "east us"
    }
}
variable "ip_address_details" {
    type =object({
name    = string
location = string
allocation_method = string
    })
    default = {
        name = "pav"
        location = "east us"
        allocation_method = "Dynamic"
    }
}
variable "network_interface_details" {
  type =object({
name = string
location = string
  })
  default = {
    location = "east us"
    name = "nic"
  }
}
variable "mssql_server_details" {
    type =object({
     name = string
     location = string
       version                 = string
  administrator_login          = string
  administrator_login_password = string
    })
default = {
     name                      = "hlo"
  location                     = "east us"
  version                      = "12.0"
  administrator_login          = "asus"
  administrator_login_password = "Srikanth@123"
}
}
variable "mssql_database_details" {
    type =object({
         name = string
    sample_name = string
    sku_name = string
    })
    default = {
        name = "dbsp"
    sample_name = "AdventureWorksLT"
    sku_name = "Basic" 
    }
} 

