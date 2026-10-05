# For a buck2 monorepo that attaches connectory as a submodule (Arock's, OpenRelationship/arock): the port, as
# `connectory.lua.port_http`, the same name it has on a Lua path that holds the folder above this one.
load("@nomimono//rules/lua:defs.bzl", "lua_library", "lua_test")

lua_library(
    name = "port_http",
    srcs = ["lua/port_http.lua"],
    prefix = "connectory",
    visibility = ["PUBLIC"],
)

# The agent's port onto the directory (`connectory.lua.connect`): find a service, list its calls, make one signed
# with the person's own credential. Its JSON is Tablua's (`ports.json`).
lua_library(
    name = "connect",
    srcs = ["lua/connect.lua"],
    prefix = "connectory",
    deps = [":port_http", "//submodules/tablua/core/ports:ports"],
    visibility = ["PUBLIC"],
)

lua_test(
    name = "connect_test",
    src = "lua/connect_test.lua",
    deps = [":connect"],
)
