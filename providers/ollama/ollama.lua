-- Ollama — every call this API accepts, as data.
--
-- GENERATED from https://docs.ollama.com/openapi.yaml
-- Published on the vendor's own documentation site (https://docs.ollama.com).
-- 16 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "ollama",
  name = "Ollama",
  base = "https://ollama.com/api",
  docs = "https://nango.dev/docs/api-integrations/ollama",
  auth = {
    kind = "key",
    header = "authorization",
    format = "Bearer {token}",
    env = "OLLAMA_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["ollama.balance"] = { method = "GET", url = "https://ollama.com/api/api/balance" },
    ["ollama.chat"] = { method = "POST", url = "https://ollama.com/api/api/chat", body = {"model", "messages", "tools", "format", "options", "stream", "think", "keep_alive", "logprobs", "top_logprobs"} },
    ["ollama.copy"] = { method = "POST", url = "https://ollama.com/api/api/copy", body = {"source", "destination"} },
    ["ollama.create"] = { method = "POST", url = "https://ollama.com/api/api/create", body = {"model", "from", "template", "renderer", "parser", "files", "draft_files", "license", "system", "parameters", "messages", "quantize", "draft_quantize", "requires", "capabilities", "stream"} },
    ["ollama.create_blob"] = { method = "POST", url = "https://ollama.com/api/api/blobs/{digest}", path = {"digest"} },
    ["ollama.delete"] = { method = "DELETE", url = "https://ollama.com/api/api/delete", body = {"model"} },
    ["ollama.embed"] = { method = "POST", url = "https://ollama.com/api/api/embed", body = {"model", "input", "truncate", "dimensions", "keep_alive", "options"} },
    ["ollama.generate"] = { method = "POST", url = "https://ollama.com/api/api/generate", body = {"model", "prompt", "suffix", "images", "format", "system", "stream", "think", "raw", "keep_alive", "options", "logprobs", "top_logprobs"} },
    ["ollama.list"] = { method = "GET", url = "https://ollama.com/api/api/tags" },
    ["ollama.ps"] = { method = "GET", url = "https://ollama.com/api/api/ps" },
    ["ollama.pull"] = { method = "POST", url = "https://ollama.com/api/api/pull", body = {"model", "insecure", "stream"} },
    ["ollama.push"] = { method = "POST", url = "https://ollama.com/api/api/push", body = {"model", "insecure", "stream"} },
    ["ollama.show"] = { method = "POST", url = "https://ollama.com/api/api/show", body = {"model", "verbose"} },
    ["ollama.systemone"] = { method = "POST", url = "https://ollama.com/api/v1/systemone", body = {"model", "state", "images", "questions", "keep_alive"} },
    ["ollama.usage"] = { method = "GET", url = "https://ollama.com/api/api/usage", query = {"range", "scope", "group_by"} },
    ["ollama.version"] = { method = "GET", url = "https://ollama.com/api/api/version" },
  },
}
