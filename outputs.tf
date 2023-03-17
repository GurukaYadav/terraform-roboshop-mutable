output "DOCDB_ENDPOINT" {
  value = module.docdb.DOCDB_ENDPOINT
}

output "RDS_ENDPOINT" {
  value = module.rds.RDS_ENDPOINT
}

output "REDIS_ENDPOINT" {
  value = module.elasticache.REDIS_ENDPOINT
}