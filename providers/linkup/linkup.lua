-- Linkup — every call this API accepts, as data.
--
-- GENERATED from https://api.linkup.so/v1/openapi.json
-- Published on the vendor's own documentation site (https://api.linkup.so).
-- 15 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "linkup",
  name = "Linkup",
  base = "https://api.linkup.so",
  docs = "https://nango.dev/docs/api-integrations/linkup",
  auth = {
    kind = "key",
    header = "authorization",
    format = "Bearer {token}",
    env = "LINKUP_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["linkup.balance"] = { method = "GET", url = "https://api.linkup.so/v1/credits/balance" },
    ["linkup.create_extract"] = { method = "POST", url = "https://api.linkup.so/v1/extract", body = {"q", "schema", "url", "verifyUrls"} },
    ["linkup.create_research"] = { method = "POST", url = "https://api.linkup.so/v1/research", body = {"excludeDomains", "fromDate", "includeDomains", "q", "structuredOutputSchema", "toDate", "mode", "outputType", "reasoningDepth"} },
    ["linkup.create_tasks"] = { method = "POST", url = "https://api.linkup.so/v1/tasks" },
    ["linkup.fetch"] = { method = "POST", url = "https://api.linkup.so/v1/fetch", body = {"extractImages", "includeRawContent", "includeRawHtml", "renderJs", "mode", "instructions", "schema", "url"} },
    ["linkup.get_extract"] = { method = "GET", url = "https://api.linkup.so/v1/extract/{id}", path = {"id"} },
    ["linkup.get_research"] = { method = "GET", url = "https://api.linkup.so/v1/research/{id}", path = {"id"} },
    ["linkup.get_task"] = { method = "GET", url = "https://api.linkup.so/v1/tasks/{id}", path = {"id"} },
    ["linkup.list_extract"] = { method = "GET", url = "https://api.linkup.so/v1/extract", query = {"page", "pageSize", "sortBy", "sortDirection"} },
    ["linkup.list_research"] = { method = "GET", url = "https://api.linkup.so/v1/research", query = {"page", "pageSize", "sortBy", "sortDirection"} },
    ["linkup.list_tasks"] = { method = "GET", url = "https://api.linkup.so/v1/tasks", query = {"type", "status", "page", "pageSize", "sortBy", "sortDirection"} },
    ["linkup.responses"] = { method = "POST", url = "https://api.linkup.so/v1/responses", body = {"input", "instructions", "model", "text"} },
    ["linkup.rewind_fetch"] = { method = "POST", url = "https://api.linkup.so/v1/rewind/fetch", body = {"asOf", "url"} },
    ["linkup.rewind_search"] = { method = "POST", url = "https://api.linkup.so/v1/rewind/search", body = {"asOf", "q"} },
    ["linkup.search"] = { method = "POST", url = "https://api.linkup.so/v1/search", body = {"excludeDomains", "fromDate", "includeDomains", "q", "structuredOutputSchema", "toDate", "depth", "includeImages", "includeInlineCitations", "includeSources", "maxResults", "outputType"} },
  },
}
