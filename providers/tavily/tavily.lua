-- Tavily — every call this API accepts, as data.
--
-- GENERATED from https://tavily.com/.well-known/openapi.json
-- Published on the vendor's own documentation site (https://tavily.com).
-- 7 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "tavily",
  name = "Tavily",
  base = "https://api.tavily.com",
  docs = "https://nango.dev/docs/api-integrations/tavily",
  auth = {
    kind = "key",
    header = "authorization",
    format = "Bearer {token}",
    env = "TAVILY_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["tavily.crawl"] = { method = "POST", url = "https://api.tavily.com/crawl", body = {"url", "instructions", "chunks_per_source", "max_depth", "max_breadth", "limit", "select_paths", "select_domains", "exclude_paths", "exclude_domains", "allow_external", "include_images", "extract_depth", "format", "include_favicon", "timeout", "include_usage"} },
    ["tavily.create_research"] = { method = "POST", url = "https://api.tavily.com/research", body = {"input", "model", "stream", "output_schema", "citation_format"} },
    ["tavily.extract"] = { method = "POST", url = "https://api.tavily.com/extract", body = {"urls", "query", "chunks_per_source", "extract_depth", "include_images", "include_favicon", "format", "timeout", "include_usage"} },
    ["tavily.get_research"] = { method = "GET", url = "https://api.tavily.com/research/{request_id}", path = {"request_id"} },
    ["tavily.get_usage"] = { method = "GET", url = "https://api.tavily.com/usage", header = {"X-Project-ID"} },
    ["tavily.map"] = { method = "POST", url = "https://api.tavily.com/map", body = {"url", "instructions", "max_depth", "max_breadth", "limit", "select_paths", "select_domains", "exclude_paths", "exclude_domains", "allow_external", "timeout", "include_usage"} },
    ["tavily.search"] = { method = "POST", url = "https://api.tavily.com/search", body = {"query", "search_depth", "chunks_per_source", "max_results", "topic", "time_range", "start_date", "end_date", "include_answer", "include_raw_content", "include_images", "include_image_descriptions", "include_favicon", "include_domains", "exclude_domains", "country", "auto_parameters", "exact_match", "include_usage", "safe_search"} },
  },
}
