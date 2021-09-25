# Create a Resource Group
resource "azurerm_resource_group" "appservice-rg" {
  name     = var.rgname
  location = var.location

  tags = {
    environment = var.env
  }
}

resource "azurerm_app_service_plan" "service-plan" {
  name                = var.service-plan-name
  location            = azurerm_resource_group.appservice-rg.location
  resource_group_name = azurerm_resource_group.appservice-rg.name
  kind                = var.sevice-plan-kind
  reserved            = true

  sku {
    tier = "Free"
    size = "F1"
  }

  tags = {
    environment = var.env
  }
}

resource "azurerm_app_service" "app-service" {
  name                = var.app-service-name
  location            = azurerm_resource_group.appservice-rg.location
  resource_group_name = azurerm_resource_group.appservice-rg.name
  app_service_plan_id = azurerm_app_service_plan.service-plan.id

  site_config {
    dotnet_framework_version  = "v5.0"
    linux_fx_version          = var.runtime-stack
    http2_enabled             = false
    use_32_bit_worker_process = true
  }

  tags = {
    environment = var.env
  }
}
