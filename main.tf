data "databricks_mlflow_models" "mlflow_models_lookup" {
  for_each = var.mlflow_models_lookup

  names = each.value.names

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

