variable "environment" {
  description = "Environment name"
  type        = string
}

variable "stack" {
  description = "Stack name"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group the resources will belong to"
  type        = string
}

variable "location" {
  description = "Azure location for Key Vault."
  type        = string
}

variable "location_short" {
  description = "Short string for Azure location."
  type        = string
}

variable "namespace_id" {
  description = "The ID of the ServiceBus Namespace to create this topic. Changing this forces a new resource to be created"
  type        = string
}

variable "status" {
  description = "The status of the Queue. Possible values are Active, Creating, Deleting, Disabled, ReceiveDisabled, Renaming, SendDisabled, Unknown. Note that Restoring is not accepted"
  type        = string
  default     = "Active"
}

variable "auto_delete_on_idle" {
  description = "The ISO 8601 timespan duration of the idle interval after which the Queue is automatically deleted, minimum of 5 minutes."
  type        = number
  default     = null
}

variable "default_message_ttl" {
  description = "The ISO 8601 timespan duration of the TTL of messages sent to this queue. This is the default value used when TTL is not set on message itself."
  type        = number
  default     = null
}

variable "duplicate_detection_history_time_window" {
  description = "  The ISO 8601 timespan duration during which duplicates can be detected. Defaults to 10 minutes (PT10M)."
  type        = number
  default     = null
}

variable "enable_batched_operations" {
  description = "  Boolean flag which controls whether server-side batched operations are enabled. Defaults to true."
  type        = bool
  default     = null
}

variable "enable_express" {
  description = "  Boolean flag which controls whether Express Entities are enabled. An express queue holds a message in memory temporarily before writing it to persistent storage. Defaults to false for Basic and Standard. For Premium, it MUST be set to false."
  type        = bool
  default     = false
}

variable "enable_partitioning" {
  description = "  Boolean flag which controls whether to enable the queue to be partitioned across multiple message brokers. Changing this forces a new resource to be created. Defaults to false for Basic and Standard."
  type        = bool
  default     = false
}

variable "max_message_size_in_kilobytes" {
  description = "Integer value which controls the maximum size of a message allowed on the queue for Premium SKU"
  type        = number
  default     = null
}

variable "max_size_in_megabytes" {
  description = "  Integer value which controls the size of memory allocated for the queue."
  type        = number
  default     = null
}

variable "requires_duplicate_detection" {
  description = "  Boolean flag which controls whether the Queue requires duplicate detection. Changing this forces a new resource to be created"
  type        = bool
  default     = false
}

variable "lock_duration" {
  description = "The ISO 8601 timespan duration of a peek-lock; that is, the amount of time that the message is locked for other receivers. Maximum value is 5 minutes. Defaults to 1 minute (PT1M)."
  type        = string
  default     = null
}

variable "requires_session" {
  description = "Boolean flag which controls whether the Queue requires sessions. This will allow ordered handling of unbounded sequences of related messages. With sessions enabled a queue can guarantee first-in-first-out delivery of messages. Changing this forces a new resource to be created"
  type        = bool
  default     = false
}

variable "dead_lettering_on_message_expiration" {
  description = "Boolean flag which controls whether the Queue has dead letter support when a message expires. Defaults to false."
  type        = bool
  default     = true
}

variable "max_delivery_count" {
  description = "Integer value which controls when a message is automatically dead lettered. Defaults to 10."
  type        = number
  default     = 10
}

variable "forward_to" {
  description = "The name of a Queue or Topic to automatically forward messages to"
  type        = string
  default     = null
}

variable "forward_dead_lettered_messages_to" {
  description = "The name of a Queue or Topic to automatically forward dead lettered messages to."
  type        = string
  default     = null
}