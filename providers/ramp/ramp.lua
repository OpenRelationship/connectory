-- Ramp — every call this API accepts, as data.
--
-- GENERATED from https://ramp.com/openapi.json
-- Published on the vendor's own documentation site (https://ramp.com).
-- 6 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "ramp",
  name = "Ramp",
  base = "https://api.ramp.com",
  docs = "https://nango.dev/docs/integrations/all/ramp",
  auth = {
    kind = "oauth",
    header = "authorization",
    format = "Bearer {token}",
    env = "RAMP_TOKEN",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["ramp.high_intent_prequal"] = { method = "POST", url = "https://api.ramp.com/api/v1/high-intent-prequal", body = {"email"} },
    ["ramp.low_intent_no_prequal"] = { method = "POST", url = "https://api.ramp.com/api/v1/low-intent-no-prequal", body = {"email", "discovery_method", "discovery_method_details"} },
    ["ramp.stack_sign_up"] = { method = "POST", url = "https://api.ramp.com/api/v1/stack-sign-up", body = {"sign_up_type", "email", "business_name_legal", "employee_count"} },
    ["ramp.stack_talk_to_sales"] = { method = "POST", url = "https://api.ramp.com/api/v1/stack-talk-to-sales" },
    ["ramp.track"] = { method = "POST", url = "https://api.ramp.com/api/v1/track", body = {"event", "properties", "anonymousId", "page"} },
    ["ramp.treasury_rates"] = { method = "GET", url = "https://api.ramp.com/api/v1/treasury-rates" },
  },
}
