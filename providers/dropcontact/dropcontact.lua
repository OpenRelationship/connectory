-- Dropcontact — every call this API accepts, as data.
--
-- GENERATED from https://developer.dropcontact.com/openapi.json
-- Published on the vendor's own documentation site (https://developer.dropcontact.com).
-- 6 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "dropcontact",
  name = "Dropcontact",
  base = "https://api.dropcontact.com",
  docs = "https://nango.dev/docs/api-integrations/dropcontact",
  auth = {
    kind = "key",
    header = "x-access-token",
    format = "{token}",
    env = "DROPCONTACT_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["dropcontact.delete_webhook_v1_enrich_webhook_delete"] = { method = "DELETE", url = "https://api.dropcontact.com/v1/enrich/webhook" },
    ["dropcontact.get_all"] = { method = "GET", url = "https://api.dropcontact.com/v1/enrich/all/{request_id}", path = {"request_id"}, query = {"forceResults"} },
    ["dropcontact.get_credits_v1_account_credits_get"] = { method = "GET", url = "https://api.dropcontact.com/v1/account/credits" },
    ["dropcontact.get_webhook_v1_enrich_webhook_get"] = { method = "GET", url = "https://api.dropcontact.com/v1/enrich/webhook" },
    ["dropcontact.post_all"] = { method = "POST", url = "https://api.dropcontact.com/v1/enrich/all", query = {"hashedInputs"}, body = {"data", "siren", "language", "custom_callback_url"} },
    ["dropcontact.upsert_webhook_v1_enrich_webhook_put"] = { method = "PUT", url = "https://api.dropcontact.com/v1/enrich/webhook", body = {"callback_url"} },
  },
}
