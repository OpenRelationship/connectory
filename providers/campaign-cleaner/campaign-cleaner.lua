-- Campaign Cleaner — every call this API accepts, as data.
--
-- GENERATED from https://docs.campaigncleaner.com/api-reference/openapi.json
-- Published on the vendor's own documentation site (https://docs.campaigncleaner.com).
-- 2 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "campaign-cleaner",
  name = "Campaign Cleaner",
  base = "https://api.campaigncleaner.com",
  docs = "https://nango.dev/docs/api-integrations/campaign-cleaner",
  auth = {
    kind = "key",
    header = "x-cc-api-key",
    format = "{token}",
    env = "CAMPAIGN_CLEANER_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["campaign-cleaner.get_api_v1_Credits"] = { method = "GET", url = "https://api.campaigncleaner.com/api/v1/Credits", header = {"X-API-Key"} },
    ["campaign-cleaner.get_api_v1_verify"] = { method = "GET", url = "https://api.campaigncleaner.com/api/v1/verify", query = {"email", "firstName", "lastName", "linkedInProfileUrl", "domain"}, header = {"X-API-Key"} },
  },
}
