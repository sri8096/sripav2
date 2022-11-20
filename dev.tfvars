resouresourcegroup_details = {
      location = "eastus"
      name = "srii5"
    }
     vnet_details = {
     name = "pavv3"
     address_space = [ "192.168.0.0/16" ]
     }
      subnet_details = {
     names =  [ "web", "app", "db" ]
} 
 network_security_group_details = {
        name = "security"
        location = "east us"
    }
    