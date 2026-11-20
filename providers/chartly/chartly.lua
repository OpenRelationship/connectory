-- Chartly — every call this API accepts, as data.
--
-- GENERATED from https://api.chartly.dev/openapi.json
-- Published on the vendor's own documentation site (https://api.chartly.dev).
-- 14 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "chartly",
  name = "Chartly",
  base = "https://api.chartly.dev",
  docs = "https://nango.dev/docs/api-integrations/chartly",
  auth = {
    kind = "key",
    header = "x-api-key",
    format = "{token}",
    env = "CHARTLY_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["chartly.get_auth_oauth_google_callback"] = { method = "GET", url = "https://api.chartly.dev/auth/oauth/google/callback", query = {"code", "state", "error"} },
    ["chartly.get_auth_oauth_google_start"] = { method = "GET", url = "https://api.chartly.dev/auth/oauth/google", query = {"redirect_to"} },
    ["chartly.get_chart_render"] = { method = "GET", url = "https://api.chartly.dev/v1/chart", query = {"chart", "c", "format", "width", "height", "backgroundColor"}, header = {"X-Api-Key"} },
    ["chartly.get_chart_resolve"] = { method = "GET", url = "https://api.chartly.dev/v1/chart/{id}", path = {"id"} },
    ["chartly.get_open_chart_render"] = { method = "GET", url = "https://api.chartly.dev/v1/open/chart", query = {"c", "type", "labels", "data", "w", "h", "format", "bkg"} },
    ["chartly.get_status_endpoint"] = { method = "GET", url = "https://api.chartly.dev/v1/status" },
    ["chartly.post_auth_signup_anon"] = { method = "POST", url = "https://api.chartly.dev/signup/anon" },
    ["chartly.post_chart_create"] = { method = "POST", url = "https://api.chartly.dev/v1/chart/create", header = {"X-Api-Key"}, body = {"chart", "c", "format", "width", "height", "backgroundColor"} },
    ["chartly.post_chart_render_post"] = { method = "POST", url = "https://api.chartly.dev/v1/chart", header = {"X-Api-Key"}, body = {"chart", "c", "format", "width", "height", "backgroundColor"} },
    ["chartly.post_stripe_webhook"] = { method = "POST", url = "https://api.chartly.dev/billing/webhook", header = {"stripe-signature"} },
    ["chartly.post_v1_zapier_bar_chart"] = { method = "POST", url = "https://api.chartly.dev/v1/zapier/bar-chart", header = {"X-Api-Key"}, body = {"title", "labels", "values", "color", "width", "height", "format", "backgroundColor", "showLegend", "showGrid"} },
    ["chartly.post_v1_zapier_line_chart"] = { method = "POST", url = "https://api.chartly.dev/v1/zapier/line-chart", header = {"X-Api-Key"}, body = {"title", "labels", "values", "color", "width", "height", "format", "backgroundColor", "fillArea", "showPoints", "tension", "showLegend", "showGrid"} },
    ["chartly.post_v1_zapier_multi_series_chart"] = { method = "POST", url = "https://api.chartly.dev/v1/zapier/multi-series-chart", header = {"X-Api-Key"}, body = {"title", "labels", "chartType", "series1_name", "series1_values", "series1_color", "series2_name", "series2_values", "series2_color", "series3_name", "series3_values", "series3_color", "width", "height", "format", "backgroundColor", "showLegend", "showGrid"} },
    ["chartly.post_v1_zapier_pie_chart"] = { method = "POST", url = "https://api.chartly.dev/v1/zapier/pie-chart", header = {"X-Api-Key"}, body = {"title", "labels", "values", "colors", "width", "height", "format", "backgroundColor", "showLegend", "legendPosition"} },
  },
}
