-- Logo.dev — every call this API accepts, as data.
--
-- GENERATED from https://docs.logo.dev/openapi.json
-- Published on the vendor's own documentation site (https://docs.logo.dev).
-- 25 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "logo",
  name = "Logo.dev",
  base = "https://api.logo.dev",
  docs = "https://nango.dev/docs/api-integrations/logo-dev",
  auth = {
    kind = "key",
    header = "authorization",
    format = "Bearer {token}",
    env = "LOGO_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["logo.get_logo"] = { method = "GET", url = "https://api.logo.dev/{domain}", path = {"domain"}, query = {"size", "height", "width", "format", "theme", "greyscale", "retina", "fallback", "redirect"} },
    ["logo.get_logo_by_crypto"] = { method = "GET", url = "https://api.logo.dev/crypto/{symbol}", path = {"symbol"}, query = {"size", "height", "width", "format", "theme", "greyscale", "retina", "fallback", "redirect"} },
    ["logo.get_logo_by_exchange"] = { method = "GET", url = "https://api.logo.dev/exchange/{exchange}", path = {"exchange"}, query = {"size", "height", "width", "format", "theme", "greyscale", "retina", "fallback", "redirect"} },
    ["logo.get_logo_by_index"] = { method = "GET", url = "https://api.logo.dev/index/{symbol}", path = {"symbol"}, query = {"size", "height", "width", "format", "theme", "greyscale", "retina", "fallback", "redirect"} },
    ["logo.get_logo_by_isin"] = { method = "GET", url = "https://api.logo.dev/isin/{isin}", path = {"isin"}, query = {"size", "height", "width", "format", "theme", "greyscale", "retina", "fallback", "redirect"} },
    ["logo.get_logo_by_name"] = { method = "GET", url = "https://api.logo.dev/name/{brand}", path = {"brand"}, query = {"strategy", "size", "height", "width", "format", "theme", "greyscale", "retina", "fallback", "redirect"} },
    ["logo.get_logo_by_ticker"] = { method = "GET", url = "https://api.logo.dev/ticker/{ticker}", path = {"ticker"}, query = {"size", "height", "width", "format", "theme", "greyscale", "retina", "fallback", "redirect"} },
    ["logo.identify_merchant"] = { method = "POST", url = "https://api.logo.dev/transaction", body = {"transaction", "country_code", "transaction_context"} },
    ["logo.v2_create_webhook_endpoint"] = { method = "POST", url = "https://api.logo.dev/v2/webhook_endpoints", body = {"url", "description", "filter_types", "disabled"} },
    ["logo.v2_delete_webhook_endpoint"] = { method = "DELETE", url = "https://api.logo.dev/v2/webhook_endpoints/{id}", path = {"id"} },
    ["logo.v2_flag"] = { method = "POST", url = "https://api.logo.dev/v2/flag", body = {"domains", "reason", "comment"} },
    ["logo.v2_get_account"] = { method = "GET", url = "https://api.logo.dev/v2/account" },
    ["logo.v2_get_brand"] = { method = "GET", url = "https://api.logo.dev/v2/brands", query = {"domain", "ticker", "isin", "crypto", "name", "nosubscribe", "merchant"} },
    ["logo.v2_get_brand_brandmark"] = { method = "GET", url = "https://api.logo.dev/v2/brands/brandmark", query = {"domain", "ticker", "isin", "crypto", "name", "merchant"} },
    ["logo.v2_get_brand_by_id"] = { method = "GET", url = "https://api.logo.dev/v2/brands/{id}", path = {"id"}, query = {"nosubscribe"} },
    ["logo.v2_get_brand_logo"] = { method = "GET", url = "https://api.logo.dev/v2/brands/logo", query = {"domain", "ticker", "isin", "crypto", "name", "merchant"} },
    ["logo.v2_get_brand_subscription"] = { method = "GET", url = "https://api.logo.dev/v2/brands/{id}/subscription", path = {"id"} },
    ["logo.v2_get_webhook_endpoint"] = { method = "GET", url = "https://api.logo.dev/v2/webhook_endpoints/{id}", path = {"id"} },
    ["logo.v2_get_webhook_endpoint_secret"] = { method = "GET", url = "https://api.logo.dev/v2/webhook_endpoints/{id}/secret", path = {"id"} },
    ["logo.v2_list_webhook_endpoints"] = { method = "GET", url = "https://api.logo.dev/v2/webhook_endpoints" },
    ["logo.v2_rotate_webhook_endpoint_secret"] = { method = "POST", url = "https://api.logo.dev/v2/webhook_endpoints/{id}/secret", path = {"id"} },
    ["logo.v2_search_brands"] = { method = "GET", url = "https://api.logo.dev/v2/search", query = {"q", "method", "limit"} },
    ["logo.v2_subscribe_to_brand"] = { method = "PUT", url = "https://api.logo.dev/v2/brands/{id}/subscription", path = {"id"} },
    ["logo.v2_unsubscribe_from_brand"] = { method = "DELETE", url = "https://api.logo.dev/v2/brands/{id}/subscription", path = {"id"} },
    ["logo.v2_update_webhook_endpoint"] = { method = "PATCH", url = "https://api.logo.dev/v2/webhook_endpoints/{id}", path = {"id"}, body = {"url", "description", "filter_types", "disabled"} },
  },
}
