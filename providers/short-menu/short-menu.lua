-- Short Menu — every call this API accepts, as data.
--
-- GENERATED from https://docs.shortmenu.com/api-reference/openapi.json
-- Published on the vendor's own documentation site (https://docs.shortmenu.com).
-- 3 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "short-menu",
  name = "Short Menu",
  base = "https://api.shortmenu.com",
  docs = "https://nango.dev/docs/api-integrations/short-menu",
  auth = {
    kind = "key",
    header = "x-api-key",
    format = "{token}",
    env = "SHORT_MENU_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["short-menu.create_link"] = { method = "POST", url = "https://api.shortmenu.com/links", body = {"tags", "destinationUrl", "domain", "slug"} },
    ["short-menu.delete_link"] = { method = "DELETE", url = "https://api.shortmenu.com/links/{id}", path = {"id"} },
    ["short-menu.update_link"] = { method = "PUT", url = "https://api.shortmenu.com/links/{id}", path = {"id"}, body = {"destinationUrl", "tags"} },
  },
}
