-- Shotstack — every call this API accepts, as data.
--
-- GENERATED from https://api.apis.guru/v2/specs/shotstack.io/v1/openapi.json
-- APIs.guru's mirror of shotstack.io, matched on shotstack.io. A mirror lags the vendor.
-- 5 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "shotstack",
  name = "Shotstack",
  base = "https://api.shotstack.io",
  docs = "https://nango.dev/docs/api-integrations/shotstack",
  auth = {
    kind = "key",
    header = "x-api-key",
    format = "{token}",
    env = "SHOTSTACK_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["shotstack.delete_asset"] = { method = "DELETE", url = "https://api.shotstack.io/{version}/assets/{id}", path = {"id"} },
    ["shotstack.get_asset"] = { method = "GET", url = "https://api.shotstack.io/{version}/assets/{id}", path = {"id"} },
    ["shotstack.get_asset_by_render_id"] = { method = "GET", url = "https://api.shotstack.io/{version}/assets/render/{id}", path = {"id"} },
    ["shotstack.get_render"] = { method = "GET", url = "https://api.shotstack.io/{version}/render/{id}", path = {"id"} },
    ["shotstack.post_render"] = { method = "POST", url = "https://api.shotstack.io/{version}/render", body = {"callback", "disk", "output", "timeline"} },
  },
}
