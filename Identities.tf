// SB Data Receiver Role 
resource "azurerm_user_assigned_identity" "sb_data_receiver" {
  location            = var.location
  name                = format("id-sbdatareceiver-%s", azurerm_servicebus_queue.queue.name)
  resource_group_name = var.resource_group_name
  tags                = var.default_tags
}

resource "azurerm_role_assignment" "rbac_sb_data_receiver" {
  scope                = azurerm_servicebus_queue.queue.id
  role_definition_name = "Azure Service Bus Data Receiver"
  principal_id         = azurerm_user_assigned_identity.sb_data_receiver.principal_id
}

// SB Data Sender Role 
resource "azurerm_user_assigned_identity" "sb_data_sender" {
  location            = var.location
  name                = format("id-sbdatasender-%s", azurerm_servicebus_queue.queue.name)
  resource_group_name = var.resource_group_name
  tags                = var.default_tags
}

resource "azurerm_role_assignment" "rbac_sb_data_sender" {
  scope                = azurerm_servicebus_queue.queue.id
  role_definition_name = "Azure Service Bus Data Sender"
  principal_id         = azurerm_user_assigned_identity.sb_data_sender.principal_id
}