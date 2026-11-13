-- IP2Location.io — every call this API accepts, as data.
--
-- GENERATED from https://api.apis.guru/v2/specs/ip2location.io/1.0/openapi.json
-- APIs.guru's mirror of ip2location.io, matched on ip2location.io. A mirror lags the vendor.
-- 1 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "ip2location-io",
  name = "IP2Location.io",
  base = "https://api.ip2location.io",
  docs = "https://nango.dev/docs/api-integrations/ip2location-io",
  auth = {
    kind = "key",
    header = "authorization",
    format = "Bearer {token}",
    env = "IP2LOCATION_IO_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["ip2location-io.get_"] = { method = "GET", url = "https://api.ip2location.io/", query = {"ip", "format", "lang"} },
  },
}
