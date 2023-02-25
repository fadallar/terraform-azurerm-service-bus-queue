output "service_bus_topic_id" {
  value       = azurerm_servicebus_queue.queue.id
  description = "Service Bus Topic"
}

output "id_sb_data_receiver" {
  value       = azurerm_user_assigned_identity.sb_data_receiver.id
  description = "Id to the user-managed identity with Service Bus Data Receiver"
}

output "id_sb_data_sender" {
  value       = azurerm_user_assigned_identity.sb_data_sender.id
  description = "Id to the user-managed identity with Service Bus Data Sender"
}