# Data of an existing Subnet in a Vnet
data "azurerm_subnet" "subnet" {
  name                 = "<name of the subnet to run in>"
  virtual_network_name = "MyVNET"
  resource_group_name  = "Networks"
}

# Create a new Vnet
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = ["10.2.0.0/16"]
  location            = var.location
  resource_group_name = azurerm_resource_group.aks_rg.name
  tags                = local.tags
}

resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.aks_rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.2.0.0/24"]
}