-- Laylo — every call this API accepts, as data.
--
-- GENERATED from https://developers.laylo.com/openapi.json
-- Published on the vendor's own documentation site (https://developers.laylo.com).
-- 19 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "laylo",
  name = "Laylo",
  base = "https://laylo.com/api",
  docs = "https://nango.dev/docs/api-integrations/laylo",
  auth = {
    kind = "key",
    header = "authorization",
    format = "Bearer {token}",
    env = "LAYLO_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["laylo.auth_token_create"] = { method = "POST", url = "https://laylo.com/api/api/v1/auth/token", body = {"client_id", "client_secret", "grant_type"} },
    ["laylo.billing_usage_get"] = { method = "GET", url = "https://laylo.com/api/api/v1/billing/credit-usage", query = {"startDate", "endDate", "interval"} },
    ["laylo.billing_usage_products_get"] = { method = "GET", url = "https://laylo.com/api/api/v1/billing/credit-usage/products", query = {"productId", "startDate", "endDate", "interval"} },
    ["laylo.conversions_counts_list"] = { method = "GET", url = "https://laylo.com/api/api/v1/conversions/counts", query = {"action", "startDate", "endDate"} },
    ["laylo.conversions_list"] = { method = "GET", url = "https://laylo.com/api/api/v1/conversions", query = {"action", "relatedProductId"} },
    ["laylo.conversions_track"] = { method = "POST", url = "https://laylo.com/api/api/v1/conversions/events", body = {"action", "consentGrantedAt", "metadata", "name", "sessionId", "source", "timestamp", "user"} },
    ["laylo.customers_list"] = { method = "GET", url = "https://laylo.com/api/api/v1/customers" },
    ["laylo.drops_list"] = { method = "GET", url = "https://laylo.com/api/api/v1/drops" },
    ["laylo.fans_segments_list"] = { method = "GET", url = "https://laylo.com/api/api/v1/fans/segments", query = {"dropIds", "excludedDropIds", "conversionIds", "excludedConversionIds", "locations", "excludedLocations", "signUpType", "signedUpAfter", "signedUpBefore"} },
    ["laylo.fans_subscribed_check"] = { method = "POST", url = "https://laylo.com/api/api/v1/fans/subscribed" },
    ["laylo.fans_subscriptions_create"] = { method = "POST", url = "https://laylo.com/api/api/v1/fans/subscriptions" },
    ["laylo.fans_unsubscribed_check"] = { method = "POST", url = "https://laylo.com/api/api/v1/fans/unsubscribed" },
    ["laylo.keys_verify"] = { method = "GET", url = "https://laylo.com/api/api/v1/keys/verify" },
    ["laylo.messages_segments_schedule"] = { method = "POST", url = "https://laylo.com/api/api/v1/messages/segments/scheduled", body = {"dryRun", "email", "message", "segment", "sendAt", "timezone"} },
    ["laylo.messages_segments_send"] = { method = "POST", url = "https://laylo.com/api/api/v1/messages/segments", body = {"dryRun", "email", "message", "segment", "timezone"} },
    ["laylo.messages_sms_conversations_get"] = { method = "GET", url = "https://laylo.com/api/api/v1/messages/sms/conversations/{fanId}", path = {"fanId"}, query = {"cursor", "limit"} },
    ["laylo.messages_sms_conversations_list"] = { method = "GET", url = "https://laylo.com/api/api/v1/messages/sms/conversations", query = {"awaitingReply", "unreadOnly", "since", "cursor", "limit"} },
    ["laylo.messages_sms_conversations_reply"] = { method = "POST", url = "https://laylo.com/api/api/v1/messages/sms/conversations/{fanId}/replies", path = {"fanId"}, body = {"message"} },
    ["laylo.messages_sms_send"] = { method = "POST", url = "https://laylo.com/api/api/v1/messages/sms", body = {"message", "to"} },
  },
}
