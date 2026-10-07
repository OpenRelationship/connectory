---
name: connectory
description: Other people's apps for an agent — connectory's directory of 853 services and, for the ones whose makers publish an API, every call it accepts as data, one Lua file per API; find a service, list its calls, make one signed with the person's own credential, and learn what to ask the person for when a credential is missing or refused; use when an agent needs a service outside its own computer, or when changing how a call is signed.
summary: connect.new(host, {read, secret}) where host = { fetch, now? } (Tablua's) and read(path) reads a file of connectory's relative to its root; c:find(words, n?) -> {{service, name, categories, operations, docs}}; c:operations(service, words?, n?) -> {{op, name, about, args}} (args marked * are needed) or nil, why; c:method(op); c:reads(op) -> true for GET and HEAD; c:needs(service) -> {service, name, docs, fields = {{name, label, secret}}, missing}; c:call(op, args) -> value, record or nil, err, record with err = {code, message, needs?} (needs when the credential is missing or refused, code "denied"); c:check(service) -> true, record (the directory's own test call). The record (service, op, method, status, seconds) is what a log may keep. connectory.lua.http is the request builder underneath (http.new{catalog, request, secret}.call(op, args)).
do:
  - Find the service and its call first (find, then operations); call with the argument names operations gives.
  - Treat err.needs as an ask for the person: show them needs.fields and needs.docs in a masked field, and store what they type where the host's secret(name) reads it.
  - Ask the person before any call c:reads says changes something.
  - Log the record a call returns, never the request.
dont:
  - Do not put a credential in a record, a row, a log or a model's prompt; secret(name) is the only reader.
  - Do not accept a credential through the conversation, or from an agent; only from the person, through the host.
  - Do not guess a call a service does not describe; operations says so, with the service's documentation.
---

# connectory for an agent

`connect.lua` is the port; `http.lua` builds and signs one request. Both are plain Lua (LuaJIT, 5.1 to 5.4) and
load each pack with no globals, so a pack can only be data.

A harness gives the port three things: `fetch` (an HTTP client), `read` (the directory's files) and `secret`
(the person's credentials, by the name the pack gives, such as `STRIPE_SECRET_KEY`). The port never stores a
credential and never returns one.

When a call fails with `denied`, `err.needs` says which fields the person must give, which of them are secret,
and where the service's documentation explains how to get them. The harness asks the person, never the model,
and the model is told only whether the service is connected.
