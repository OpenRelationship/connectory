-- Mailtrap — every call this API accepts, as data.
--
-- GENERATED from https://raw.githubusercontent.com/mailtrap/mailtrap-openapi/main/specs/sandbox.openapi.yml
-- Published by mailtrap, the vendor's own GitHub organisation.
-- 30 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "mailtrap",
  name = "Mailtrap",
  base = "https://{subdomain}.api.mailtrap.io",
  docs = "https://nango.dev/docs/api-integrations/mailtrap",
  auth = {
    kind = "key",
    header = "api-token",
    format = "{token}",
    env = "MAILTRAP_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = { ["subdomain"] = "MAILTRAP_SUBDOMAIN" },
  headers = {},
  operations = {
    ["mailtrap.clean_sandbox"] = { method = "PATCH", url = "https://{subdomain}.api.mailtrap.io/api/sandboxes/{sandbox_id}/clean", path = {"sandbox_id"} },
    ["mailtrap.create_project"] = { method = "POST", url = "https://{subdomain}.api.mailtrap.io/api/projects", body = {"project"} },
    ["mailtrap.create_sandbox"] = { method = "POST", url = "https://{subdomain}.api.mailtrap.io/api/projects/{project_id}/sandboxes", path = {"project_id"}, body = {"sandbox"} },
    ["mailtrap.delete_project"] = { method = "DELETE", url = "https://{subdomain}.api.mailtrap.io/api/projects/{project_id}", path = {"project_id"} },
    ["mailtrap.delete_sandbox"] = { method = "DELETE", url = "https://{subdomain}.api.mailtrap.io/api/sandboxes/{sandbox_id}", path = {"sandbox_id"} },
    ["mailtrap.delete_sandbox_email_message"] = { method = "DELETE", url = "https://{subdomain}.api.mailtrap.io/api/sandboxes/{sandbox_id}/messages/{message_id}", path = {"sandbox_id", "message_id"} },
    ["mailtrap.enable_sandbox_email_addresses"] = { method = "PATCH", url = "https://{subdomain}.api.mailtrap.io/api/sandboxes/{sandbox_id}/toggle_email_username", path = {"sandbox_id"} },
    ["mailtrap.forward_sandbox_email_message"] = { method = "POST", url = "https://{subdomain}.api.mailtrap.io/api/sandboxes/{sandbox_id}/messages/{message_id}/forward", path = {"sandbox_id", "message_id"}, body = {"email"} },
    ["mailtrap.get_mail_headers_of_email_message"] = { method = "GET", url = "https://{subdomain}.api.mailtrap.io/api/sandboxes/{sandbox_id}/messages/{message_id}/mail_headers", path = {"sandbox_id", "message_id"} },
    ["mailtrap.get_project"] = { method = "GET", url = "https://{subdomain}.api.mailtrap.io/api/projects/{project_id}", path = {"project_id"} },
    ["mailtrap.get_projects"] = { method = "GET", url = "https://{subdomain}.api.mailtrap.io/api/projects" },
    ["mailtrap.get_sandbox_attributes"] = { method = "GET", url = "https://{subdomain}.api.mailtrap.io/api/sandboxes/{sandbox_id}", path = {"sandbox_id"} },
    ["mailtrap.get_sandbox_email_message"] = { method = "GET", url = "https://{subdomain}.api.mailtrap.io/api/sandboxes/{sandbox_id}/messages", path = {"sandbox_id"}, query = {"search", "last_id", "page"} },
    ["mailtrap.get_sandbox_email_message_body_as_eml"] = { method = "GET", url = "https://{subdomain}.api.mailtrap.io/api/sandboxes/{sandbox_id}/messages/{message_id}/body.eml", path = {"sandbox_id", "message_id"} },
    ["mailtrap.get_sandbox_email_message_body_as_html"] = { method = "GET", url = "https://{subdomain}.api.mailtrap.io/api/sandboxes/{sandbox_id}/messages/{message_id}/body.html", path = {"sandbox_id", "message_id"} },
    ["mailtrap.get_sandbox_email_message_body_as_html_source"] = { method = "GET", url = "https://{subdomain}.api.mailtrap.io/api/sandboxes/{sandbox_id}/messages/{message_id}/body.htmlsource", path = {"sandbox_id", "message_id"} },
    ["mailtrap.get_sandbox_email_message_body_as_raw"] = { method = "GET", url = "https://{subdomain}.api.mailtrap.io/api/sandboxes/{sandbox_id}/messages/{message_id}/body.raw", path = {"sandbox_id", "message_id"} },
    ["mailtrap.get_sandbox_email_message_body_as_txt"] = { method = "GET", url = "https://{subdomain}.api.mailtrap.io/api/sandboxes/{sandbox_id}/messages/{message_id}/body.txt", path = {"sandbox_id", "message_id"} },
    ["mailtrap.get_sandbox_email_message_htmlanalysis"] = { method = "GET", url = "https://{subdomain}.api.mailtrap.io/api/sandboxes/{sandbox_id}/messages/{message_id}/analyze", path = {"sandbox_id", "message_id"} },
    ["mailtrap.get_sandbox_email_message_spam_report"] = { method = "GET", url = "https://{subdomain}.api.mailtrap.io/api/sandboxes/{sandbox_id}/messages/{message_id}/spam_report", path = {"sandbox_id", "message_id"} },
    ["mailtrap.get_sandbox_message_attachment"] = { method = "GET", url = "https://{subdomain}.api.mailtrap.io/api/sandboxes/{sandbox_id}/messages/{message_id}/attachments/{attachment_id}", path = {"sandbox_id", "message_id", "attachment_id"} },
    ["mailtrap.get_sandbox_message_attachments"] = { method = "GET", url = "https://{subdomain}.api.mailtrap.io/api/sandboxes/{sandbox_id}/messages/{message_id}/attachments", path = {"sandbox_id", "message_id"}, query = {"attachment_type"} },
    ["mailtrap.get_sandboxes"] = { method = "GET", url = "https://{subdomain}.api.mailtrap.io/api/sandboxes" },
    ["mailtrap.mark_as_read_sandbox"] = { method = "PATCH", url = "https://{subdomain}.api.mailtrap.io/api/sandboxes/{sandbox_id}/all_read", path = {"sandbox_id"} },
    ["mailtrap.reset_email_user_name_per_sandbox"] = { method = "PATCH", url = "https://{subdomain}.api.mailtrap.io/api/sandboxes/{sandbox_id}/reset_email_username", path = {"sandbox_id"} },
    ["mailtrap.reset_sandbox_credentials"] = { method = "PATCH", url = "https://{subdomain}.api.mailtrap.io/api/sandboxes/{sandbox_id}/reset_credentials", path = {"sandbox_id"} },
    ["mailtrap.show_sandbox_email_message"] = { method = "GET", url = "https://{subdomain}.api.mailtrap.io/api/sandboxes/{sandbox_id}/messages/{message_id}", path = {"sandbox_id", "message_id"} },
    ["mailtrap.update_project"] = { method = "PATCH", url = "https://{subdomain}.api.mailtrap.io/api/projects/{project_id}", path = {"project_id"}, body = {"project"} },
    ["mailtrap.update_sandbox"] = { method = "PATCH", url = "https://{subdomain}.api.mailtrap.io/api/sandboxes/{sandbox_id}", path = {"sandbox_id"}, body = {"sandbox"} },
    ["mailtrap.update_sandbox_email_message"] = { method = "PATCH", url = "https://{subdomain}.api.mailtrap.io/api/sandboxes/{sandbox_id}/messages/{message_id}", path = {"sandbox_id", "message_id"}, body = {"message"} },
  },
}
