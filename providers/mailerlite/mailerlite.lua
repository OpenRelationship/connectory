-- MailerLite — every call this API accepts, as data.
--
-- GENERATED from https://api.mailerlite.com/swagger.json
-- Published on the vendor's own documentation site (https://api.mailerlite.com).
-- 6 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "mailerlite",
  name = "MailerLite",
  base = "https://connect.mailerlite.com/api",
  docs = "https://nango.dev/docs/api-integrations/mailerlite",
  auth = {
    kind = "key",
    header = "authorization",
    format = "Bearer {token}",
    env = "MAILERLITE_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["mailerlite.create_webhook"] = { method = "GET", url = "https://connect.mailerlite.com/api/api/v2/webhooks", query = {"limit", "offset"} },
    ["mailerlite.create_webhook"] = { method = "POST", url = "https://connect.mailerlite.com/api/api/v2/webhooks", body = {"event", "url", "body"} },
    ["mailerlite.delete_webhook"] = { method = "DELETE", url = "https://connect.mailerlite.com/api/api/v2/webhooks/{webhookId}", path = {"webhookId"} },
    ["mailerlite.get_count_of_webhooks"] = { method = "GET", url = "https://connect.mailerlite.com/api/api/v2/webhooks/count" },
    ["mailerlite.show_webhook_by_id"] = { method = "GET", url = "https://connect.mailerlite.com/api/api/v2/webhooks/{webhookId}", path = {"webhookId"} },
    ["mailerlite.update_webhook"] = { method = "PUT", url = "https://connect.mailerlite.com/api/api/v2/webhooks/{webhookId}", path = {"webhookId"} },
  },
}
