
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-terraform-docker-app"
  location = "East US"
}

resource "azurerm_app_service_plan" "asp" {
  name                = "appserviceplan-terraform"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  kind                = "Linux"
  reserved            = true

  sku {
    tier = "Basic"
    size = "B1"
  }
}

resource "azurerm_app_service" "app" {
  name                = "dockerappterraform"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.asp.id

  site_config {
    linux_fx_version = "DOCKER|fiantvictor/myapp:latest"
  }

  app_settings = {
    WEBSITES_ENABLE_APP_SERVICE_STORAGE = "false"
    DOCKER_REGISTRY_SERVER_URL = "https://index.docker.io"
  }
}
