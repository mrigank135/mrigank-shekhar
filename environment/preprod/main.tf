module "rg" {
    source = "../../modules/azurerm_resource_group"
    rgm = var.rgm
}

module "vnet" {
    depends_on = [module.rg]
    source = "../../modules/azurerm_virtual_network"
    vnetm = var.vnetm
}
  
module "subnet" {
    depends_on = [module.vnet]
    source = "../../modules/azurerm_subnet"
    subnetm = var.subnetm  
}

module "pip" {
    depends_on = [module.rg]
    source = "../../modules/azurerm_public_ip"
    pipm = var.pipm
}

module "nics" {
    depends_on = [module.pip, module.subnet]
    source = "../../modules/azurerm_network_interface"
    nicm = var.nicm
}

module "vmm" {
    depends_on = [module.nics]
    source = "../../modules/azurerm_linux_virtual_machine"
    vmm = var.vmm
}
