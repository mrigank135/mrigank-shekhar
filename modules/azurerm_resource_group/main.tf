resource "azurerm_resource_group" "rglocalnameonterraform" {
    for_each = var.rgm
    name = each.value.name
    location = each.value.location
}
