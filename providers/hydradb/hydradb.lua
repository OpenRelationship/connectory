-- HydraDB — every call this API accepts, as data.
--
-- GENERATED from https://docs.hydradb.com/api-reference/openapi.json
-- Published on the vendor's own documentation site (https://docs.hydradb.com).
-- 22 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "hydradb",
  name = "HydraDB",
  base = "https://api.hydradb.com",
  docs = "https://nango.dev/docs/api-integrations/hydradb",
  auth = {
    kind = "key",
    header = "authorization",
    format = "Bearer {token}",
    env = "HYDRADB_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["hydradb.add_memory_memories_add_memory_post"] = { method = "POST", url = "https://api.hydradb.com/memories/add_memory", body = {"memories", "tenant_id", "sub_tenant_id", "upsert"} },
    ["hydradb.create_api_key_api_keys_create_api_key_post"] = { method = "POST", url = "https://api.hydradb.com/api-keys/create_api_key", body = {"owner", "scopes", "env", "prefix"} },
    ["hydradb.create_tenant_tenants_create_post"] = { method = "POST", url = "https://api.hydradb.com/tenants/create", body = {"tenant_id", "is_embeddings_tenant", "embeddings_dimension", "tenant_metadata_schema"} },
    ["hydradb.delete_memory_memories_delete_memory_delete"] = { method = "DELETE", url = "https://api.hydradb.com/memories/delete_memory", query = {"tenant_id", "memory_id", "sub_tenant_id"} },
    ["hydradb.delete_raw_embeddings_endpoint_embeddings_delete_raw_embeddings_delete"] = { method = "DELETE", url = "https://api.hydradb.com/embeddings/delete_raw_embeddings", query = {"tenant_id", "sub_tenant_id", "source_id", "chunk_ids"} },
    ["hydradb.delete_source_knowledge_delete_knowledge_post"] = { method = "POST", url = "https://api.hydradb.com/knowledge/delete_knowledge", body = {"tenant_id", "sub_tenant_id", "ids"} },
    ["hydradb.delete_tenant_tenants_delete_delete"] = { method = "DELETE", url = "https://api.hydradb.com/tenants/delete", query = {"tenant_id"} },
    ["hydradb.fetch_source_fetch_content_post"] = { method = "POST", url = "https://api.hydradb.com/fetch/content", body = {"tenant_id", "sub_tenant_id", "source_id", "mode", "expiry_seconds"} },
    ["hydradb.filter_raw_embeddings_endpoint_embeddings_filter_raw_embeddings_post"] = { method = "POST", url = "https://api.hydradb.com/embeddings/filter_raw_embeddings", body = {"tenant_id", "sub_tenant_id", "source_id", "chunk_ids", "output_fields", "limit"} },
    ["hydradb.full_recall_recall_full_recall_post"] = { method = "POST", url = "https://api.hydradb.com/recall/full_recall", body = {"tenant_id", "sub_tenant_id", "query", "max_results", "mode", "alpha", "recency_bias", "graph_context", "search_forceful_relations", "additional_context", "metadata_filters"} },
    ["hydradb.full_text_search_recall_boolean_recall_post"] = { method = "POST", url = "https://api.hydradb.com/recall/boolean_recall", body = {"tenant_id", "sub_tenant_id", "query", "operator", "max_results", "search_mode"} },
    ["hydradb.get_infra_status_tenants_infra_status_get"] = { method = "GET", url = "https://api.hydradb.com/tenants/infra/status", query = {"tenant_id"} },
    ["hydradb.get_sub_tenant_ids_tenants_sub_tenant_ids_get"] = { method = "GET", url = "https://api.hydradb.com/tenants/sub_tenant_ids", query = {"tenant_id"} },
    ["hydradb.get_tenant_stats_tenants_monitor_get"] = { method = "GET", url = "https://api.hydradb.com/tenants/monitor", query = {"tenant_id"} },
    ["hydradb.graph_relations_by_id_list_graph_relations_by_id_get"] = { method = "GET", url = "https://api.hydradb.com/list/graph_relations_by_id", query = {"source_id", "tenant_id", "is_memory", "sub_tenant_id", "limit"} },
    ["hydradb.insert_raw_embeddings_endpoint_embeddings_insert_raw_embeddings_post"] = { method = "POST", url = "https://api.hydradb.com/embeddings/insert_raw_embeddings", body = {"tenant_id", "sub_tenant_id", "embeddings", "upsert"} },
    ["hydradb.list_content_list_data_post"] = { method = "POST", url = "https://api.hydradb.com/list/data", body = {"tenant_id", "sub_tenant_id", "kind", "source_ids", "page", "page_size", "filters", "include_fields"} },
    ["hydradb.metrics_metrics_get"] = { method = "GET", url = "https://api.hydradb.com/metrics" },
    ["hydradb.recall_preferences_recall_recall_preferences_post"] = { method = "POST", url = "https://api.hydradb.com/recall/recall_preferences", body = {"tenant_id", "sub_tenant_id", "query", "max_results", "mode", "alpha", "recency_bias", "graph_context", "search_forceful_relations", "additional_context", "metadata_filters"} },
    ["hydradb.search_raw_embeddings_endpoint_embeddings_search_raw_embeddings_post"] = { method = "POST", url = "https://api.hydradb.com/embeddings/search_raw_embeddings", body = {"tenant_id", "sub_tenant_id", "query_embedding", "limit", "filter_expr", "output_fields"} },
    ["hydradb.upload_knowledge_ingestion_upload_knowledge_post"] = { method = "POST", url = "https://api.hydradb.com/ingestion/upload_knowledge", body = {"tenant_id", "sub_tenant_id", "upsert", "files", "file_metadata", "app_knowledge"} },
    ["hydradb.verify_processing_ingestion_verify_processing_post"] = { method = "POST", url = "https://api.hydradb.com/ingestion/verify_processing", query = {"file_id", "file_ids", "tenant_id", "sub_tenant_id"} },
  },
}
