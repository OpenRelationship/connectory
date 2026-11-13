-- Cal.com — every call this API accepts, as data.
--
-- GENERATED from https://cal.com/openapi.json
-- Published on the vendor's own documentation site (https://cal.com).
-- 3 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "cal-com",
  name = "Cal.com",
  base = "https://api.cal.com",
  docs = "https://nango.dev/docs/api-integrations/cal-com-oauth",
  auth = {
    kind = "oauth",
    header = "authorization",
    format = "Bearer {token}",
    env = "CAL_COM_TOKEN",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["cal-com.ask_faq"] = { method = "POST", url = "https://api.cal.com/api/faq", body = {"question"} },
    ["cal-com.join_waitlist"] = { method = "POST", url = "https://api.cal.com/api/waitlist", body = {"email", "product"} },
    ["cal-com.request_demo"] = { method = "POST", url = "https://api.cal.com/api/talk-to-sales", body = {"name", "email", "users", "source", "notes"} },
  },
}
