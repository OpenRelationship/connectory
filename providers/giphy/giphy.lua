-- GIPHY — every call this API accepts, as data.
--
-- GENERATED from https://api.apis.guru/v2/specs/giphy.com/1.0/openapi.json
-- APIs.guru's mirror of giphy.com, matched on giphy.com. A mirror lags the vendor.
-- 10 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "giphy",
  name = "GIPHY",
  base = "https://api.giphy.com",
  docs = "https://nango.dev/docs/api-integrations/giphy",
  auth = {
    kind = "key",
    header = "authorization",
    format = "Bearer {token}",
    env = "GIPHY_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["giphy.get_gif_by_id"] = { method = "GET", url = "https://api.giphy.com/v1/gifs/{gifId}", path = {"gifId"} },
    ["giphy.get_gifs_by_id"] = { method = "GET", url = "https://api.giphy.com/v1/gifs", query = {"ids"} },
    ["giphy.random_gif"] = { method = "GET", url = "https://api.giphy.com/v1/gifs/random", query = {"tag", "rating"} },
    ["giphy.random_sticker"] = { method = "GET", url = "https://api.giphy.com/v1/stickers/random", query = {"tag", "rating"} },
    ["giphy.search_gifs"] = { method = "GET", url = "https://api.giphy.com/v1/gifs/search", query = {"q", "limit", "offset", "rating", "lang"} },
    ["giphy.search_stickers"] = { method = "GET", url = "https://api.giphy.com/v1/stickers/search", query = {"q", "limit", "offset", "rating", "lang"} },
    ["giphy.translate_gif"] = { method = "GET", url = "https://api.giphy.com/v1/gifs/translate", query = {"s"} },
    ["giphy.translate_sticker"] = { method = "GET", url = "https://api.giphy.com/v1/stickers/translate", query = {"s"} },
    ["giphy.trending_gifs"] = { method = "GET", url = "https://api.giphy.com/v1/gifs/trending", query = {"limit", "offset", "rating"} },
    ["giphy.trending_stickers"] = { method = "GET", url = "https://api.giphy.com/v1/stickers/trending", query = {"limit", "offset", "rating"} },
  },
}
