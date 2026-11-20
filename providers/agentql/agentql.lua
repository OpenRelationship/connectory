-- AgentQL — every call this API accepts, as data.
--
-- GENERATED from https://api.agentql.com/openapi.json
-- Published on the vendor's own documentation site (https://api.agentql.com).
-- 6 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "agentql",
  name = "AgentQL",
  base = "https://api.agentql.com",
  docs = "https://nango.dev/docs/api-integrations/agentql",
  auth = {
    kind = "key",
    header = "x-api-key",
    format = "{token}",
    env = "AGENTQL_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["agentql.create_session_tetra_sessions_post"] = { method = "POST", url = "https://api.agentql.com/tetra/sessions" },
    ["agentql.create_session_v1_tetra_sessions_post"] = { method = "POST", url = "https://api.agentql.com/v1/tetra/sessions" },
    ["agentql.get_usage_usage_get"] = { method = "GET", url = "https://api.agentql.com/usage" },
    ["agentql.get_usage_v1_usage_get"] = { method = "GET", url = "https://api.agentql.com/v1/usage" },
    ["agentql.query_data_service_query_data_post"] = { method = "POST", url = "https://api.agentql.com/query-data", header = {"X-TF-Request-Origin", "content-type"}, body = {"query", "prompt", "url", "html", "params"} },
    ["agentql.query_data_service_v1_query_data_post"] = { method = "POST", url = "https://api.agentql.com/v1/query-data", header = {"X-TF-Request-Origin", "content-type"}, body = {"query", "prompt", "url", "html", "params"} },
  },
}
