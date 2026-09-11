rgm = {
    rg1 = {
        name = "rg-mrigank"
        location = "centralindia"
        }
}

vnetm = {
    vnet1 = {
        name = "vnet-mrigank"
        location = "centralindia"
        resource_group_name = "rg-mrigank"
        address_space = ["10.0.0.0/16"]            
    }
}

subnetm = {
    frontend_subnet = {
        name = "frontend-subnetm"
        resource_group_name = "rg-mrigank"
        virtual_network_name = "vnet-mrigank"
        address_prefixes = ["10.0.1.0/24"]
    }
    backend_subnet = {
        name = "backend-subnetm"
        resource_group_name = "rg-mrigank"
        virtual_network_name = "vnet-mrigank"
        address_prefixes = ["10.0.2.0/24"]
        }
}

nicm = {
    nic1 = {
        name = "mrigank-nic"
        location = "centralindia"
        resource_group_name = "rg-mrigank"
        subnet_name = "frontend-subnetm"
        public_ip_name = "pipm"
        virtual_network_name = "vnet-mrigank"
    }
}

pipm = {
    pip1 = {
        name = "pipm"
        location = "centralindia"
        resource_group_name = "rg-mrigank"
        allocation_method = "Static"
    }
}

vmm= {
    vm1 = {
        vm_name = "mrigank-frontend-vm"
        location = "centralindia"
        resource_group_name = "rg-mrigank"
        size = "Standard_B1s"
        admin_username = "devopsadmin"
        admin_password = "Mrigank@123"
        nic_name = "nicm"
    }
}
