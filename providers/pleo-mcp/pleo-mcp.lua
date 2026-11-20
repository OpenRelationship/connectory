-- Pleo — every call this API accepts, as data.
--
-- GENERATED from https://developers.pleo.io/openapi.json
-- Published on the vendor's own documentation site (https://developers.pleo.io).
-- 5 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "pleo-mcp",
  name = "Pleo",
  base = "https://mcp.pleo.io",
  docs = "https://nango.dev/docs/api-integrations/pleo-mcp",
  auth = {
    kind = "oauth",
    header = "authorization",
    format = "Bearer {token}",
    env = "PLEO_MCP_TOKEN",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["pleo-mcp.create_account_v4"] = { method = "POST", url = "https://mcp.pleo.io/v1-beta/accounts" },
    ["pleo-mcp.delete_account_v4"] = { method = "DELETE", url = "https://mcp.pleo.io/v1-beta/accounts/{accountId}", path = {"accountId"} },
    ["pleo-mcp.get_account_v4"] = { method = "GET", url = "https://mcp.pleo.io/v1-beta/accounts/{accountId}", path = {"accountId"} },
    ["pleo-mcp.search_accounts_v4"] = { method = "POST", url = "https://mcp.pleo.io/v1-beta/accounts:search", query = {"before", "after", "offset", "limit", "sorting_keys", "sorting_order"} },
    ["pleo-mcp.update_account_v4"] = { method = "PUT", url = "https://mcp.pleo.io/v1-beta/accounts/{accountId}", path = {"accountId"} },
  },
}
