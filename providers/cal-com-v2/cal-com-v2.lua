-- Cal.com — every call this API accepts, as data.
--
-- GENERATED from https://cal.com/openapi.json
-- Published on the vendor's own documentation site (https://cal.com).
-- 3 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "cal-com-v2",
  name = "Cal.com",
  base = "https://api.cal.com/v2",
  docs = "https://nango.dev/docs/api-integrations/cal-com-v2",
  auth = {
    kind = "key",
    header = "authorization",
    format = "Bearer {token}",
    env = "CAL_COM_V2_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["cal-com-v2.ask_faq"] = { method = "POST", url = "https://api.cal.com/v2/api/faq", body = {"question"} },
    ["cal-com-v2.join_waitlist"] = { method = "POST", url = "https://api.cal.com/v2/api/waitlist", body = {"email", "product"} },
    ["cal-com-v2.request_demo"] = { method = "POST", url = "https://api.cal.com/v2/api/talk-to-sales", body = {"name", "email", "users", "source", "notes"} },
  },
}
