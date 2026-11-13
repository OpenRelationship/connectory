-- AddressZen — every call this API accepts, as data.
--
-- GENERATED from https://raw.githubusercontent.com/addresszen/openapi/main/openapi.json
-- Published by addresszen, the vendor's own GitHub organisation.
-- 25 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "addresszen",
  name = "AddressZen",
  base = "https://api.addresszen.com",
  docs = "https://nango.dev/docs/api-integrations/addresszen",
  auth = {
    kind = "key",
    header = "authorization",
    format = "Bearer {token}",
    env = "ADDRESSZEN_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["addresszen.address_verify"] = { method = "POST", url = "https://api.addresszen.com/v1/verify/addresses", query = {"tags", "context"}, body = {"query", "zip_code", "city", "state"} },
    ["addresszen.create_config"] = { method = "POST", url = "https://api.addresszen.com/v1/keys/{key}/configs", query = {"user_token"}, body = {"name", "payload"} },
    ["addresszen.create_licensee"] = { method = "POST", url = "https://api.addresszen.com/v1/keys/{key}/licensees", query = {"user_token"}, body = {"name", "address", "postcode", "whitelist", "daily"} },
    ["addresszen.delete_config"] = { method = "DELETE", url = "https://api.addresszen.com/v1/keys/{key}/configs/{config}", path = {"config"}, query = {"user_token"} },
    ["addresszen.delete_licensee"] = { method = "DELETE", url = "https://api.addresszen.com/v1/keys/{key}/licensees/{licensee}", path = {"licensee"}, query = {"user_token"} },
    ["addresszen.email_validation"] = { method = "GET", url = "https://api.addresszen.com/v1/emails", query = {"query", "tags"} },
    ["addresszen.find_address"] = { method = "GET", url = "https://api.addresszen.com/v1/autocomplete/addresses", query = {"query", "dataset", "context", "limit", "bias_lonlat", "bias_ip", "box", "postal_code", "postal_code_2", "postal_code_3", "city", "state", "state_code", "bias_postal_code", "bias_postal_code_2", "bias_postal_code_3", "bias_city", "bias_state", "bias_state_code", "is_pobox", "is_business"} },
    ["addresszen.find_place"] = { method = "GET", url = "https://api.addresszen.com/v1/places", query = {"query", "country_iso", "bias_country_iso", "bias_lonlat", "bias_ip"} },
    ["addresszen.key_availability"] = { method = "GET", url = "https://api.addresszen.com/v1/keys/{key}" },
    ["addresszen.key_details"] = { method = "GET", url = "https://api.addresszen.com/v1/keys/{key}/details", query = {"user_token"} },
    ["addresszen.key_logs"] = { method = "GET", url = "https://api.addresszen.com/v1/keys/{key}/lookups", query = {"user_token", "start", "end", "licensee"} },
    ["addresszen.key_usage"] = { method = "GET", url = "https://api.addresszen.com/v1/keys/{key}/usage", query = {"user_token", "start", "end", "tags", "licensee"} },
    ["addresszen.list_configs"] = { method = "GET", url = "https://api.addresszen.com/v1/keys/{key}/configs", query = {"user_token"} },
    ["addresszen.list_licensees"] = { method = "GET", url = "https://api.addresszen.com/v1/keys/{key}/licensees", query = {"starting_after", "user_token", "limit", "query"} },
    ["addresszen.phone_number_validation"] = { method = "GET", url = "https://api.addresszen.com/v1/phone_numbers", query = {"query", "current_carrier", "tags"} },
    ["addresszen.regenerate_licensee_key"] = { method = "POST", url = "https://api.addresszen.com/v1/keys/{key}/licensees/{licensee}/regenerate-key", path = {"licensee"}, query = {"user_token"} },
    ["addresszen.resolve_place"] = { method = "GET", url = "https://api.addresszen.com/v1/places/{place}", path = {"place"}, query = {"tags"} },
    ["addresszen.retrieve_address"] = { method = "GET", url = "https://api.addresszen.com/v1/autocomplete/addresses/{address}/usa", path = {"address"}, query = {"licensee", "filter", "tags"} },
    ["addresszen.retrieve_config"] = { method = "GET", url = "https://api.addresszen.com/v1/keys/{key}/configs/{config}", path = {"config"} },
    ["addresszen.retrieve_licensee"] = { method = "GET", url = "https://api.addresszen.com/v1/keys/{key}/licensees/{licensee}", path = {"licensee"}, query = {"user_token"} },
    ["addresszen.sign_up_claim"] = { method = "GET", url = "https://api.addresszen.com/v1/sign_up/{cli_token}", path = {"cli_token"} },
    ["addresszen.sign_up_mint_token"] = { method = "POST", url = "https://api.addresszen.com/v1/sign_up", body = {"email", "name", "org_name", "org_address_line_one", "org_address_line_two", "org_address_line_three", "org_post_town", "org_postcode", "org_country_code"} },
    ["addresszen.update_config"] = { method = "POST", url = "https://api.addresszen.com/v1/keys/{key}/configs/{config}", path = {"config"}, query = {"user_token"}, body = {"payload"} },
    ["addresszen.update_key_details"] = { method = "PUT", url = "https://api.addresszen.com/v1/keys/{key}/details", query = {"user_token"}, body = {"name", "daily_limit", "monthly_limit", "individual_limit", "allowed_urls", "redact_days", "notifications", "ip_forwarding", "datasets"} },
    ["addresszen.update_licensee"] = { method = "POST", url = "https://api.addresszen.com/v1/keys/{key}/licensees/{licensee}", path = {"licensee"}, query = {"user_token"}, body = {"name", "address", "postcode", "whitelist", "daily"} },
  },
}
