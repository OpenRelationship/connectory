-- Parseur — every call this API accepts, as data.
--
-- GENERATED from https://api.parseur.com/openapi.json
-- Published on the vendor's own documentation site (https://api.parseur.com).
-- 29 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "parseur",
  name = "Parseur",
  base = "https://api.parseur.com",
  docs = "https://nango.dev/docs/api-integrations/parseur",
  auth = {
    kind = "key",
    header = "authorization",
    format = "{token}",
    env = "PARSEUR_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["parseur.delete_document_id"] = { method = "DELETE", url = "https://api.parseur.com/document/{id}", path = {"id"} },
    ["parseur.delete_parser_id"] = { method = "DELETE", url = "https://api.parseur.com/parser/{id}", path = {"id"} },
    ["parseur.delete_parser_mailbox_id_export_config_id"] = { method = "DELETE", url = "https://api.parseur.com/parser/{mailbox_id}/export_config/{id}", path = {"mailbox_id", "id"} },
    ["parseur.delete_parser_mailbox_id_webhook_set_id"] = { method = "DELETE", url = "https://api.parseur.com/parser/{mailbox_id}/webhook_set/{id}", path = {"mailbox_id", "id"} },
    ["parseur.delete_template_id"] = { method = "DELETE", url = "https://api.parseur.com/template/{id}", path = {"id"} },
    ["parseur.delete_webhook_id"] = { method = "DELETE", url = "https://api.parseur.com/webhook/{id}", path = {"id"} },
    ["parseur.get_bootstrap"] = { method = "GET", url = "https://api.parseur.com/bootstrap" },
    ["parseur.get_document_id"] = { method = "GET", url = "https://api.parseur.com/document/{id}", path = {"id"} },
    ["parseur.get_document_id_log_set"] = { method = "GET", url = "https://api.parseur.com/document/{id}/log_set", path = {"id"}, query = {"page", "page_size", "search", "ordering"} },
    ["parseur.get_parser"] = { method = "GET", url = "https://api.parseur.com/parser", query = {"page", "page_size", "search", "ordering"} },
    ["parseur.get_parser_id"] = { method = "GET", url = "https://api.parseur.com/parser/{id}", path = {"id"} },
    ["parseur.get_parser_id_document_set"] = { method = "GET", url = "https://api.parseur.com/parser/{id}/document_set", path = {"id"}, query = {"page", "page_size", "search", "ordering", "received_after", "received_before", "status", "tz", "with_result"} },
    ["parseur.get_parser_id_export_config"] = { method = "GET", url = "https://api.parseur.com/parser/{id}/export_config", path = {"id"} },
    ["parseur.get_parser_id_schema"] = { method = "GET", url = "https://api.parseur.com/parser/{id}/schema", path = {"id"} },
    ["parseur.get_parser_id_template_set"] = { method = "GET", url = "https://api.parseur.com/parser/{id}/template_set", path = {"id"}, body = {"account_uuid", "ai_engine", "ai_instructions", "allowed_extensions", "attachments_only", "attachments_only_override", "can_transform", "disable_deskew", "enable_layouted_text", "document_count", "document_per_status_count", "email_prefix", "even_pages", "force_ocr", "id", "is_master", "last_activity", "master_parser_name", "master_parser_slug", "name", "odd_pages", "page_range_set", "parser_object_count", "parser_object_set_last_modified", "process_attachments", "retention_policy", "split_keywords", "split_page", "split_page_range_set", "template_count", "webhook_count", "attachments_field", "original_document_field", "searchable_pdf_field", "headers_field", "received_field", "received_date_field", "received_time_field", "processed_field", "processed_date_field", "processed_time_field", "sender_field", "sender_name_field", "split_page_range_field", "recipient_field", "to_field", "cc_field", "bcc_field", "reply_to_field", "recipient_suffix_field", "original_recipient_field", "subject_field", "template_field", "html_document_field", "text_document_field", "content_field", "last_reply_field", "document_id_field", "parent_id_field", "document_url_field", "public_document_url_field", "page_count_field", "credit_count_field", "mailbox_id_field", "parsing_engine_field", "csv_download", "decimal_separator", "default_timezone", "disable_document_links", "expand_result", "extract_xml_from_comment", "input_date_format", "identification_status", "is_transform_enabled", "json_download", "parser_object_set", "pdf_conversion_format", "transform", "use_whitelist_instead_of_blacklist", "template_set_last_modified", "webhook_set", "xls_download", "available_webhook_set", "table_set", "emails_or_domains"} },
    ["parseur.get_template_id"] = { method = "GET", url = "https://api.parseur.com/template/{id}", path = {"id"} },
    ["parseur.patch_parser_mailbox_id_export_config_id"] = { method = "PATCH", url = "https://api.parseur.com/parser/{mailbox_id}/export_config/{id}", path = {"mailbox_id", "id"}, body = {"id", "name", "type", "parser_field_id", "parser_field_name", "items", "csv_download", "xls_download"} },
    ["parseur.post_document_id_copy_target_mailbox_id"] = { method = "POST", url = "https://api.parseur.com/document/{id}/copy/{target_mailbox_id}", path = {"id", "target_mailbox_id"} },
    ["parseur.post_document_id_process"] = { method = "POST", url = "https://api.parseur.com/document/{id}/process", path = {"id"} },
    ["parseur.post_document_id_skip"] = { method = "POST", url = "https://api.parseur.com/document/{id}/skip", path = {"id"} },
    ["parseur.post_email"] = { method = "POST", url = "https://api.parseur.com/email", body = {"subject", "from", "recipient", "to", "cc", "bcc", "body_html", "body_plain", "message_headers"} },
    ["parseur.post_parser"] = { method = "POST", url = "https://api.parseur.com/parser", body = {"account_uuid", "ai_engine", "ai_instructions", "allowed_extensions", "attachments_only", "attachments_only_override", "can_transform", "disable_deskew", "enable_layouted_text", "document_count", "document_per_status_count", "email_prefix", "even_pages", "force_ocr", "id", "is_master", "last_activity", "master_parser_name", "master_parser_slug", "name", "odd_pages", "page_range_set", "parser_object_count", "parser_object_set_last_modified", "process_attachments", "retention_policy", "split_keywords", "split_page", "split_page_range_set", "template_count", "webhook_count", "attachments_field", "original_document_field", "searchable_pdf_field", "headers_field", "received_field", "received_date_field", "received_time_field", "processed_field", "processed_date_field", "processed_time_field", "sender_field", "sender_name_field", "split_page_range_field", "recipient_field", "to_field", "cc_field", "bcc_field", "reply_to_field", "recipient_suffix_field", "original_recipient_field", "subject_field", "template_field", "html_document_field", "text_document_field", "content_field", "last_reply_field", "document_id_field", "parent_id_field", "document_url_field", "public_document_url_field", "page_count_field", "credit_count_field", "mailbox_id_field", "parsing_engine_field", "csv_download", "decimal_separator", "default_timezone", "disable_document_links", "expand_result", "extract_xml_from_comment", "input_date_format", "identification_status", "is_transform_enabled", "json_download", "parser_object_set", "pdf_conversion_format", "transform", "use_whitelist_instead_of_blacklist", "template_set_last_modified", "webhook_set", "xls_download", "available_webhook_set", "table_set", "emails_or_domains"} },
    ["parseur.post_parser_id_copy"] = { method = "POST", url = "https://api.parseur.com/parser/{id}/copy", path = {"id"} },
    ["parseur.post_parser_id_export_config"] = { method = "POST", url = "https://api.parseur.com/parser/{id}/export_config", path = {"id"}, body = {"id", "name", "type", "parser_field_id", "parser_field_name", "items", "csv_download", "xls_download"} },
    ["parseur.post_parser_id_upload"] = { method = "POST", url = "https://api.parseur.com/parser/{id}/upload", path = {"id"}, body = {"file"} },
    ["parseur.post_parser_mailbox_id_webhook_set_id"] = { method = "POST", url = "https://api.parseur.com/parser/{mailbox_id}/webhook_set/{id}", path = {"mailbox_id", "id"} },
    ["parseur.post_template_id_copy_target_mailbox_id"] = { method = "POST", url = "https://api.parseur.com/template/{id}/copy/{target_mailbox_id}", path = {"id", "target_mailbox_id"} },
    ["parseur.post_webhook"] = { method = "POST", url = "https://api.parseur.com/webhook", body = {"id", "event", "target", "name", "headers", "category", "parser_field_set"} },
    ["parseur.put_parser_id"] = { method = "PUT", url = "https://api.parseur.com/parser/{id}", path = {"id"}, body = {"account_uuid", "ai_engine", "ai_instructions", "allowed_extensions", "attachments_only", "attachments_only_override", "can_transform", "disable_deskew", "enable_layouted_text", "document_count", "document_per_status_count", "email_prefix", "even_pages", "force_ocr", "id", "is_master", "last_activity", "master_parser_name", "master_parser_slug", "name", "odd_pages", "page_range_set", "parser_object_count", "parser_object_set_last_modified", "process_attachments", "retention_policy", "split_keywords", "split_page", "split_page_range_set", "template_count", "webhook_count", "attachments_field", "original_document_field", "searchable_pdf_field", "headers_field", "received_field", "received_date_field", "received_time_field", "processed_field", "processed_date_field", "processed_time_field", "sender_field", "sender_name_field", "split_page_range_field", "recipient_field", "to_field", "cc_field", "bcc_field", "reply_to_field", "recipient_suffix_field", "original_recipient_field", "subject_field", "template_field", "html_document_field", "text_document_field", "content_field", "last_reply_field", "document_id_field", "parent_id_field", "document_url_field", "public_document_url_field", "page_count_field", "credit_count_field", "mailbox_id_field", "parsing_engine_field", "csv_download", "decimal_separator", "default_timezone", "disable_document_links", "expand_result", "extract_xml_from_comment", "input_date_format", "identification_status", "is_transform_enabled", "json_download", "parser_object_set", "pdf_conversion_format", "transform", "use_whitelist_instead_of_blacklist", "template_set_last_modified", "webhook_set", "xls_download", "available_webhook_set", "table_set", "emails_or_domains"} },
  },
}
