resource "azurerm_network_security_group" "main" {
  name                = var.nsg_name
  location            = data.azurerm_resources.main.location
  resource_group_name = data.azurerm_resources.main.name
  tags = merge(
    var.common_tags,
    {
     Name = "${var.project_name}-${var.environment}-${var.nsg_name}"
    }
  )
}


