resource "azurerm_resource_group" "first_resource_group_ghg" {  #nome para referencia do group
  name     = "storage_account_resource_group_ghg"
  location = var.location

  tags = local.common_tags
}

resource "azurerm_storage_account" "first_storage_account" {
  name                     = "guilhermeazurestorage"
  resource_group_name      = azurerm_resource_group.first_resource_group_ghg.name
  location                 = var.location                     #apontado para o arquivo de variaveis
  account_tier             = var.account_tier                 #apontado para o arquivo de variaveis
  account_replication_type = var.account_replication_type     #apontado para o arquivo de variaveis

  tags = local.common_tags
}

resource "azurerm_storage_container" "first_container_ghg" {
  name                 = ""
  storage_account_name = azurerm_storage_account.first_storage_account.name
}

#azurerm_storage_account.first_storage_account
