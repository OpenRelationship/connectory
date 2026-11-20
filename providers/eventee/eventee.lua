-- Eventee — every call this API accepts, as data.
--
-- GENERATED from https://docs.eventee.com/openapi.yaml
-- Published on the vendor's own documentation site (https://docs.eventee.com).
-- 31 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "eventee",
  name = "Eventee",
  base = "https://eventee.com",
  docs = "https://nango.dev/docs/api-integrations/eventee",
  auth = {
    kind = "key",
    header = "authorization",
    format = "Bearer {token}",
    env = "EVENTEE_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["eventee.check_in_attendee"] = { method = "PATCH", url = "https://eventee.com/public/api/v1/attendee/{attendee_id}/checkin", path = {"attendee_id"}, body = {"checkin"} },
    ["eventee.create_break"] = { method = "POST", url = "https://eventee.com/public/api/v1/pause", body = {"name", "description", "start", "end"} },
    ["eventee.create_hall"] = { method = "POST", url = "https://eventee.com/public/api/v1/hall", body = {"name", "order", "stream"} },
    ["eventee.create_label"] = { method = "POST", url = "https://eventee.com/public/api/v1/label", body = {"name", "color", "order"} },
    ["eventee.create_partner"] = { method = "POST", url = "https://eventee.com/public/api/v1/partner", body = {"company", "description", "logo_url", "photo_url", "booth_number", "web", "email", "phone", "address"} },
    ["eventee.create_registrations"] = { method = "PUT", url = "https://eventee.com/public/api/v1/registration/invite", body = {"registrations"} },
    ["eventee.create_session"] = { method = "POST", url = "https://eventee.com/public/api/v1/lecture", body = {"name", "description", "start", "end", "type", "hall_id", "speakers", "tracks", "discussion", "moderating", "polling", "checkin", "capacity", "stream", "virtual_meeting"} },
    ["eventee.create_speaker"] = { method = "POST", url = "https://eventee.com/public/api/v1/speaker", body = {"name", "email", "photo", "bio", "position", "company", "phone", "web", "linkedIn", "twitter", "facebook", "instagram", "country", "language"} },
    ["eventee.delete_all_program_content"] = { method = "DELETE", url = "https://eventee.com/public/api/v1/test/content" },
    ["eventee.delete_break"] = { method = "DELETE", url = "https://eventee.com/public/api/v1/pause/{pause_id}", path = {"pause_id"} },
    ["eventee.delete_hall"] = { method = "DELETE", url = "https://eventee.com/public/api/v1/hall/{hall_id}", path = {"hall_id"} },
    ["eventee.delete_label"] = { method = "DELETE", url = "https://eventee.com/public/api/v1/label/{track_id}", path = {"track_id"} },
    ["eventee.delete_partner"] = { method = "DELETE", url = "https://eventee.com/public/api/v1/partner/{partner_id}", path = {"partner_id"} },
    ["eventee.delete_session"] = { method = "DELETE", url = "https://eventee.com/public/api/v1/lecture/{lecture_id}", path = {"lecture_id"} },
    ["eventee.delete_speaker"] = { method = "DELETE", url = "https://eventee.com/public/api/v1/speaker/{speakerTmp_id}", path = {"speakerTmp_id"} },
    ["eventee.get_event_content"] = { method = "GET", url = "https://eventee.com/public/api/v1/content", query = {"date", "with_overlapping"} },
    ["eventee.invite_attendees"] = { method = "PUT", url = "https://eventee.com/public/api/v1/attendee/invite", body = {"users"} },
    ["eventee.list_groups"] = { method = "GET", url = "https://eventee.com/public/api/v1/groups" },
    ["eventee.list_participants"] = { method = "GET", url = "https://eventee.com/public/api/v1/participants" },
    ["eventee.list_partners"] = { method = "GET", url = "https://eventee.com/public/api/v1/partners" },
    ["eventee.list_registrations"] = { method = "GET", url = "https://eventee.com/public/api/v1/registrations" },
    ["eventee.list_reviews"] = { method = "GET", url = "https://eventee.com/public/api/v1/reviews" },
    ["eventee.remove_attendee"] = { method = "DELETE", url = "https://eventee.com/public/api/v1/attendee", query = {"email"} },
    ["eventee.remove_registration"] = { method = "DELETE", url = "https://eventee.com/public/api/v1/registration", query = {"email"} },
    ["eventee.update_break"] = { method = "PATCH", url = "https://eventee.com/public/api/v1/pause/{pause_id}", path = {"pause_id"}, body = {"name", "description", "start", "end"} },
    ["eventee.update_hall"] = { method = "PATCH", url = "https://eventee.com/public/api/v1/hall/{hall_id}", path = {"hall_id"}, body = {"name", "order", "stream"} },
    ["eventee.update_label"] = { method = "PATCH", url = "https://eventee.com/public/api/v1/label/{track_id}", path = {"track_id"}, body = {"name", "color", "order"} },
    ["eventee.update_partner"] = { method = "PATCH", url = "https://eventee.com/public/api/v1/partner/{partner_id}", path = {"partner_id"}, body = {"company", "description", "logo_url", "photo_url", "booth_number", "web", "email", "phone", "address"} },
    ["eventee.update_partner_sections"] = { method = "PATCH", url = "https://eventee.com/public/api/v1/partner/{partner_id}/sections", path = {"partner_id"}, body = {"sections"} },
    ["eventee.update_session"] = { method = "PATCH", url = "https://eventee.com/public/api/v1/lecture/{lecture_id}", path = {"lecture_id"}, body = {"name", "description", "start", "end", "type", "hall_id", "speakers", "tracks", "discussion", "moderating", "polling", "capacity", "stream", "virtual_meeting"} },
    ["eventee.update_speaker"] = { method = "PATCH", url = "https://eventee.com/public/api/v1/speaker/{speakerTmp_id}", path = {"speakerTmp_id"}, body = {"name", "email", "photo", "bio", "position", "company", "phone", "web", "linkedIn", "twitter", "facebook", "instagram", "country", "language"} },
  },
}
