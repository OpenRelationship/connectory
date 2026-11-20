-- Alchemy — every call this API accepts, as data.
--
-- GENERATED from https://alchemy.com/openapi.json
-- Published on the vendor's own documentation site (https://alchemy.com).
-- 15 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "alchemy",
  name = "Alchemy",
  base = "https://api.g.alchemy.com",
  docs = "https://nango.dev/docs/api-integrations/alchemy",
  auth = {
    kind = "key",
    header = "authorization",
    format = "Bearer {token}",
    env = "ALCHEMY_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["alchemy.get_blog_markdown"] = { method = "GET", url = "https://api.g.alchemy.com/blog/{slug}.md", path = {"slug"} },
    ["alchemy.get_case_studies_markdown"] = { method = "GET", url = "https://api.g.alchemy.com/case-studies/{slug}.md", path = {"slug"} },
    ["alchemy.get_client_ip"] = { method = "GET", url = "https://api.g.alchemy.com/api/ip" },
    ["alchemy.get_faucet_transaction_status"] = { method = "GET", url = "https://api.g.alchemy.com/api/faucets/{faucetId}/status", path = {"faucetId"}, query = {"transactionHash"} },
    ["alchemy.get_homepage_markdown"] = { method = "GET", url = "https://api.g.alchemy.com/index.md" },
    ["alchemy.get_llms_full_txt"] = { method = "GET", url = "https://api.g.alchemy.com/llms-full.txt" },
    ["alchemy.get_llms_txt"] = { method = "GET", url = "https://api.g.alchemy.com/llms.txt" },
    ["alchemy.get_open_api_document"] = { method = "GET", url = "https://api.g.alchemy.com/openapi.json" },
    ["alchemy.get_overviews_markdown"] = { method = "GET", url = "https://api.g.alchemy.com/overviews/{slug}.md", path = {"slug"} },
    ["alchemy.get_rpc_markdown"] = { method = "GET", url = "https://api.g.alchemy.com/rpc/{slug}.md", path = {"slug"} },
    ["alchemy.get_site_search_index"] = { method = "GET", url = "https://api.g.alchemy.com/api/search/{locale}", path = {"locale"} },
    ["alchemy.get_sitemap"] = { method = "GET", url = "https://api.g.alchemy.com/sitemap.xml" },
    ["alchemy.get_terms_conditions_markdown"] = { method = "GET", url = "https://api.g.alchemy.com/terms-conditions/{slug}.md", path = {"slug"} },
    ["alchemy.get_unmatched_api_path"] = { method = "GET", url = "https://api.g.alchemy.com/api/{unmatchedPath}", path = {"unmatchedPath"} },
    ["alchemy.send_faucet_funds"] = { method = "POST", url = "https://api.g.alchemy.com/api/faucets/{faucetId}/send", path = {"faucetId"}, body = {"address", "turnstileToken"} },
  },
}
