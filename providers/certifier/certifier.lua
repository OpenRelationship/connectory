-- Certifier — every call this API accepts, as data.
--
-- GENERATED from https://developers.certifier.io/api/openapi.json
-- Published on the vendor's own documentation site (https://developers.certifier.io).
-- 19 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "certifier",
  name = "Certifier",
  base = "https://api.certifier.io",
  docs = "https://nango.dev/docs/api-integrations/certifier",
  auth = {
    kind = "key",
    header = "authorization",
    format = "Bearer {token}",
    env = "CERTIFIER_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["certifier.delete_v1_credentials_id"] = { method = "DELETE", url = "https://api.certifier.io/v1/credentials/{id}", path = {"id"}, header = {"Certifier-Version"} },
    ["certifier.delete_v1_groups_id"] = { method = "DELETE", url = "https://api.certifier.io/v1/groups/{id}", path = {"id"}, header = {"Certifier-Version"} },
    ["certifier.get_v1_credential_interactions"] = { method = "GET", url = "https://api.certifier.io/v1/credential-interactions", query = {"credentialId", "cursor", "limit"}, header = {"Certifier-Version"} },
    ["certifier.get_v1_credentials"] = { method = "GET", url = "https://api.certifier.io/v1/credentials", query = {"cursor", "limit"}, header = {"Certifier-Version"} },
    ["certifier.get_v1_credentials_id"] = { method = "GET", url = "https://api.certifier.io/v1/credentials/{id}", path = {"id"}, header = {"Certifier-Version"} },
    ["certifier.get_v1_credentials_id_designs"] = { method = "GET", url = "https://api.certifier.io/v1/credentials/{id}/designs", path = {"id"}, header = {"Certifier-Version"} },
    ["certifier.get_v1_designs"] = { method = "GET", url = "https://api.certifier.io/v1/designs", query = {"cursor", "limit"}, header = {"Certifier-Version"} },
    ["certifier.get_v1_designs_id"] = { method = "GET", url = "https://api.certifier.io/v1/designs/{id}", path = {"id"}, header = {"Certifier-Version"} },
    ["certifier.get_v1_groups"] = { method = "GET", url = "https://api.certifier.io/v1/groups", query = {"cursor", "limit"}, header = {"Certifier-Version"} },
    ["certifier.get_v1_groups_id"] = { method = "GET", url = "https://api.certifier.io/v1/groups/{id}", path = {"id"}, header = {"Certifier-Version"} },
    ["certifier.patch_v1_credentials_id"] = { method = "PATCH", url = "https://api.certifier.io/v1/credentials/{id}", path = {"id"}, header = {"Certifier-Version"}, body = {"recipient", "issueDate", "expiryDate", "customAttributes"} },
    ["certifier.patch_v1_groups_id"] = { method = "PATCH", url = "https://api.certifier.io/v1/groups/{id}", path = {"id"}, header = {"Certifier-Version"}, body = {"name", "designIds", "learningEventUrl"} },
    ["certifier.post_v1_credential_interactions"] = { method = "POST", url = "https://api.certifier.io/v1/credential-interactions", header = {"Certifier-Version"}, body = {"credentialId", "eventType", "triggeredBy", "triggeredAt"} },
    ["certifier.post_v1_credentials"] = { method = "POST", url = "https://api.certifier.io/v1/credentials", header = {"Certifier-Version"}, body = {"groupId", "recipient", "issueDate", "expiryDate", "customAttributes"} },
    ["certifier.post_v1_credentials_create_issue_send"] = { method = "POST", url = "https://api.certifier.io/v1/credentials/create-issue-send", header = {"Certifier-Version"}, body = {"groupId", "recipient", "issueDate", "expiryDate", "customAttributes"} },
    ["certifier.post_v1_credentials_id_issue"] = { method = "POST", url = "https://api.certifier.io/v1/credentials/{id}/issue", path = {"id"}, header = {"Certifier-Version"} },
    ["certifier.post_v1_credentials_id_send"] = { method = "POST", url = "https://api.certifier.io/v1/credentials/{id}/send", path = {"id"}, header = {"Certifier-Version"}, body = {"deliveryMethod"} },
    ["certifier.post_v1_credentials_search"] = { method = "POST", url = "https://api.certifier.io/v1/credentials/search", header = {"Certifier-Version"}, body = {"filter", "sort", "cursor", "limit"} },
    ["certifier.post_v1_groups"] = { method = "POST", url = "https://api.certifier.io/v1/groups", header = {"Certifier-Version"}, body = {"name", "designIds", "learningEventUrl"} },
  },
}
