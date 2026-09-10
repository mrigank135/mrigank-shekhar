resource "azurerm_network_interfaces" "nic" {
    for_each = var.nicm
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.resource_group_name

    ip_configuration {
        name = "internal"
        subnet_id = data.azurerm_subnet.subnet[each.key].id
        private_ip_address_location = "Dynamic"
        public_ip_address_id = data.azurerm_public_ip.pip[each.key].id
    }
}