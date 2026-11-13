-- ScrapingAnt — every call this API accepts, as data.
--
-- GENERATED from https://api.scrapingant.com/openapi.json
-- Published on the vendor's own documentation site (https://api.scrapingant.com).
-- 6 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "scrapingant",
  name = "ScrapingAnt",
  base = "https://api.scrapingant.com",
  docs = "https://nango.dev/docs/api-integrations/scrapingant",
  auth = {
    kind = "key",
    header = "x-api-key",
    format = "{token}",
    env = "SCRAPINGANT_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["scrapingant.scrapingant_general_request_v2_general_get"] = { method = "GET", url = "https://api.scrapingant.com/v2/general", query = {"x-api-key", "url", "browser", "return_page_source", "cookies", "js_snippet", "proxy_type", "proxy_country", "wait_for_selector", "block_resource"} },
    ["scrapingant.scrapingant_general_request_v2_general_get"] = { method = "POST", url = "https://api.scrapingant.com/v2/general", query = {"x-api-key", "url", "browser", "return_page_source", "cookies", "js_snippet", "proxy_type", "proxy_country", "wait_for_selector", "block_resource"} },
    ["scrapingant.scrapingant_general_request_v2_general_get"] = { method = "PUT", url = "https://api.scrapingant.com/v2/general", query = {"x-api-key", "url", "browser", "return_page_source", "cookies", "js_snippet", "proxy_type", "proxy_country", "wait_for_selector", "block_resource"} },
    ["scrapingant.scrapingant_general_request_v2_general_get"] = { method = "PATCH", url = "https://api.scrapingant.com/v2/general", query = {"x-api-key", "url", "browser", "return_page_source", "cookies", "js_snippet", "proxy_type", "proxy_country", "wait_for_selector", "block_resource"} },
    ["scrapingant.scrapingant_general_request_v2_general_get"] = { method = "DELETE", url = "https://api.scrapingant.com/v2/general", query = {"x-api-key", "url", "browser", "return_page_source", "cookies", "js_snippet", "proxy_type", "proxy_country", "wait_for_selector", "block_resource"} },
    ["scrapingant.scrapingant_usage_v2_usage_get"] = { method = "GET", url = "https://api.scrapingant.com/v2/usage", query = {"x-api-key"} },
  },
}
