-- Hive — every call this API accepts, as data.
--
-- GENERATED from https://developers.hive.co/openapi.json
-- Published on the vendor's own documentation site (https://developers.hive.co).
-- 26 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "hive",
  name = "Hive",
  base = "https://api.hive.co",
  docs = "https://nango.dev/docs/api-integrations/hive",
  auth = {
    kind = "oauth",
    header = "authorization",
    format = "Bearer {token}",
    env = "HIVE_TOKEN",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["hive.auth_oauth_whoami_retrieve"] = { method = "GET", url = "https://api.hive.co/v2/oauth/whoami/", header = {"X-Partner-Id"} },
    ["hive.campaigns_ads_aggregate_stats_retrieve"] = { method = "GET", url = "https://api.hive.co/v2/campaigns/ads/stats/", query = {"campaign_ids", "created_after", "created_before"}, header = {"X-Partner-Id"} },
    ["hive.campaigns_ads_retrieve"] = { method = "GET", url = "https://api.hive.co/v2/campaigns/ads/", query = {"limit", "offset", "stats"}, header = {"X-Partner-Id"} },
    ["hive.campaigns_ads_stats_retrieve"] = { method = "GET", url = "https://api.hive.co/v2/campaigns/ads/{campaign_id}/stats/", path = {"campaign_id"}, header = {"X-Partner-Id"} },
    ["hive.campaigns_email_aggregate_stats_retrieve"] = { method = "GET", url = "https://api.hive.co/v2/campaigns/email/stats/", query = {"campaign_ids", "sent_after", "sent_before"}, header = {"X-Partner-Id"} },
    ["hive.campaigns_email_retrieve"] = { method = "GET", url = "https://api.hive.co/v2/campaigns/email/", query = {"limit", "offset", "stats"}, header = {"X-Partner-Id"} },
    ["hive.campaigns_email_stats_retrieve"] = { method = "GET", url = "https://api.hive.co/v2/campaigns/email/{campaign_id}/stats/", path = {"campaign_id"}, header = {"X-Partner-Id"} },
    ["hive.campaigns_sms_aggregate_stats_retrieve"] = { method = "GET", url = "https://api.hive.co/v2/campaigns/sms/stats/", query = {"campaign_ids", "sent_after", "sent_before"}, header = {"X-Partner-Id"} },
    ["hive.campaigns_sms_retrieve"] = { method = "GET", url = "https://api.hive.co/v2/campaigns/sms/", query = {"limit", "offset", "stats"}, header = {"X-Partner-Id"} },
    ["hive.campaigns_sms_stats_retrieve"] = { method = "GET", url = "https://api.hive.co/v2/campaigns/sms/{campaign_id}/stats/", path = {"campaign_id"}, header = {"X-Partner-Id"} },
    ["hive.contacts_create"] = { method = "POST", url = "https://api.hive.co/v2/contacts/", header = {"X-Partner-Id"}, body = {"contacts"} },
    ["hive.custom_event_properties_events_custom_properties_create"] = { method = "POST", url = "https://api.hive.co/v2/events/custom-properties/", header = {"X-Partner-Id"}, body = {"name", "value_type"} },
    ["hive.custom_event_properties_events_custom_properties_destroy"] = { method = "DELETE", url = "https://api.hive.co/v2/events/custom-properties/{property_id}/", path = {"property_id"}, query = {"force"}, header = {"X-Partner-Id"} },
    ["hive.custom_event_properties_events_custom_properties_retrieve"] = { method = "GET", url = "https://api.hive.co/v2/events/custom-properties/", query = {"limit", "offset"}, header = {"X-Partner-Id"} },
    ["hive.custom_event_properties_events_custom_properties_update"] = { method = "PUT", url = "https://api.hive.co/v2/events/custom-properties/{property_id}/", path = {"property_id"}, header = {"X-Partner-Id"}, body = {"name", "value_type"} },
    ["hive.custom_event_properties_events_custom_property_retrieve"] = { method = "GET", url = "https://api.hive.co/v2/events/custom-properties/{property_id}/", path = {"property_id"}, header = {"X-Partner-Id"} },
    ["hive.custom_properties_contacts_custom_properties_delete_create"] = { method = "POST", url = "https://api.hive.co/v2/contacts/custom-properties/delete/", header = {"X-Partner-Id"}, body = {"contacts"} },
    ["hive.events_create"] = { method = "POST", url = "https://api.hive.co/v2/events/", header = {"X-Partner-Id"}, body = {"events"} },
    ["hive.events_partial_update"] = { method = "PATCH", url = "https://api.hive.co/v2/events/{event_id}/", path = {"event_id"}, header = {"X-Partner-Id"}, body = {"primary_performer_names", "supporting_performer_names", "description", "end_at", "presale_start_at", "onsale_start_at", "doors_open_at", "thumbnail_url", "genres", "tags", "has_tickets_available", "total_tickets", "timezone", "venue", "tiers", "properties", "name", "start_at", "event_url"} },
    ["hive.orders_create"] = { method = "POST", url = "https://api.hive.co/v2/orders/", header = {"X-Partner-Id"}, body = {"orders"} },
    ["hive.segments_create"] = { method = "POST", url = "https://api.hive.co/v2/segments/", header = {"X-Partner-Id"}, body = {"name", "description"} },
    ["hive.segments_destroy"] = { method = "DELETE", url = "https://api.hive.co/v2/segments/{segment_id}/", path = {"segment_id"}, header = {"X-Partner-Id"} },
    ["hive.segments_retrieve"] = { method = "GET", url = "https://api.hive.co/v2/segments/", header = {"X-Partner-Id"} },
    ["hive.segments_users_create"] = { method = "POST", url = "https://api.hive.co/v2/segments/{segment_id}/users/", path = {"segment_id"}, header = {"X-Partner-Id"}, body = {"users"} },
    ["hive.segments_users_remove_create"] = { method = "POST", url = "https://api.hive.co/v2/segments/{segment_id}/users/remove/", path = {"segment_id"}, header = {"X-Partner-Id"}, body = {"users"} },
    ["hive.segments_users_retrieve"] = { method = "GET", url = "https://api.hive.co/v2/segments/{segment_id}/users/", path = {"segment_id"}, query = {"limit", "offset"}, header = {"X-Partner-Id"} },
  },
}
