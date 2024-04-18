###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

###cluster vars

variable "cluster_name" {
  type        = string
  default     = "netology"
}

variable "environement" {
  type        = string
  default     = "PRESTABLE"
  description = "PRODUCTION or PRESTABLE"
}


variable "network_id" {
  type        = string
  default     = "enpv78njcbpmnjc8fgr1"
}

variable "shard" {
  type        = bool
  default     = "true"
}

variable "tls" {
  type        = bool
  default     = "true"
}

variable "protection" {
  type        = bool
  default     = "false"
}

variable "password" {
  type        = string
  sensitive   = true
  default     = "password_example12345"
}

variable "redis_version" {
  type        = string
  default     = "7.0"
  description = "available for yandex_cloud now only 7.0 and 6.4"
}

variable "resource_preset_id" {
  type        = string
  default     = "b3-c1-m4"
}


variable "disk_type_id" {
  type        = string
  default     = "network-ssd"
}

variable "disk_size" {
  type        = number
  default     = "20"
}

###host_vars

variable "shard_names" {
  description = "names of shards"
  type        = list(string)
  default     = ["shard1", "shard2", "shard3"]
}

variable "zones" {
  type        = list(string)
  default     = ["ru-central1-a", "ru-central1-b", "ru-central1-d"]
}

variable "subnet_ids" {
  type        = list(string)
  default     = ["e9b1bo21rhd37h7ajmmp", "e2lv0ngttnjk9a8htaeo", "fl8rv6gi0ngimnptkjfu"]
}
