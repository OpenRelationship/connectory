-- Shorten.REST — every call this API accepts, as data.
--
-- GENERATED from https://api.apis.guru/v2/specs/shorten.rest/1.0.0/openapi.json
-- APIs.guru's mirror of shorten.rest, matched on shorten.rest. A mirror lags the vendor.
-- 7 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "shorten-rest",
  name = "Shorten.REST",
  base = "https://api.shorten.rest",
  docs = "https://nango.dev/docs/api-integrations/shorten-rest",
  auth = {
    kind = "key",
    header = "x-api-key",
    format = "{token}",
    env = "SHORTEN_REST_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["shorten-rest.create_alias"] = { method = "POST", url = "https://api.shorten.rest/aliases", query = {"domainName", "aliasName"}, body = {"destinations", "metatags", "snippets"} },
    ["shorten-rest.delete_alias"] = { method = "DELETE", url = "https://api.shorten.rest/aliases", query = {"domainName", "aliasName"} },
    ["shorten-rest.get_alias"] = { method = "GET", url = "https://api.shorten.rest/aliases", query = {"domainName", "aliasName"} },
    ["shorten-rest.get_aliases"] = { method = "GET", url = "https://api.shorten.rest/aliases/all", query = {"domainName", "continueFrom", "limit"} },
    ["shorten-rest.get_clicks"] = { method = "GET", url = "https://api.shorten.rest/clicks", query = {"continueFrom", "limit"} },
    ["shorten-rest.get_statistics"] = { method = "POST", url = "https://api.shorten.rest/clicks/pg", body = {"aliasId", "dateFrom", "dateTo", "domain", "lastId"} },
    ["shorten-rest.update_alias"] = { method = "PUT", url = "https://api.shorten.rest/aliases", query = {"domainName", "aliasName"}, body = {"destinations", "metatags", "snippets"} },
  },
}
