resource "azurerm_subnet" "snet" {
    for_each = var.subnetm
    name = each.value.name
    resource_group_name = each.value.resource_group_name
    virtual_network_name = eah.value.virtual_network_name
    address_prefixes = each.value.address_prefixes
}
