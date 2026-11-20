-- DocsBot AI — every call this API accepts, as data.
--
-- GENERATED from https://api.docsbot.ai/openapi.json
-- Published on the vendor's own documentation site (https://api.docsbot.ai).
-- 20 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "docsbot-ai",
  name = "DocsBot AI",
  base = "https://docsbot.ai/api",
  docs = "https://nango.dev/docs/api-integrations/docsbot-ai",
  auth = {
    kind = "key",
    header = "authorization",
    format = "Bearer {token}",
    env = "DOCSBOT_AI_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["docsbot-ai.cancel_deep_research_teams_team_id_bots_bot_id_research_job_id_delete"] = { method = "DELETE", url = "https://docsbot.ai/api/teams/{team_id}/bots/{bot_id}/research/{job_id}", path = {"team_id", "bot_id", "job_id"} },
    ["docsbot-ai.capture_lead_and_update_conversation_metadata_teams_team_id_bots_bot_id_conversations_conv_id_lead_post"] = { method = "POST", url = "https://docsbot.ai/api/teams/{team_id}/bots/{bot_id}/conversations/{conv_id}/lead", path = {"team_id", "bot_id", "conv_id"}, body = {"metadata", "fullChange"} },
    ["docsbot-ai.chat_or_question_and_answer_teams_team_id_bots_bot_id_chat_post"] = { method = "POST", url = "https://docsbot.ai/api/teams/{team_id}/bots/{bot_id}/chat", path = {"team_id", "bot_id"}, body = {"question", "history", "format", "full_source", "metadata", "testing", "autocut", "context_items"} },
    ["docsbot-ai.chat_or_question_and_answer_using_retreival_agent_teams_team_id_bots_bot_id_chat_agent_post"] = { method = "POST", url = "https://docsbot.ai/api/teams/{team_id}/bots/{bot_id}/chat-agent", path = {"team_id", "bot_id"}, body = {"question", "history", "format", "full_source", "metadata", "testing", "autocut", "context_items", "evalContext", "promptTarget", "audio", "conversationId", "channel", "stream", "human_escalation", "calendly", "calcom", "tidycal", "custom_buttons", "generative_ui", "followup_rating", "document_retriever", "web_search", "openapi", "image_urls", "model", "default_language", "reasoning_effort", "search_limit"} },
    ["docsbot-ai.continue_deep_research_teams_team_id_bots_bot_id_research_job_id_post"] = { method = "POST", url = "https://docsbot.ai/api/teams/{team_id}/bots/{bot_id}/research/{job_id}", path = {"team_id", "bot_id", "job_id"}, body = {"answers", "model", "web_search", "code_interpreter", "docs_search", "question_history"} },
    ["docsbot-ai.create_widget_voice_web_rtc_session_teams_team_id_bots_bot_id_voice_post"] = { method = "POST", url = "https://docsbot.ai/api/teams/{team_id}/bots/{bot_id}/voice", path = {"team_id", "bot_id"}, query = {"conversation_id"} },
    ["docsbot-ai.fetch_document_teams_team_id_bots_bot_id_fetch_post"] = { method = "POST", url = "https://docsbot.ai/api/teams/{team_id}/bots/{bot_id}/fetch", path = {"team_id", "bot_id"}, body = {"fileId"} },
    ["docsbot-ai.generate_conversation_summary_teams_team_id_bots_bot_id_conversations_conv_id_summarize_get"] = { method = "GET", url = "https://docsbot.ai/api/teams/{team_id}/bots/{bot_id}/conversations/{conv_id}/summarize", path = {"team_id", "bot_id", "conv_id"} },
    ["docsbot-ai.generate_support_ticket_from_conversation_teams_team_id_bots_bot_id_conversations_conv_id_ticket_get"] = { method = "GET", url = "https://docsbot.ai/api/teams/{team_id}/bots/{bot_id}/conversations/{conv_id}/ticket", path = {"team_id", "bot_id", "conv_id"} },
    ["docsbot-ai.get_get"] = { method = "GET", url = "https://docsbot.ai/api/" },
    ["docsbot-ai.get_widget_voice_tool_result_teams_team_id_bots_bot_id_voice_call_id_tool_result_get"] = { method = "GET", url = "https://docsbot.ai/api/teams/{team_id}/bots/{bot_id}/voice/{call_id}/tool-result", path = {"team_id", "bot_id", "call_id"}, query = {"tool_call_id"} },
    ["docsbot-ai.list_libraries_that_can_be_searched_libraries_get"] = { method = "GET", url = "https://docsbot.ai/api/libraries" },
    ["docsbot-ai.log_a_support_escalation_for_the_conversation_teams_team_id_bots_bot_id_conversations_conv_id_escalate_put"] = { method = "PUT", url = "https://docsbot.ai/api/teams/{team_id}/bots/{bot_id}/conversations/{conv_id}/escalate", path = {"team_id", "bot_id", "conv_id"} },
    ["docsbot-ai.log_a_support_request_teams_team_id_bots_bot_id_support_answer_id_put"] = { method = "PUT", url = "https://docsbot.ai/api/teams/{team_id}/bots/{bot_id}/support/{answer_id}", path = {"team_id", "bot_id", "answer_id"} },
    ["docsbot-ai.question_and_answer_legacy_teams_team_id_bots_bot_id_ask_post"] = { method = "POST", url = "https://docsbot.ai/api/teams/{team_id}/bots/{bot_id}/ask", path = {"team_id", "bot_id"}, body = {"question", "history", "format", "full_source", "metadata", "testing", "autocut", "context_items"} },
    ["docsbot-ai.rate_an_answer_teams_team_id_bots_bot_id_rate_answer_id_put"] = { method = "PUT", url = "https://docsbot.ai/api/teams/{team_id}/bots/{bot_id}/rate/{answer_id}", path = {"team_id", "bot_id", "answer_id"}, body = {"rating"} },
    ["docsbot-ai.research_job_status_teams_team_id_bots_bot_id_research_job_id_get"] = { method = "GET", url = "https://docsbot.ai/api/teams/{team_id}/bots/{bot_id}/research/{job_id}", path = {"team_id", "bot_id", "job_id"} },
    ["docsbot-ai.semantic_search_teams_team_id_bots_bot_id_search_post"] = { method = "POST", url = "https://docsbot.ai/api/teams/{team_id}/bots/{bot_id}/search", path = {"team_id", "bot_id"}, body = {"query", "sourceId", "fileId", "use_glossary", "top_k", "autocut", "alpha", "tags", "include_untagged"} },
    ["docsbot-ai.start_deep_research_teams_team_id_bots_bot_id_research_post"] = { method = "POST", url = "https://docsbot.ai/api/teams/{team_id}/bots/{bot_id}/research", path = {"team_id", "bot_id"}, body = {"question", "model", "web_search", "code_interpreter", "docs_search", "question_history", "metadata", "tags", "include_untagged"} },
    ["docsbot-ai.update_metadata_of_conversation_teams_team_id_bots_bot_id_conversations_conv_id_put"] = { method = "PUT", url = "https://docsbot.ai/api/teams/{team_id}/bots/{bot_id}/conversations/{conv_id}", path = {"team_id", "bot_id", "conv_id"}, body = {"metadata", "fullChange"} },
  },
}
