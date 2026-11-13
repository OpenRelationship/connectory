-- Brandfetch — every call this API accepts, as data.
--
-- GENERATED from https://docs.brandfetch.io/openapi.json
-- Published on the vendor's own documentation site (https://docs.brandfetch.io).
-- 12 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "brandfetch",
  name = "Brandfetch",
  base = "https://api.brandfetch.io",
  docs = "https://nango.dev/docs/api-integrations/brandfetch",
  auth = {
    kind = "key",
    header = "authorization",
    format = "Bearer {token}",
    env = "BRANDFETCH_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["brandfetch.get_agent_access_offer"] = { method = "GET", url = "https://api.brandfetch.io/v2/agents/access" },
    ["brandfetch.get_brand_batch"] = { method = "POST", url = "https://api.brandfetch.io/v2/brands/batch", body = {"identifiers", "cachedOnly", "allowNsfw", "palette"} },
    ["brandfetch.get_brand_context"] = { method = "GET", url = "https://api.brandfetch.io/v2/context/{domain}", path = {"domain"}, query = {"cachedOnly"} },
    ["brandfetch.get_brand_data"] = { method = "GET", url = "https://api.brandfetch.io/v2/brands/{identifier}", path = {"identifier"}, query = {"allowNsfw", "cachedOnly", "palette"} },
    ["brandfetch.get_brand_data_by_crypto"] = { method = "GET", url = "https://api.brandfetch.io/v2/brands/crypto/{symbol}", path = {"symbol"}, query = {"allowNsfw", "cachedOnly", "palette"} },
    ["brandfetch.get_brand_data_by_domain"] = { method = "GET", url = "https://api.brandfetch.io/v2/brands/domain/{domain}", path = {"domain"}, query = {"allowNsfw", "cachedOnly", "palette"} },
    ["brandfetch.get_brand_data_by_isin"] = { method = "GET", url = "https://api.brandfetch.io/v2/brands/isin/{isin}", path = {"isin"}, query = {"allowNsfw", "cachedOnly", "palette"} },
    ["brandfetch.get_brand_data_by_ticker"] = { method = "GET", url = "https://api.brandfetch.io/v2/brands/ticker/{ticker}", path = {"ticker"}, query = {"allowNsfw", "cachedOnly", "palette"} },
    ["brandfetch.get_brand_from_transaction"] = { method = "POST", url = "https://api.brandfetch.io/v2/brands/transaction", body = {"transactionLabel", "countryCode"} },
    ["brandfetch.get_viewer"] = { method = "GET", url = "https://api.brandfetch.io/v2/viewer" },
    ["brandfetch.purchase_agent_access"] = { method = "POST", url = "https://api.brandfetch.io/v2/agents/access", query = {"usd", "rotateKey"} },
    ["brandfetch.search_brands"] = { method = "GET", url = "https://api.brandfetch.io/v2/search/{name}?c={clientId}", path = {"name"}, query = {"c"} },
  },
}
