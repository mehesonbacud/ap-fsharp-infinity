# terraform/application-insights.tf

# Create Application Insights related to Service Resource
resource "azurerm_application_insights" "ai" {
  name                = "${var.service_name}${var.environment_suffix}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  application_type    = "web"
  workspace_id        = azurerm_log_analytics_workspace.law.id
}