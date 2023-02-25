resource "azurerm_servicebus_queue" "queue" {
  name                                    = local.name
  namespace_id                            = var.namespace_id
  enable_partitioning                     = var.enable_partitioning
  status                                  = var.status
  auto_delete_on_idle                     = var.auto_delete_on_idle
  default_message_ttl                     = var.default_message_ttl
  duplicate_detection_history_time_window = var.duplicate_detection_history_time_window
  enable_batched_operations               = var.enabled_batched_operations
  enable_express                          = var.enable_express
  max_message_size_in_kilobytes           = var.max_message_size_in_kilobytes
  max_size_in_megabytes                   = var.max_size_in_megabytes
  requires_duplicate_detection            = var.requires_duplicate_detection
  lock_duration                           = var.lock_duration
  requires_session                        = var.requires_session
  dead_lettering_on_message_expiration    = var.dead_lettering_on_message_expiration
  forward_to                              = var.forward_to
  forward_dead_lettered_messages_to       = var.forward_dead_lettered_messages_to
}