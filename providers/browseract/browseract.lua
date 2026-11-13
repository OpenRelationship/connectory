-- BrowserAct — every call this API accepts, as data.
--
-- GENERATED from https://docs.browseract.com/openapi.json
-- Published on the vendor's own documentation site (https://docs.browseract.com).
-- 12 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "browseract",
  name = "BrowserAct",
  base = "https://api.browseract.com",
  docs = "https://nango.dev/docs/api-integrations/browseract",
  auth = {
    kind = "key",
    header = "authorization",
    format = "Bearer {token}",
    env = "BROWSERACT_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["browseract.get_region_list"] = { method = "GET", url = "https://api.browseract.com/v2/workflow/get-region-list" },
    ["browseract.get_task"] = { method = "GET", url = "https://api.browseract.com/v2/workflow/get-task", query = {"task_id"} },
    ["browseract.get_task_status"] = { method = "GET", url = "https://api.browseract.com/v2/workflow/get-task-status", query = {"task_id"} },
    ["browseract.get_workflow_config"] = { method = "GET", url = "https://api.browseract.com/v2/workflow/get-workflow", query = {"workflow_id"} },
    ["browseract.get_workflow_list"] = { method = "GET", url = "https://api.browseract.com/v2/workflow/list-workflows", query = {"page", "limit"} },
    ["browseract.get_workflow_template_config"] = { method = "GET", url = "https://api.browseract.com/v2/workflow/get-official-workflow-template", query = {"workflow_template_id"} },
    ["browseract.get_workflow_templates"] = { method = "GET", url = "https://api.browseract.com/v2/workflow/list-official-workflow-templates", query = {"keyword", "page", "limit"} },
    ["browseract.page_tasks"] = { method = "GET", url = "https://api.browseract.com/v2/workflow/list-tasks", query = {"status", "page", "limit", "workflow_id"} },
    ["browseract.resume_task"] = { method = "PUT", url = "https://api.browseract.com/v2/workflow/resume-task", query = {"task_id"} },
    ["browseract.run_task"] = { method = "POST", url = "https://api.browseract.com/v2/workflow/run-task", body = {"workflow_id", "input_parameters", "save_browser_data", "profile_id", "open_incognito_mode", "callback_url", "status_change_callback_url"} },
    ["browseract.run_template_task"] = { method = "POST", url = "https://api.browseract.com/v2/workflow/run-task-by-template", body = {"proxyRegion", "workflow_template_id", "input_parameters", "callback_url", "status_change_callback_url"} },
    ["browseract.stop_task"] = { method = "PUT", url = "https://api.browseract.com/v2/workflow/stop-task", query = {"task_id", "biz_code"} },
  },
}
