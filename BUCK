# For a buck2 monorepo that attaches connectory as a submodule: the request builder as `connectory.lua.http` and the
# agent's port as `connectory.lua.connect`, the names they have on a Lua path that holds the folder above this one.
load("@nomimono//rules/lua:defs.bzl", "lua_library", "lua_test")

lua_library(
    name = "http",
    srcs = ["lua/http.lua"],
    prefix = "connectory",
    visibility = ["PUBLIC"],
)

# The agent's port onto the directory (`connectory.lua.connect`): find a service, list its calls, make one signed
# with the person's own credential. Its JSON is Tablua's (`ports.json`).
lua_library(
    name = "connect",
    srcs = ["lua/connect.lua"],
    prefix = "connectory",
    deps = [":http", "//submodules/tablua/core/ports:ports"],
    visibility = ["PUBLIC"],
)

lua_test(
    name = "http_test",
    src = "lua/http_test.lua",
    deps = [":http"],
)

lua_test(
    name = "connect_test",
    src = "lua/connect_test.lua",
    deps = [":connect"],
)
