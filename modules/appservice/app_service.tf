#App Service Configuration

resource "azurerm_app_service_plan" "service-plan" {
  name                = var.service-plan-name
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  kind                = var.sevice-plan-kind
  reserved            = var.enabled

  sku {
    tier = var.sku_tier
    size = var.sku_size
  }

  tags = {
    environment = var.env
  }
}

resource "azurerm_app_service" "app-service" {
  name                = var.app-service-name
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.service-plan.id

  site_config {
    dotnet_framework_version  = var.dotnet_version
    linux_fx_version          = var.runtime-stack
    http2_enabled             = var.disabled
    use_32_bit_worker_process = var.enabled
  }

  tags = {
    environment = var.env
  }
}
