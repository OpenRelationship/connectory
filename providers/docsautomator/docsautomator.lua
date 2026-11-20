-- DocsAutomator — every call this API accepts, as data.
--
-- GENERATED from https://docs.docsautomator.co/openapi.json
-- Published on the vendor's own documentation site (https://docs.docsautomator.co).
-- 18 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "docsautomator",
  name = "DocsAutomator",
  base = "https://api.docsautomator.co",
  docs = "https://nango.dev/docs/api-integrations/docsautomator",
  auth = {
    kind = "key",
    header = "authorization",
    format = "Bearer {token}",
    env = "DOCSAUTOMATOR_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["docsautomator.cancel_signing_session"] = { method = "POST", url = "https://api.docsautomator.co/esign/sessions/{sessionId}/cancel", path = {"sessionId"}, body = {"reason"} },
    ["docsautomator.create_automation"] = { method = "POST", url = "https://api.docsautomator.co/createAutomation", body = {"title", "dataSourceName", "docTemplateLink"} },
    ["docsautomator.create_document"] = { method = "POST", url = "https://api.docsautomator.co/createDocument", body = {"automationId", "docId", "data", "documentName", "async", "webhookParams", "existingPdfs", "docTemplateLink", "wordTemplateLink", "wordTemplateBase64", "pdfTemplateLink", "pdfTemplateBase64", "recipients"} },
    ["docsautomator.delete_automation"] = { method = "DELETE", url = "https://api.docsautomator.co/deleteAutomation", query = {"docId"} },
    ["docsautomator.duplicate_automation"] = { method = "POST", url = "https://api.docsautomator.co/duplicateAutomation", query = {"automationId"} },
    ["docsautomator.duplicate_template"] = { method = "POST", url = "https://api.docsautomator.co/duplicateGoogleDocTemplate", query = {"automationId", "newTemplateName"} },
    ["docsautomator.get_automation"] = { method = "GET", url = "https://api.docsautomator.co/automation", query = {"automationId", "docId"} },
    ["docsautomator.get_job_status"] = { method = "GET", url = "https://api.docsautomator.co/job/{jobId}", path = {"jobId"} },
    ["docsautomator.get_queue_stats"] = { method = "GET", url = "https://api.docsautomator.co/queue/stats" },
    ["docsautomator.get_signing_audit"] = { method = "GET", url = "https://api.docsautomator.co/esign/sessions/{sessionId}/audit", path = {"sessionId"} },
    ["docsautomator.get_signing_links"] = { method = "GET", url = "https://api.docsautomator.co/esign/sessions/{sessionId}/links", path = {"sessionId"} },
    ["docsautomator.get_signing_session"] = { method = "GET", url = "https://api.docsautomator.co/esign/sessions/{sessionId}", path = {"sessionId"} },
    ["docsautomator.list_automations"] = { method = "GET", url = "https://api.docsautomator.co/automations" },
    ["docsautomator.list_placeholders"] = { method = "GET", url = "https://api.docsautomator.co/listPlaceholdersV2", query = {"automationId", "docId"} },
    ["docsautomator.list_signing_sessions"] = { method = "GET", url = "https://api.docsautomator.co/esign/sessions", query = {"status", "email", "page", "limit"} },
    ["docsautomator.resend_signing_invite"] = { method = "POST", url = "https://api.docsautomator.co/esign/sessions/{sessionId}/resend/{signerIndex}", path = {"sessionId", "signerIndex"} },
    ["docsautomator.send_test_email"] = { method = "POST", url = "https://api.docsautomator.co/sendTestEmail", body = {"automationId", "recipient"} },
    ["docsautomator.update_automation"] = { method = "PUT", url = "https://api.docsautomator.co/updateAutomation", query = {"docId"}, body = {"title", "description", "docTemplateLink", "newDocumentNameField", "attachmentField", "overwriteAttachment", "attachPdfToClickUpTask", "clickUpAttachmentFieldId", "locale", "dateFormat", "formatNumbersWithLocale", "fields", "isActive", "isPreview", "pdfExpiration", "imageOptions", "saveGoogleDoc", "googleDocDestinationFolderUrl", "googleDocUrlField", "pdfUrlField", "saveWordDoc", "saveWordInDriveFolderId", "saveWordSubfolderName", "wordAttachmentField", "overwriteWordAttachment", "options", "esignature", "approval"} },
  },
}
