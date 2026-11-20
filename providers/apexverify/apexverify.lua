-- ApexVerify — every call this API accepts, as data.
--
-- GENERATED from https://api.apexverify.com/openapi.json
-- Published on the vendor's own documentation site (https://api.apexverify.com).
-- 12 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "apexverify",
  name = "ApexVerify",
  base = "https://api.apexverify.com",
  docs = "https://nango.dev/docs/api-integrations/apexverify",
  auth = {
    kind = "key",
    header = "x-api-key",
    format = "{token}",
    env = "APEXVERIFY_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["apexverify.batch_details_v1_batch_batch_uuid_details_get"] = { method = "GET", url = "https://api.apexverify.com/v1/batch/{batch_uuid}/details", path = {"batch_uuid"} },
    ["apexverify.batch_export_v1_batch_batch_uuid_export_get"] = { method = "GET", url = "https://api.apexverify.com/v1/batch/{batch_uuid}/export", path = {"batch_uuid"}, query = {"format", "include_details", "include_statistics"} },
    ["apexverify.batch_list_v1_batch_get"] = { method = "GET", url = "https://api.apexverify.com/v1/batch", query = {"limit", "offset", "from_date", "to_date"} },
    ["apexverify.batch_upload_v1_batch_post"] = { method = "POST", url = "https://api.apexverify.com/v1/batch", body = {"file", "name", "description", "type", "target_country", "target_audience", "target_market_industry", "target_objective", "remove_duplicate", "remove_wrong_email_format", "remove_wrong_phone_format", "use_account_cache", "max_account_cache_backoff", "use_global_cache", "max_global_cache_backoff"} },
    ["apexverify.delete_v1_batch_batch_uuid_delete"] = { method = "DELETE", url = "https://api.apexverify.com/v1/batch/{batch_uuid}", path = {"batch_uuid"} },
    ["apexverify.format_normalization_v1_format_post"] = { method = "POST", url = "https://api.apexverify.com/v1/format", body = {"file", "type", "target_country"} },
    ["apexverify.get_credits_v1_account_credits_get"] = { method = "GET", url = "https://api.apexverify.com/v1/account/credits" },
    ["apexverify.patch_v1_batch_batch_uuid_patch"] = { method = "PATCH", url = "https://api.apexverify.com/v1/batch/{batch_uuid}", path = {"batch_uuid"} },
    ["apexverify.post_v1_batch_batch_uuid_post"] = { method = "POST", url = "https://api.apexverify.com/v1/batch/{batch_uuid}", path = {"batch_uuid"} },
    ["apexverify.post_v1_unit_post"] = { method = "POST", url = "https://api.apexverify.com/v1/unit", body = {"type", "target_country", "target_audience", "target_market_industry", "target_objective", "use_account_cache", "max_account_cache_backoff", "use_global_cache", "max_global_cache_backoff", "unit"} },
    ["apexverify.put_v1_batch_batch_uuid_put"] = { method = "PUT", url = "https://api.apexverify.com/v1/batch/{batch_uuid}", path = {"batch_uuid"}, body = {"type", "target_country", "target_audience", "target_market_industry", "target_objective", "use_account_cache", "max_account_cache_backoff", "use_global_cache", "max_global_cache_backoff", "remove_duplicate", "remove_wrong_email_format", "remove_wrong_phone_format"} },
    ["apexverify.status_v1_batch_batch_uuid_get"] = { method = "GET", url = "https://api.apexverify.com/v1/batch/{batch_uuid}", path = {"batch_uuid"} },
  },
}
