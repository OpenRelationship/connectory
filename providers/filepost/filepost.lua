-- FilePost — every call this API accepts, as data.
--
-- GENERATED from https://filepost.dev/openapi.json
-- Published on the vendor's own documentation site (https://filepost.dev).
-- 29 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "filepost",
  name = "FilePost",
  base = "https://filepost.dev",
  docs = "https://nango.dev/docs/api-integrations/filepost",
  auth = {
    kind = "key",
    header = "x-api-key",
    format = "{token}",
    env = "FILEPOST_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["filepost.activate_lite_trial_v1_account_lite_trial_post"] = { method = "POST", url = "https://filepost.dev/v1/account/lite-trial", query = {"offer_kind"}, header = {"X-API-Key"} },
    ["filepost.bulk_delete_files_v1_files_bulk_delete_post"] = { method = "POST", url = "https://filepost.dev/v1/files/bulk-delete", header = {"X-API-Key"}, body = {"file_ids"} },
    ["filepost.change_account_email_v1_account_email_post"] = { method = "POST", url = "https://filepost.dev/v1/account/email", header = {"X-API-Key"}, body = {"email"} },
    ["filepost.create_intake_link_v1_intake_links_post"] = { method = "POST", url = "https://filepost.dev/v1/intake-links", header = {"X-API-Key"}, body = {"label", "allowed_types", "max_file_size_mb", "max_files", "expires_in", "webhook_url"} },
    ["filepost.delete_file_v1_files_file_id_delete"] = { method = "DELETE", url = "https://filepost.dev/v1/files/{file_id}", path = {"file_id"}, header = {"X-API-Key"} },
    ["filepost.delete_intake_link_v1_intake_links_intake_id_delete"] = { method = "DELETE", url = "https://filepost.dev/v1/intake-links/{intake_id}", path = {"intake_id"}, header = {"X-API-Key"} },
    ["filepost.delete_webhook_v1_webhook_delete"] = { method = "DELETE", url = "https://filepost.dev/v1/webhook", header = {"X-API-Key"} },
    ["filepost.get_account_v1_account_get"] = { method = "GET", url = "https://filepost.dev/v1/account", header = {"X-API-Key"} },
    ["filepost.get_file_v1_files_file_id_get"] = { method = "GET", url = "https://filepost.dev/v1/files/{file_id}", path = {"file_id"}, header = {"X-API-Key"} },
    ["filepost.get_intake_link_v1_intake_links_intake_id_get"] = { method = "GET", url = "https://filepost.dev/v1/intake-links/{intake_id}", path = {"intake_id"}, header = {"X-API-Key"} },
    ["filepost.get_webhook_v1_webhook_get"] = { method = "GET", url = "https://filepost.dev/v1/webhook", header = {"X-API-Key"} },
    ["filepost.google_auth_auth_google_post"] = { method = "POST", url = "https://filepost.dev/auth/google", body = {"credential", "marketing_consent", "utm_source", "utm_medium", "utm_campaign", "utm_content", "landing_path", "referrer", "intended_workflow"} },
    ["filepost.intake_upload_v1_intake_token_upload_post"] = { method = "POST", url = "https://filepost.dev/v1/intake/{token}/upload", body = {"file"} },
    ["filepost.join_waitlist_v1_waitlist_post"] = { method = "POST", url = "https://filepost.dev/v1/waitlist", body = {"email", "feature"} },
    ["filepost.list_files_v1_files_get"] = { method = "GET", url = "https://filepost.dev/v1/files", query = {"page", "per_page"}, header = {"X-API-Key"} },
    ["filepost.list_intake_links_v1_intake_links_get"] = { method = "GET", url = "https://filepost.dev/v1/intake-links", header = {"X-API-Key"} },
    ["filepost.resend_account_verification_v1_account_verification_post"] = { method = "POST", url = "https://filepost.dev/v1/account/verification", header = {"X-API-Key"} },
    ["filepost.rotate_key_v1_rotate_key_post"] = { method = "POST", url = "https://filepost.dev/v1/rotate-key", header = {"X-API-Key"} },
    ["filepost.set_webhook_v1_webhook_put"] = { method = "PUT", url = "https://filepost.dev/v1/webhook", header = {"X-API-Key"}, body = {"webhook_url"} },
    ["filepost.signup_v1_signup_post"] = { method = "POST", url = "https://filepost.dev/v1/signup" },
    ["filepost.submit_upgrade_feedback_v1_upgrade_feedback_post"] = { method = "POST", url = "https://filepost.dev/v1/upgrade-feedback", header = {"X-API-Key"}, body = {"category", "message", "offer_kind", "lite_plan_interest"} },
    ["filepost.test_webhook_v1_webhook_test_post"] = { method = "POST", url = "https://filepost.dev/v1/webhook/test", header = {"X-API-Key"} },
    ["filepost.try_upload_v1_try_upload_post"] = { method = "POST", url = "https://filepost.dev/v1/try-upload", body = {"file", "email", "consent", "marketing_consent", "surface", "utm_source", "utm_medium", "utm_campaign", "utm_content", "landing_path", "referrer"} },
    ["filepost.update_email_preferences_v1_email_preferences_post"] = { method = "POST", url = "https://filepost.dev/v1/email-preferences", header = {"X-API-Key"}, body = {"opt_out", "marketing_consent"} },
    ["filepost.update_file_v1_files_file_id_patch"] = { method = "PATCH", url = "https://filepost.dev/v1/files/{file_id}", path = {"file_id"}, header = {"X-API-Key"}, body = {"filename_mode"} },
    ["filepost.update_filename_mode_v1_account_filename_mode_post"] = { method = "POST", url = "https://filepost.dev/v1/account/filename-mode", header = {"X-API-Key"}, body = {"filename_mode"} },
    ["filepost.upload_file_base64_v1_upload_base64_post"] = { method = "POST", url = "https://filepost.dev/v1/upload/base64", header = {"X-API-Key"}, body = {"filename", "content_type", "data_base64", "file_base64", "data", "expires_in", "filename_mode"} },
    ["filepost.upload_file_from_url_v1_upload_url_post"] = { method = "POST", url = "https://filepost.dev/v1/upload/url", header = {"X-API-Key"}, body = {"url", "filename", "content_type", "expires_in", "filename_mode"} },
    ["filepost.upload_file_v1_upload_post"] = { method = "POST", url = "https://filepost.dev/v1/upload", header = {"X-API-Key"}, body = {"file", "expires_in", "filename_mode"} },
  },
}
