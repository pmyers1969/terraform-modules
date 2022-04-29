# Module to create Web App

resource "azurerm_app_service_plan" "example" {
  name                = var.asp_name
  resource_group_name = var.rg_name
  location            = var.rg_location
  sku {
    tier = var.asp_sku.tier
    size = var.asp_sku.size
  }
}

resource "azurerm_app_service" "example" {
  name                = var.webapp_name
  resource_group_name = var.rg_name
  location            = azurerm_app_service_plan.example.location
  app_service_plan_id = azurerm_app_service_plan.example.id

  site_config {}
}