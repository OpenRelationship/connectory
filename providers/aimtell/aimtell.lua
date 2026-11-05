-- Aimtell — every call this API accepts, as data.
--
-- GENERATED from https://developers.aimtell.com/api-reference/openapi.json
-- Published on the vendor's own documentation site (https://developers.aimtell.com).
-- 2 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "aimtell",
  name = "Aimtell",
  base = "https://api.aimtell.com",
  docs = "https://nango.dev/docs/api-integrations/aimtell",
  auth = {
    kind = "key",
    header = "x-authorization-api-key",
    format = "{token}",
    env = "AIMTELL_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["aimtell.get_user"] = { method = "GET", url = "https://api.aimtell.com/prod/user/" },
    ["aimtell.update_user"] = { method = "PUT", url = "https://api.aimtell.com/prod/user/", body = {"first_name", "last_name", "password", "timezone"} },
  },
}
