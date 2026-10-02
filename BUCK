# For a buck2 monorepo that attaches connectory as a submodule (Arock's, OpenRelationship/arock): the port, as
# `connectory.lua.port_http`, the same name it has on a Lua path that holds the folder above this one.
load("@nomimono//rules/lua:defs.bzl", "lua_library")

lua_library(
    name = "port_http",
    srcs = ["lua/port_http.lua"],
    prefix = "connectory",
    visibility = ["PUBLIC"],
)
