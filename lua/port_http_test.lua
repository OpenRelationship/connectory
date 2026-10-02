-- lua lua/port_http_test.lua (from the repository's root): a pack's call is signed with its credential, an
-- address part comes from the environment, and a missing credential is refused before anything is sent.
package.path = "./lua/?.lua;" .. package.path
local port_http = require "port_http"

local function pack(auth, config)
  return { provider = "demo", name = "Demo", auth = auth, config = config or {}, headers = { accept = "x" },
    operations = { ["demo.get"] = { method = "GET", url = "https://{host}/things/{id}", path = { "id" }, query = { "q" } } } }
end

local sent
local function port(auth, env)
  sent = nil
  return port_http {
    catalog = pack(auth, { host = "DEMO_HOST" }),
    request = function (r) sent = r; return 200, { ok = true } end,
    getenv = function (n) return env[n] end,
  }
end

local env = { DEMO_TOKEN = "t0k", DEMO_HOST = "api.demo.test" }

local p = port({ kind = "key", header = "x-api-key", format = "{token}", env = "DEMO_TOKEN" }, env)
assert(p.execute("demo.get", { id = 7, q = "a b" }))
assert(sent.headers["x-api-key"] == "t0k", "a header credential is sent")
assert(sent.headers.accept == "x")
assert(sent.url == "https://api.demo.test/things/7?q=a%20b", sent.url)

p = port({ kind = "oauth", env = "DEMO_TOKEN" }, env)
assert(p.execute("demo.get", { id = 1 }))
assert(sent.headers.authorization == "Bearer t0k", "a bearer token by default")

p = port({ kind = "query", param = "api_key", env = "DEMO_TOKEN" }, env)
assert(p.execute("demo.get", { id = 1 }))
assert(sent.url:find("api_key=t0k", 1, true), "a query credential")

p = port({ kind = "basic", user_env = "DEMO_USER", pass_env = "DEMO_PASS" }, { DEMO_USER = "u", DEMO_PASS = "p", DEMO_HOST = "h" })
assert(p.execute("demo.get", { id = 1 }))
assert(sent.headers.authorization == "Basic dTpw", sent.headers.authorization)

p = port({ kind = "oauth", env = "DEMO_TOKEN" }, { DEMO_HOST = "h" })
local value, err = p.execute("demo.get", { id = 1 })
assert(value == nil and err.code == "denied" and err.message:find("DEMO_TOKEN"), "a missing credential is refused")
assert(sent == nil, "and nothing is sent")

print("port_http: ok")
