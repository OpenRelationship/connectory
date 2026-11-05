-- BlandAI — every call this API accepts, as data.
--
-- GENERATED from https://bland.ai/openapi.json
-- Published on the vendor's own documentation site (https://bland.ai).
-- 5 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "blandai",
  name = "BlandAI",
  base = "https://api.bland.ai",
  docs = "https://nango.dev/docs/integrations/all/blandai",
  auth = {
    kind = "key",
    header = "authorization",
    format = "{token}",
    env = "BLANDAI_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["blandai.get_blog_post_markdown"] = { method = "GET", url = "https://api.bland.ai/api/blog/{slug}/markdown", path = {"slug"} },
    ["blandai.get_call_stats"] = { method = "GET", url = "https://api.bland.ai/api/stats/calls" },
    ["blandai.list_blog_posts"] = { method = "GET", url = "https://api.bland.ai/api/blog", query = {"page", "limit"} },
    ["blandai.submit_contact_form"] = { method = "POST", url = "https://api.bland.ai/api/contact", body = {"name", "email", "company", "message", "turnstileToken"} },
    ["blandai.submit_lead"] = { method = "POST", url = "https://api.bland.ai/api/leads", body = {"formSlug", "values", "turnstileToken", "attribution", "event_id"} },
  },
}
