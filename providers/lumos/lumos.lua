-- Lumos — every call this API accepts, as data.
--
-- GENERATED from https://api.lumos.com/openapi.json
-- Published on the vendor's own documentation site (https://api.lumos.com).
-- 13 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "lumos",
  name = "Lumos",
  base = "https://api.lumos.com",
  docs = "https://nango.dev/docs/api-integrations/lumos",
  auth = {
    kind = "key",
    header = "authorization",
    format = "Bearer {token}",
    env = "LUMOS_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["lumos.create_knowledge_context"] = { method = "POST", url = "https://api.lumos.com/v1/knowledge/context", body = {"title", "content", "generic_tags", "product_scopes", "file"} },
    ["lumos.create_skill"] = { method = "POST", url = "https://api.lumos.com/v1/knowledge/skills", body = {"title", "files"} },
    ["lumos.delete_knowledge_context"] = { method = "DELETE", url = "https://api.lumos.com/v1/knowledge/context/{knowledge_context_id}", path = {"knowledge_context_id"} },
    ["lumos.get_knowledge_context"] = { method = "GET", url = "https://api.lumos.com/v1/knowledge/context/{knowledge_context_id}", path = {"knowledge_context_id"} },
    ["lumos.get_skill"] = { method = "GET", url = "https://api.lumos.com/v1/knowledge/skills/{title}", path = {"title"} },
    ["lumos.list_knowledge_context"] = { method = "GET", url = "https://api.lumos.com/v1/knowledge/context", query = {"title_search", "product_scopes", "page_token", "page_size"} },
    ["lumos.list_skills"] = { method = "GET", url = "https://api.lumos.com/v1/knowledge/skills", query = {"filters", "title_search", "enabled_state", "is_default", "include_files", "page_token", "page_size"} },
    ["lumos.lumos_art"] = { method = "GET", url = "https://api.lumos.com/art" },
    ["lumos.lumos_liveness_check"] = { method = "GET", url = "https://api.lumos.com/info" },
    ["lumos.process_airbase_milestone_event"] = { method = "POST", url = "https://api.lumos.com/webhooks/airbase/purchase_request_approved/{domain_app_uuid}", path = {"domain_app_uuid"}, body = {"id", "object", "type", "created_date", "data"} },
    ["lumos.process_vendr_request_completed_webhooks_vendr_request_completed_domain_app_uuid_post"] = { method = "POST", url = "https://api.lumos.com/webhooks/vendr/request_completed/{domain_app_uuid}", path = {"domain_app_uuid"} },
    ["lumos.put_skill_file"] = { method = "PUT", url = "https://api.lumos.com/v1/knowledge/skills/{skill_id}/files/{path}", path = {"skill_id", "path"}, body = {"content"} },
    ["lumos.update_knowledge_context"] = { method = "PATCH", url = "https://api.lumos.com/v1/knowledge/context/{knowledge_context_id}", path = {"knowledge_context_id"}, body = {"title", "content", "generic_tags", "product_scopes", "clear_attachment", "file"} },
  },
}
