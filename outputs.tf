output "mlflow_models_lookup_id" {
  description = "Map of id values across all mlflow_models_lookup, keyed the same as var.mlflow_models_lookup except keys with no id are omitted"
  value       = { for k, v in data.databricks_mlflow_models.mlflow_models_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mlflow_models_lookup_names" {
  description = "Map of names values across all mlflow_models_lookup, keyed the same as var.mlflow_models_lookup except keys with no names are omitted"
  value       = { for k, v in data.databricks_mlflow_models.mlflow_models_lookup : k => v.names if v.names != null && length(v.names) > 0 }
}
output "mlflow_models_lookup_provider_config" {
  description = "Map of provider_config values across all mlflow_models_lookup, keyed the same as var.mlflow_models_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_mlflow_models.mlflow_models_lookup : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}

