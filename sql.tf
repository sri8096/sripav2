resource "azurerm_mssql_server" "hiii" {
  name                         = var.mssql_server_details.name
  resource_group_name          = var.resourcegroup_details.name
  location                     = var.resourcegroup_details.location
  version                      = var.mssql_server_details.version
  administrator_login          = var.mssql_server_details.administrator_login
  administrator_login_password = var.mssql_server_details.administrator_login_password
    depends_on = [
        azurerm_virtual_network.pavv3,
      azurerm_subnet.subnets
    ]

}
resource "azurerm_mssql_database" "mssqldb" {
    name = var.mssql_database_details.name
    server_id = azurerm_mssql_server.hiii.id
    sample_name = var.mssql_database_details.sample_name
    sku_name = var.mssql_database_details.sku_name
    depends_on = [
      azurerm_mssql_server.hiii
    ]
}