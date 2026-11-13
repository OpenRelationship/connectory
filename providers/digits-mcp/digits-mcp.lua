-- Digits — every call this API accepts, as data.
--
-- GENERATED from https://digits.com/openapi.json
-- Published on the vendor's own documentation site (https://digits.com).
-- 4 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "digits-mcp",
  name = "Digits",
  base = "https://api.digits.com",
  docs = "https://nango.dev/docs/api-integrations/digits-mcp",
  auth = {
    kind = "oauth",
    header = "authorization",
    format = "Bearer {token}",
    env = "DIGITS_MCP_TOKEN",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["digits-mcp.get_llms_txt"] = { method = "GET", url = "https://api.digits.com/llms.txt" },
    ["digits-mcp.get_mcp_config"] = { method = "GET", url = "https://api.digits.com/.well-known/mcp.json" },
    ["digits-mcp.get_mcp_server_card"] = { method = "GET", url = "https://api.digits.com/.well-known/mcp/server.json" },
    ["digits-mcp.get_sitemap"] = { method = "GET", url = "https://api.digits.com/sitemap.xml" },
  },
}
