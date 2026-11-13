-- Databox — every call this API accepts, as data.
--
-- GENERATED from https://api.databox.com/swagger/v1/swagger.json
-- Published on the vendor's own documentation site (https://api.databox.com).
-- 21 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "databox",
  name = "Databox",
  base = "https://api.databox.com",
  docs = "https://nango.dev/docs/api-integrations/databox",
  auth = {
    kind = "key",
    header = "x-api-key",
    format = "{token}",
    env = "DATABOX_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["databox.account_get_data_sources_by_account_id"] = { method = "GET", url = "https://api.databox.com/v1/accounts/{accountId}/data-sources", path = {"accountId"} },
    ["databox.account_get_datasets"] = { method = "GET", url = "https://api.databox.com/v1/accounts/{accountId}/datasets", path = {"accountId"}, query = {"merged", "Page", "PageSize"} },
    ["databox.account_get_timezones"] = { method = "GET", url = "https://api.databox.com/v1/accounts/timezones" },
    ["databox.account_get_users_spaces"] = { method = "GET", url = "https://api.databox.com/v1/accounts" },
    ["databox.auth_validate_api_key"] = { method = "GET", url = "https://api.databox.com/v1/auth/validate-key" },
    ["databox.data_source_create_data_source"] = { method = "POST", url = "https://api.databox.com/v1/data-sources", body = {"title", "accountId", "timezone"} },
    ["databox.data_source_delete_data_source"] = { method = "DELETE", url = "https://api.databox.com/v1/data-sources/{dataSourceId}", path = {"dataSourceId"} },
    ["databox.data_source_get_dataset_links_by_data_source_id"] = { method = "GET", url = "https://api.databox.com/v1/data-sources/{dataSourceId}/datasets", path = {"dataSourceId"} },
    ["databox.data_source_get_metric_definition"] = { method = "GET", url = "https://api.databox.com/v1/data-sources/{dataSourceId}/metrics/{metricId}", path = {"dataSourceId", "metricId"} },
    ["databox.data_source_list_metrics"] = { method = "GET", url = "https://api.databox.com/v1/data-sources/{dataSourceId}/metrics", path = {"dataSourceId"}, query = {"page", "limit"} },
    ["databox.data_source_load_metric_data"] = { method = "POST", url = "https://api.databox.com/v1/data-sources/{dataSourceId}/metrics/data", path = {"dataSourceId"}, body = {"metricId", "dateRange", "dimensions", "filters"} },
    ["databox.databoards_get_databoard_metrics"] = { method = "GET", url = "https://api.databox.com/v1/databoards/{databoardId}/metrics", path = {"databoardId"} },
    ["databox.databoards_list_databoards"] = { method = "GET", url = "https://api.databox.com/v1/databoards", query = {"page", "limit", "accountId"} },
    ["databox.dataset_create_data_source_ingest"] = { method = "POST", url = "https://api.databox.com/v1/datasets", body = {"title", "dataSourceId", "primaryKeys", "schema"} },
    ["databox.dataset_delete_dataset"] = { method = "DELETE", url = "https://api.databox.com/v1/datasets/{datasetId}", path = {"datasetId"} },
    ["databox.dataset_get_dataset"] = { method = "GET", url = "https://api.databox.com/v1/datasets/{datasetId}", path = {"datasetId"} },
    ["databox.dataset_get_dataset_data"] = { method = "GET", url = "https://api.databox.com/v1/datasets/{datasetId}/data", path = {"datasetId"}, query = {"Page", "PageSize"} },
    ["databox.dataset_get_ingestion_by_dataset_and_ingestion_id"] = { method = "GET", url = "https://api.databox.com/v1/datasets/{datasetId}/ingestions/{ingestionId}", path = {"datasetId", "ingestionId"} },
    ["databox.dataset_get_ingestion_by_dataset_id"] = { method = "GET", url = "https://api.databox.com/v1/datasets/{datasetId}/ingestions", path = {"datasetId"}, query = {"Page", "PageSize"} },
    ["databox.dataset_ingest_data"] = { method = "POST", url = "https://api.databox.com/v1/datasets/{datasetId}/data", path = {"datasetId"}, body = {"records"} },
    ["databox.dataset_purge_dataset"] = { method = "POST", url = "https://api.databox.com/v1/datasets/{datasetId}/purge", path = {"datasetId"} },
  },
}
