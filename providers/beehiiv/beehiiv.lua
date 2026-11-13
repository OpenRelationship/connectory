-- Beehiiv — every call this API accepts, as data.
--
-- GENERATED from https://beehiiv.com/openapi.json
-- Published on the vendor's own documentation site (https://beehiiv.com).
-- 12 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "beehiiv",
  name = "Beehiiv",
  base = "https://api.beehiiv.com/v2/publications/{publicationId}",
  docs = "https://nango.dev/docs/integrations/all/beehiiv",
  auth = {
    kind = "key",
    header = "authorization",
    format = "Bearer {token}",
    env = "BEEHIIV_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = { ["publicationId"] = "BEEHIIV_PUBLICATIONID" },
  headers = {},
  operations = {
    ["beehiiv.create_post"] = { method = "POST", url = "https://api.beehiiv.com/v2/publications/{publicationId}/publications/{publicationId}/posts", path = {"publicationId"}, body = {"blocks", "body_content", "title", "subtitle", "post_template_id", "status", "scheduled_at", "custom_link_tracking_enabled", "thumbnail_image_url"} },
    ["beehiiv.create_subscription"] = { method = "POST", url = "https://api.beehiiv.com/v2/publications/{publicationId}/publications/{publicationId}/subscriptions", path = {"publicationId"}, body = {"email", "reactivate_existing", "send_welcome_email", "utm_source", "utm_medium", "utm_campaign", "referring_site", "custom_fields"} },
    ["beehiiv.get_llms_txt"] = { method = "GET", url = "https://api.beehiiv.com/v2/publications/{publicationId}/llms.txt" },
    ["beehiiv.get_open_api_spec"] = { method = "GET", url = "https://api.beehiiv.com/v2/publications/{publicationId}/openapi.json" },
    ["beehiiv.get_page_markdown"] = { method = "GET", url = "https://api.beehiiv.com/v2/publications/{publicationId}/api/markdown/{path}", path = {"path"} },
    ["beehiiv.get_publication"] = { method = "GET", url = "https://api.beehiiv.com/v2/publications/{publicationId}/publications/{publicationId}", path = {"publicationId"} },
    ["beehiiv.invoke_marketing_mcp"] = { method = "POST", url = "https://api.beehiiv.com/v2/publications/{publicationId}/api/mcp" },
    ["beehiiv.list_marketing_mcp_tools"] = { method = "GET", url = "https://api.beehiiv.com/v2/publications/{publicationId}/api/mcp/tools" },
    ["beehiiv.list_posts"] = { method = "GET", url = "https://api.beehiiv.com/v2/publications/{publicationId}/publications/{publicationId}/posts", path = {"publicationId"}, query = {"limit", "cursor"} },
    ["beehiiv.list_publications"] = { method = "GET", url = "https://api.beehiiv.com/v2/publications/{publicationId}/publications" },
    ["beehiiv.list_subscriptions"] = { method = "GET", url = "https://api.beehiiv.com/v2/publications/{publicationId}/publications/{publicationId}/subscriptions", path = {"publicationId"}, query = {"email", "limit", "cursor"} },
    ["beehiiv.search_support_content"] = { method = "GET", url = "https://api.beehiiv.com/v2/publications/{publicationId}/api/support/search", query = {"q", "type"} },
  },
}
