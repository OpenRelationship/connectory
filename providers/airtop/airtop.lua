-- Airtop — every call this API accepts, as data.
--
-- GENERATED from https://docs.airtop.ai/openapi.json
-- Published on the vendor's own documentation site (https://docs.airtop.ai).
-- 37 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "airtop",
  name = "Airtop",
  base = "https://api.airtop.ai/api",
  docs = "https://nango.dev/docs/api-integrations/airtop",
  auth = {
    kind = "key",
    header = "authorization",
    format = "Bearer {token}",
    env = "AIRTOP_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["airtop.automations_delete"] = { method = "DELETE", url = "https://api.airtop.ai/api/v1/automations/{automationId}", path = {"automationId"} },
    ["airtop.automations_get"] = { method = "GET", url = "https://api.airtop.ai/api/v1/automations/{automationId}", path = {"automationId"} },
    ["airtop.automations_list"] = { method = "GET", url = "https://api.airtop.ai/api/v1/automations" },
    ["airtop.automations_update"] = { method = "PUT", url = "https://api.airtop.ai/api/v1/automations/description", body = {"description", "id", "orgId"} },
    ["airtop.files_create"] = { method = "POST", url = "https://api.airtop.ai/api/v1/files", body = {"fileName", "fileType", "id", "sessionIds"} },
    ["airtop.files_delete"] = { method = "DELETE", url = "https://api.airtop.ai/api/v1/files/{id}", path = {"id"} },
    ["airtop.files_get"] = { method = "GET", url = "https://api.airtop.ai/api/v1/files/{id}", path = {"id"} },
    ["airtop.files_list"] = { method = "GET", url = "https://api.airtop.ai/api/v1/files", query = {"sessionIds", "offset", "limit"} },
    ["airtop.files_push"] = { method = "POST", url = "https://api.airtop.ai/api/v1/files/{id}/push", path = {"id"}, body = {"sessionIds"} },
    ["airtop.profiles_delete"] = { method = "DELETE", url = "https://api.airtop.ai/api/v1/profiles", query = {"profileIds", "profileNames"} },
    ["airtop.requests_get_request_status"] = { method = "GET", url = "https://api.airtop.ai/api/v1/requests/{requestId}/status", path = {"requestId"} },
    ["airtop.sessions_create"] = { method = "POST", url = "https://api.airtop.ai/api/v1/sessions", body = {"configuration"} },
    ["airtop.sessions_get_info"] = { method = "GET", url = "https://api.airtop.ai/api/v1/sessions/{id}", path = {"id"} },
    ["airtop.sessions_list"] = { method = "GET", url = "https://api.airtop.ai/api/v1/sessions", query = {"sessionIds", "status", "offset", "limit"} },
    ["airtop.sessions_save_profile_on_termination"] = { method = "PUT", url = "https://api.airtop.ai/api/v1/sessions/{sessionId}/save-profile-on-termination/{profileName}", path = {"sessionId", "profileName"} },
    ["airtop.sessions_terminate"] = { method = "DELETE", url = "https://api.airtop.ai/api/v1/sessions/{id}", path = {"id"} },
    ["airtop.windows_async_create_automation"] = { method = "POST", url = "https://api.airtop.ai/api/v1/async/sessions/{sessionId}/windows/{windowId}/create-automation", path = {"sessionId", "windowId"}, body = {"async", "clientRequestId", "configuration", "costThresholdCredits", "timeThresholdSeconds"} },
    ["airtop.windows_async_create_form_filler"] = { method = "POST", url = "https://api.airtop.ai/api/v1/async/sessions/{sessionId}/windows/{windowId}/create-form-filler", path = {"sessionId", "windowId"}, body = {"async", "clientRequestId", "configuration", "costThresholdCredits", "timeThresholdSeconds"} },
    ["airtop.windows_async_execute_automation"] = { method = "POST", url = "https://api.airtop.ai/api/v1/async/sessions/{sessionId}/windows/{windowId}/execute-automation", path = {"sessionId", "windowId"}, body = {"async", "automationId", "clientRequestId", "costThresholdCredits", "parameters", "timeThresholdSeconds"} },
    ["airtop.windows_async_fill_form"] = { method = "POST", url = "https://api.airtop.ai/api/v1/async/sessions/{sessionId}/windows/{windowId}/fill-form", path = {"sessionId", "windowId"}, body = {"async", "automationId", "clientRequestId", "costThresholdCredits", "parameters", "timeThresholdSeconds"} },
    ["airtop.windows_click"] = { method = "POST", url = "https://api.airtop.ai/api/v1/sessions/{sessionId}/windows/{windowId}/click", path = {"sessionId", "windowId"}, body = {"clientRequestId", "configuration", "costThresholdCredits", "elementDescription", "timeThresholdSeconds", "waitForNavigation"} },
    ["airtop.windows_close"] = { method = "DELETE", url = "https://api.airtop.ai/api/v1/sessions/{sessionId}/windows/{windowId}", path = {"sessionId", "windowId"} },
    ["airtop.windows_create"] = { method = "POST", url = "https://api.airtop.ai/api/v1/sessions/{sessionId}/windows", path = {"sessionId"}, body = {"screenResolution", "url", "waitUntil", "waitUntilTimeoutSeconds"} },
    ["airtop.windows_create_form_filler"] = { method = "POST", url = "https://api.airtop.ai/api/v1/sessions/{sessionId}/windows/{windowId}/create-form-filler", path = {"sessionId", "windowId"}, body = {"async", "clientRequestId", "configuration", "costThresholdCredits", "timeThresholdSeconds"} },
    ["airtop.windows_file_input"] = { method = "POST", url = "https://api.airtop.ai/api/v1/sessions/{sessionId}/windows/{windowId}/file-input", path = {"sessionId", "windowId"}, body = {"clientRequestId", "configuration", "costThresholdCredits", "elementDescription", "fileId", "fileName", "includeHiddenElements", "timeThresholdSeconds", "waitForNavigation"} },
    ["airtop.windows_fill_form"] = { method = "POST", url = "https://api.airtop.ai/api/v1/sessions/{sessionId}/windows/{windowId}/fill-form", path = {"sessionId", "windowId"}, body = {"async", "automationId", "clientRequestId", "costThresholdCredits", "parameters", "timeThresholdSeconds"} },
    ["airtop.windows_get_window_info"] = { method = "GET", url = "https://api.airtop.ai/api/v1/sessions/{sessionId}/windows/{windowId}", path = {"sessionId", "windowId"}, query = {"includeNavigationBar", "disableResize", "screenResolution"} },
    ["airtop.windows_hover"] = { method = "POST", url = "https://api.airtop.ai/api/v1/sessions/{sessionId}/windows/{windowId}/hover", path = {"sessionId", "windowId"}, body = {"clientRequestId", "configuration", "costThresholdCredits", "elementDescription", "timeThresholdSeconds"} },
    ["airtop.windows_list"] = { method = "GET", url = "https://api.airtop.ai/api/v1/sessions/{sessionId}/windows", path = {"sessionId"} },
    ["airtop.windows_load_url"] = { method = "POST", url = "https://api.airtop.ai/api/v1/sessions/{sessionId}/windows/{windowId}", path = {"sessionId", "windowId"}, body = {"url", "waitUntil", "waitUntilTimeoutSeconds"} },
    ["airtop.windows_monitor"] = { method = "POST", url = "https://api.airtop.ai/api/v1/sessions/{sessionId}/windows/{windowId}/monitor", path = {"sessionId", "windowId"}, body = {"clientRequestId", "condition", "configuration", "costThresholdCredits", "timeThresholdSeconds"} },
    ["airtop.windows_page_query"] = { method = "POST", url = "https://api.airtop.ai/api/v1/sessions/{sessionId}/windows/{windowId}/page-query", path = {"sessionId", "windowId"}, body = {"clientRequestId", "configuration", "costThresholdCredits", "followPaginationLinks", "prompt", "timeThresholdSeconds"} },
    ["airtop.windows_paginated_extraction"] = { method = "POST", url = "https://api.airtop.ai/api/v1/sessions/{sessionId}/windows/{windowId}/paginated-extraction", path = {"sessionId", "windowId"}, body = {"clientRequestId", "configuration", "costThresholdCredits", "prompt", "timeThresholdSeconds"} },
    ["airtop.windows_scrape_content"] = { method = "POST", url = "https://api.airtop.ai/api/v1/sessions/{sessionId}/windows/{windowId}/scrape-content", path = {"sessionId", "windowId"}, body = {"clientRequestId", "costThresholdCredits", "timeThresholdSeconds"} },
    ["airtop.windows_screenshot"] = { method = "POST", url = "https://api.airtop.ai/api/v1/sessions/{sessionId}/windows/{windowId}/screenshot", path = {"sessionId", "windowId"}, body = {"clientRequestId", "configuration", "costThresholdCredits", "timeThresholdSeconds"} },
    ["airtop.windows_scroll"] = { method = "POST", url = "https://api.airtop.ai/api/v1/sessions/{sessionId}/windows/{windowId}/scroll", path = {"sessionId", "windowId"}, body = {"clientRequestId", "configuration", "costThresholdCredits", "scrollBy", "scrollToEdge", "scrollToElement", "scrollWithin", "timeThresholdSeconds"} },
    ["airtop.windows_type"] = { method = "POST", url = "https://api.airtop.ai/api/v1/sessions/{sessionId}/windows/{windowId}/type", path = {"sessionId", "windowId"}, body = {"clearInputField", "clientRequestId", "configuration", "costThresholdCredits", "elementDescription", "pressEnterKey", "pressTabKey", "text", "timeThresholdSeconds", "waitForNavigation"} },
  },
}
