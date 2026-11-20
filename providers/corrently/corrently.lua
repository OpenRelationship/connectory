-- Corrently — every call this API accepts, as data.
--
-- GENERATED from https://api.apis.guru/v2/specs/corrently.io/2.0.0/openapi.json
-- APIs.guru's mirror of corrently.io, matched on corrently.io. A mirror lags the vendor.
-- 26 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "corrently",
  name = "Corrently",
  base = "https://api.corrently.io",
  docs = "https://nango.dev/docs/api-integrations/corrently",
  auth = {
    kind = "key",
    header = "authorization",
    format = "Bearer {token}",
    env = "CORRENTLY_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["corrently.easee_sessions"] = { method = "GET", url = "https://api.corrently.io/v2.0/alternative/easee/lastSessions", query = {"username", "password"} },
    ["corrently.gsi_besthour"] = { method = "GET", url = "https://api.corrently.io/v2.0/gsi/bestHour", query = {"zip", "timeframe", "hours"} },
    ["corrently.gsi_dispatch"] = { method = "GET", url = "https://api.corrently.io/v2.0/gsi/dispatch", query = {"zip"} },
    ["corrently.gsi_marketdata"] = { method = "GET", url = "https://api.corrently.io/v2.0/gsi/marketdata", query = {"zip"} },
    ["corrently.gsi_prediction"] = { method = "GET", url = "https://api.corrently.io/v2.0/gsi/prediction", query = {"zip"} },
    ["corrently.metering_get"] = { method = "GET", url = "https://api.corrently.io/v2.0/metering/reading", query = {"account"} },
    ["corrently.metering_post"] = { method = "POST", url = "https://api.corrently.io/v2.0/metering/reading", body = {"1.8.0", "account", "energy", "value", "zip"} },
    ["corrently.ocpp_sessions"] = { method = "GET", url = "https://api.corrently.io/v2.0/alternative/ocpp/lastSessions" },
    ["corrently.om_activities"] = { method = "GET", url = "https://api.corrently.io/v2.0/alternative/openmeter/activities" },
    ["corrently.om_meters"] = { method = "GET", url = "https://api.corrently.io/v2.0/alternative/openmeter/meters" },
    ["corrently.om_readings"] = { method = "GET", url = "https://api.corrently.io/v2.0/alternative/openmeter/readings" },
    ["corrently.prepare_transaction"] = { method = "POST", url = "https://api.corrently.io/v2.0/stromkonto/prepareTransaction", body = {"account", "signature", "to", "value", "variation"} },
    ["corrently.quittung_comit"] = { method = "POST", url = "https://api.corrently.io/v2.0/quittung/commit", body = {"account"} },
    ["corrently.quittung_create"] = { method = "POST", url = "https://api.corrently.io/v2.0/quittung/create", body = {"email"} },
    ["corrently.quittung_prepare"] = { method = "POST", url = "https://api.corrently.io/v2.0/quittung/prepare", body = {"account"} },
    ["corrently.quittung_tse"] = { method = "POST", url = "https://api.corrently.io/v2.0/quittung/tse", query = {"account"} },
    ["corrently.quittung_tsedata"] = { method = "POST", url = "https://api.corrently.io/v2.0/quittung/tsedata", query = {"account"} },
    ["corrently.quittung_tsesignature"] = { method = "POST", url = "https://api.corrently.io/v2.0/quittung/tsesignature", query = {"account"} },
    ["corrently.quittung_zugferd"] = { method = "GET", url = "https://api.corrently.io/v2.0/quittung/zugferd", query = {"account"} },
    ["corrently.stromkonto_balances"] = { method = "GET", url = "https://api.corrently.io/v2.0/stromkonto/balances", query = {"account"} },
    ["corrently.stromkonto_choices"] = { method = "GET", url = "https://api.corrently.io/v2.0/stromkonto/choices", query = {"account"} },
    ["corrently.stromkonto_login"] = { method = "POST", url = "https://api.corrently.io/v2.0/stromkonto/login", body = {"email"} },
    ["corrently.stromkonto_register"] = { method = "POST", url = "https://api.corrently.io/v2.0/stromkonto/register", body = {"email", "first_name", "last_name", "zipcode"} },
    ["corrently.tariff_slph0"] = { method = "GET", url = "https://api.corrently.io/v2.0/tariff/slph0", query = {"zipcode"} },
    ["corrently.tariffcomponents"] = { method = "GET", url = "https://api.corrently.io/v2.0/tariff/components", query = {"zipcode", "email", "kwha", "milliseconds", "wh"} },
    ["corrently.wimstatus"] = { method = "GET", url = "https://api.corrently.io/v2.0/wim/status", query = {"vid"} },
  },
}
