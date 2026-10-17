-- Astro — every call this API accepts, as data.
--
-- GENERATED from https://astronomer.io/.well-known/openapi.json
-- Published on the vendor's own documentation site (https://astronomer.io).
-- 2 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "astro-mcp",
  name = "Astro",
  base = "https://api.astronomer.io",
  docs = "https://nango.dev/docs/api-integrations/astro-mcp",
  auth = {
    kind = "oauth",
    header = "authorization",
    format = "Bearer {token}",
    env = "ASTRO_MCP_TOKEN",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["astro-mcp.create_mux_upload"] = { method = "POST", url = "https://api.astronomer.io/.netlify/functions/mux-create-upload", body = {"title"} },
    ["astro-mcp.get_mux_playback_id"] = { method = "GET", url = "https://api.astronomer.io/.netlify/functions/mux-get-playback-id", query = {"uploadId"} },
  },
}
