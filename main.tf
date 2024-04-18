resource "yandex_mdb_redis_cluster" "netology" {
  name                = var.cluster_name
  environment         = var.environement
  network_id          = var.network_id
  security_group_ids  = [ "enp47qss2ianln64rt5f" ]
  sharded             = var.shard
  tls_enabled         = var.tls
  deletion_protection = var.protection

  config {
    password = var.password
    version  = var.redis_version
  }

  resources {
    resource_preset_id = var.resource_preset_id
    disk_type_id       = var.disk_type_id
    disk_size          = var.disk_size
  }

  dynamic "host" {
    for_each = { for idx, shard_name in var.shard_names : shard_name => idx }
    content {
      zone         = var.zones[(host.value + length(var.zones)) % length(var.zones)]
      subnet_id    = var.subnet_ids[(host.value + length(var.subnet_ids)) % length(var.subnet_ids)]
      shard_name   = host.key
    }
  }
}  

