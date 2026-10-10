-- Agentcard — every call this API accepts, as data.
--
-- GENERATED from https://docs.agentcard.sh/openapi.json
-- Published on the vendor's own documentation site (https://docs.agentcard.sh).
-- 21 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "agentcard",
  name = "Agentcard",
  base = "https://api.agentcard.sh",
  docs = "https://nango.dev/docs/api-integrations/agentcard",
  auth = {
    kind = "oauth",
    header = "authorization",
    format = "Bearer {token}",
    env = "AGENTCARD_TOKEN",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["agentcard.buy"] = { method = "POST", url = "https://api.agentcard.sh/buy", body = {"ask", "conversation_id", "confirm", "payment_source", "delivery_address"} },
    ["agentcard.connect_consent"] = { method = "POST", url = "https://api.agentcard.sh/api/v2/connect/consent", body = {"user_id", "terms_version"} },
    ["agentcard.connect_refresh"] = { method = "POST", url = "https://api.agentcard.sh/api/v2/connect/refresh", body = {"refresh_token"} },
    ["agentcard.connect_start"] = { method = "POST", url = "https://api.agentcard.sh/api/v2/connect/start", body = {"email", "phone", "external_user_id"} },
    ["agentcard.connect_verify"] = { method = "POST", url = "https://api.agentcard.sh/api/v2/connect/verify", body = {"connect_id", "code"} },
    ["agentcard.create_access_token"] = { method = "POST", url = "https://api.agentcard.sh/api/v2/oauth/token", body = {"grant_type", "client_id", "client_secret"} },
    ["agentcard.get_buy_conversation"] = { method = "GET", url = "https://api.agentcard.sh/buy/conversations/{id}", path = {"id"} },
    ["agentcard.get_buy_order"] = { method = "GET", url = "https://api.agentcard.sh/buy/orders/{order_id}", path = {"order_id"}, query = {"user_id"} },
    ["agentcard.introspect_credential"] = { method = "GET", url = "https://api.agentcard.sh/api/v2" },
    ["agentcard.kyc_get_status"] = { method = "GET", url = "https://api.agentcard.sh/api/v2/kyc", query = {"user_id"} },
    ["agentcard.kyc_import"] = { method = "POST", url = "https://api.agentcard.sh/api/v2/kyc/import", body = {"user_id", "share_token", "user_ip"} },
    ["agentcard.kyc_simulate"] = { method = "POST", url = "https://api.agentcard.sh/api/v2/kyc/simulate", body = {"user_id", "outcome", "reason"} },
    ["agentcard.kyc_submit_information"] = { method = "POST", url = "https://api.agentcard.sh/api/v2/kyc/information", body = {"user_id", "first_name", "last_name", "date_of_birth", "national_id_number", "phone_number", "address_line1", "address_line2", "address_city", "address_region", "address_postal_code", "address_country", "user_ip"} },
    ["agentcard.kyc_upload_back"] = { method = "POST", url = "https://api.agentcard.sh/api/v2/kyc/documents/back" },
    ["agentcard.kyc_upload_front"] = { method = "POST", url = "https://api.agentcard.sh/api/v2/kyc/documents/front" },
    ["agentcard.list_buy_merchants"] = { method = "GET", url = "https://api.agentcard.sh/buy/merchants" },
    ["agentcard.member_card_close"] = { method = "POST", url = "https://api.agentcard.sh/api/v2/cards/{card_id}/close", path = {"card_id"} },
    ["agentcard.member_card_create"] = { method = "POST", url = "https://api.agentcard.sh/api/v2/cards", header = {"Idempotency-Key"}, body = {"amount_cents", "currency", "connected_card_id", "merchant", "description", "metadata"} },
    ["agentcard.member_card_get"] = { method = "GET", url = "https://api.agentcard.sh/api/v2/cards/{card_id}", path = {"card_id"} },
    ["agentcard.member_cards_list"] = { method = "GET", url = "https://api.agentcard.sh/api/v2/cards" },
    ["agentcard.member_flow_status"] = { method = "GET", url = "https://api.agentcard.sh/api/v2/flow_status" },
  },
}
