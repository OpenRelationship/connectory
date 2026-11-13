-- Anymail Finder — every call this API accepts, as data.
--
-- GENERATED from https://api.anymailfinder.com/openapi.json
-- Published on the vendor's own documentation site (https://api.anymailfinder.com).
-- 15 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "anymailfinder",
  name = "Anymail Finder",
  base = "https://api.anymailfinder.com",
  docs = "https://nango.dev/docs/api-integrations/anymailfinder",
  auth = {
    kind = "key",
    header = "authorization",
    format = "{token}",
    env = "ANYMAILFINDER_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["anymailfinder.account"] = { method = "GET", url = "https://api.anymailfinder.com/v5.1/account" },
    ["anymailfinder.bad_email"] = { method = "POST", url = "https://api.anymailfinder.com/v5.1/report/bad-email", body = {"additional_info", "bounce_message", "email"} },
    ["anymailfinder.company"] = { method = "POST", url = "https://api.anymailfinder.com/v5.1/find-email/company", header = {"x-webhook-url"}, body = {"company_name", "domain", "email_type"} },
    ["anymailfinder.create_with_json"] = { method = "POST", url = "https://api.anymailfinder.com/v5.1/bulk/json", header = {"x-webhook-url"}, body = {"company_name_field_index", "data", "decision_maker_category", "domain_field_index", "email_field_index", "file_name", "first_name_field_index", "full_name_field_index", "has_header", "last_name_field_index", "linkedin_url_field_index", "webhook_url"} },
    ["anymailfinder.create_with_multipart"] = { method = "POST", url = "https://api.anymailfinder.com/v5.1/bulk/multipart", header = {"x-webhook-url"}, body = {"file", "company_name_field_index", "domain_field_index", "email_field_index", "file_name", "has_header", "first_name_field_index", "full_name_field_index", "decision_maker_category", "last_name_field_index", "linkedin_url_field_index", "webhook_url"} },
    ["anymailfinder.decision_maker"] = { method = "POST", url = "https://api.anymailfinder.com/v5.1/find-email/decision-maker", header = {"x-webhook-url"}, body = {"company_name", "decision_maker_category", "domain"} },
    ["anymailfinder.download"] = { method = "GET", url = "https://api.anymailfinder.com/v5.1/bulk/{searchId}/download", path = {"searchId"}, query = {"preview_only", "partially_verified", "not_found", "fully_verified", "format", "file_name_column_name", "download_as"} },
    ["anymailfinder.download"] = { method = "GET", url = "https://api.anymailfinder.com/v5.1/geo-lead/{searchId}/download", path = {"searchId"}, query = {"preview_only", "partially_verified", "not_found", "fully_verified", "file_name_column_name", "download_as"} },
    ["anymailfinder.get"] = { method = "GET", url = "https://api.anymailfinder.com/v5.1/bulk/{searchId}", path = {"searchId"} },
    ["anymailfinder.get"] = { method = "GET", url = "https://api.anymailfinder.com/v5.1/geo-lead/{searchId}", path = {"searchId"} },
    ["anymailfinder.linkedin_url"] = { method = "POST", url = "https://api.anymailfinder.com/v5.1/find-email/linkedin-url", header = {"x-webhook-url"}, body = {"linkedin_url"} },
    ["anymailfinder.lookup"] = { method = "POST", url = "https://api.anymailfinder.com/v5.1/reverse-email-lookup", header = {"x-webhook-url"}, body = {"email"} },
    ["anymailfinder.person"] = { method = "POST", url = "https://api.anymailfinder.com/v5.1/find-email/person", header = {"x-webhook-url"}, body = {"company_name", "domain", "first_name", "full_name", "last_name", "linkedin_url"} },
    ["anymailfinder.search_bulk_geo_lead_create"] = { method = "POST", url = "https://api.anymailfinder.com/v5.1/geo-lead", header = {"x-webhook-url"}, body = {"file_name", "find_company_emails", "find_decision_maker_categories", "latitude", "longitude", "query", "radius_km", "result_limit"} },
    ["anymailfinder.validate"] = { method = "POST", url = "https://api.anymailfinder.com/v5.1/verify-email", header = {"x-webhook-url"}, body = {"email"} },
  },
}
