-- Checkvist — every call this API accepts, as data.
--
-- GENERATED from https://checkvist.com/openapi.yaml
-- Published on the vendor's own documentation site (https://checkvist.com).
-- 21 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "checkvist",
  name = "Checkvist",
  base = "https://checkvist.com",
  docs = "https://nango.dev/docs/api-integrations/checkvist",
  auth = {
    kind = "basic",
    header = "authorization",
    format = "Bearer {token}",
    env = nil,
    user_env = "CHECKVIST_USER",
    pass_env = "CHECKVIST_PASS",
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["checkvist.delete_checklists_checklist_id_format"] = { method = "DELETE", url = "https://checkvist.com/checklists/{checklist_id}.{format}", path = {"checklist_id", "format"} },
    ["checkvist.delete_checklists_checklist_id_tasks_task_id_comments_note_id_format"] = { method = "DELETE", url = "https://checkvist.com/checklists/{checklist_id}/tasks/{task_id}/comments/{note_id}.{format}", path = {"checklist_id", "task_id", "note_id", "format"} },
    ["checkvist.delete_checklists_checklist_id_tasks_task_id_format"] = { method = "DELETE", url = "https://checkvist.com/checklists/{checklist_id}/tasks/{task_id}.{format}", path = {"checklist_id", "task_id", "format"} },
    ["checkvist.get_auth_curr_user_format"] = { method = "GET", url = "https://checkvist.com/auth/curr_user.{format}", path = {"format"} },
    ["checkvist.get_checklists_checklist_id_format"] = { method = "GET", url = "https://checkvist.com/checklists/{checklist_id}.{format}", path = {"checklist_id", "format"}, query = {"with_inbound_email", "export_id", "export_notes", "export_status", "export_color", "max_heading"} },
    ["checkvist.get_checklists_checklist_id_tasks_format"] = { method = "GET", url = "https://checkvist.com/checklists/{checklist_id}/tasks.{format}", path = {"checklist_id", "format"}, query = {"with_notes", "order"} },
    ["checkvist.get_checklists_checklist_id_tasks_task_id_comments_format"] = { method = "GET", url = "https://checkvist.com/checklists/{checklist_id}/tasks/{task_id}/comments.{format}", path = {"checklist_id", "task_id", "format"} },
    ["checkvist.get_checklists_checklist_id_tasks_task_id_format"] = { method = "GET", url = "https://checkvist.com/checklists/{checklist_id}/tasks/{task_id}.{format}", path = {"checklist_id", "task_id", "format"}, query = {"with_notes"} },
    ["checkvist.get_checklists_format"] = { method = "GET", url = "https://checkvist.com/checklists.{format}", path = {"format"}, query = {"archived", "order", "skip_stats", "with_inbound_email"} },
    ["checkvist.post_auth_login_json"] = { method = "POST", url = "https://checkvist.com/auth/login.json", body = {"username", "remote_key", "token2fa", "version"} },
    ["checkvist.post_auth_refresh_token_json"] = { method = "POST", url = "https://checkvist.com/auth/refresh_token.json", body = {"old_token", "version"} },
    ["checkvist.post_checklists_checklist_id_import_format"] = { method = "POST", url = "https://checkvist.com/checklists/{checklist_id}/import.{format}", path = {"checklist_id", "format"}, body = {"import_content", "import_content_note", "parent_id", "parse_tasks", "position", "replace_existing", "separate_with_empty_line", "status"} },
    ["checkvist.post_checklists_checklist_id_tasks_format"] = { method = "POST", url = "https://checkvist.com/checklists/{checklist_id}/tasks.{format}", path = {"checklist_id", "format"}, body = {"task[content]", "task[parent_id]", "task[tags]", "task[due_date]", "task[position]", "task[priority]", "task[status]"} },
    ["checkvist.post_checklists_checklist_id_tasks_task_id_action_format"] = { method = "POST", url = "https://checkvist.com/checklists/{checklist_id}/tasks/{task_id}/{action}.{format}", path = {"checklist_id", "task_id", "action", "format"} },
    ["checkvist.post_checklists_checklist_id_tasks_task_id_comments_format"] = { method = "POST", url = "https://checkvist.com/checklists/{checklist_id}/tasks/{task_id}/comments.{format}", path = {"checklist_id", "task_id", "format"}, body = {"comment[comment]"} },
    ["checkvist.post_checklists_checklist_id_tasks_task_id_repeat_format"] = { method = "POST", url = "https://checkvist.com/checklists/{checklist_id}/tasks/{task_id}/repeat.{format}", path = {"checklist_id", "task_id", "format"}, body = {"repeat[period]", "repeat[period_count]", "repeat[start_date]", "repeat[end_date]"} },
    ["checkvist.post_checklists_checklist_id_tasks_task_id_tags_format"] = { method = "POST", url = "https://checkvist.com/checklists/{checklist_id}/tasks/{task_id}/tags.{format}", path = {"checklist_id", "task_id", "format"}, body = {"delete_tag", "tags", "task_ids"} },
    ["checkvist.post_checklists_format"] = { method = "POST", url = "https://checkvist.com/checklists.{format}", path = {"format"}, body = {"checklist[name]", "checklist[public]", "checklist[tags]"} },
    ["checkvist.put_checklists_checklist_id_format"] = { method = "PUT", url = "https://checkvist.com/checklists/{checklist_id}.{format}", path = {"checklist_id", "format"}, body = {"checklist[name]", "checklist[public]", "checklist[tags]"} },
    ["checkvist.put_checklists_checklist_id_tasks_task_id_comments_note_id_format"] = { method = "PUT", url = "https://checkvist.com/checklists/{checklist_id}/tasks/{task_id}/comments/{note_id}.{format}", path = {"checklist_id", "task_id", "note_id", "format"}, body = {"comment[comment]"} },
    ["checkvist.put_checklists_checklist_id_tasks_task_id_format"] = { method = "PUT", url = "https://checkvist.com/checklists/{checklist_id}/tasks/{task_id}.{format}", path = {"checklist_id", "task_id", "format"}, query = {"with_notes"}, body = {"task[content]", "task[parent_id]", "task[tags]", "task[due_date]", "task[position]", "task[priority]", "task[assignee_ids]", "parse"} },
  },
}
