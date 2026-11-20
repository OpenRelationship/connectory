-- API2PDF — every call this API accepts, as data.
--
-- GENERATED from https://api.apis.guru/v2/specs/api2pdf.com/1.0.0/openapi.json
-- APIs.guru's mirror of api2pdf.com, matched on api2pdf.com. A mirror lags the vendor.
-- 9 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "api2pdf",
  name = "API2PDF",
  base = "https://v2.api2pdf.com",
  docs = "https://nango.dev/docs/api-integrations/api2pdf",
  auth = {
    kind = "key",
    header = "authorization",
    format = "{token}",
    env = "API2PDF_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["api2pdf.chrome_from_html_post"] = { method = "POST", url = "https://v2.api2pdf.com/chrome/html", body = {"fileName", "html", "inlinePdf", "options"} },
    ["api2pdf.chrome_from_url_get"] = { method = "GET", url = "https://v2.api2pdf.com/chrome/url", query = {"url", "output"} },
    ["api2pdf.chrome_from_url_post"] = { method = "POST", url = "https://v2.api2pdf.com/chrome/url", body = {"fileName", "inlinePdf", "options", "url"} },
    ["api2pdf.libre_convert_post"] = { method = "POST", url = "https://v2.api2pdf.com/libreoffice/convert", body = {"fileName", "inlinePdf", "url"} },
    ["api2pdf.merge_post"] = { method = "POST", url = "https://v2.api2pdf.com/merge", body = {"fileName", "inlinePdf", "urls"} },
    ["api2pdf.wkhtmltopdf_from_html_post"] = { method = "POST", url = "https://v2.api2pdf.com/wkhtmltopdf/html", body = {"fileName", "html", "inlinePdf", "options"} },
    ["api2pdf.wkhtmltopdf_from_url_get"] = { method = "GET", url = "https://v2.api2pdf.com/wkhtmltopdf/url", query = {"url", "output"} },
    ["api2pdf.wkhtmltopdf_from_url_post"] = { method = "POST", url = "https://v2.api2pdf.com/wkhtmltopdf/url", body = {"fileName", "inlinePdf", "options", "url"} },
    ["api2pdf.zebra_get"] = { method = "GET", url = "https://v2.api2pdf.com/zebra", query = {"format", "value", "showlabel", "height", "width"} },
  },
}
