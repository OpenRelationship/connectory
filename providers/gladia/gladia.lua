-- Gladia — every call this API accepts, as data.
--
-- GENERATED from https://api.gladia.io/openapi.json
-- Published on the vendor's own documentation site (https://api.gladia.io).
-- 21 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "gladia",
  name = "Gladia",
  base = "https://api.gladia.io",
  docs = "https://nango.dev/docs/api-integrations/gladia",
  auth = {
    kind = "key",
    header = "x-gladia-key",
    format = "{token}",
    env = "GLADIA_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["gladia.audio_to_text_controller_audio_transcription"] = { method = "POST", url = "https://api.gladia.io/audio/text/audio-transcription", body = {"audio", "audio_url", "language_behaviour", "language", "transcription_hint", "toggle_diarization", "diarization_num_speakers", "diarization_min_speakers", "diarization_max_speakers", "toggle_direct_translate", "target_translation_language", "output_format", "toggle_noise_reduction", "toggle_accurate_words_timestamps", "webhook_url"} },
    ["gladia.file_controller_upload_v2"] = { method = "POST", url = "https://api.gladia.io/v2/upload", body = {"audio_url"} },
    ["gladia.history_controller_get_list_v1"] = { method = "GET", url = "https://api.gladia.io/v1/history", query = {"offset", "limit", "date", "before_date", "after_date", "status", "custom_metadata", "kind"} },
    ["gladia.models_controller_list_v1"] = { method = "GET", url = "https://api.gladia.io/v1/models" },
    ["gladia.pre_recorded_controller_delete_pre_recorded_job_v2"] = { method = "DELETE", url = "https://api.gladia.io/v2/pre-recorded/{id}", path = {"id"} },
    ["gladia.pre_recorded_controller_get_audio_v2"] = { method = "GET", url = "https://api.gladia.io/v2/pre-recorded/{id}/file", path = {"id"} },
    ["gladia.pre_recorded_controller_get_pre_recorded_job_v2"] = { method = "GET", url = "https://api.gladia.io/v2/pre-recorded/{id}", path = {"id"} },
    ["gladia.pre_recorded_controller_get_pre_recorded_jobs_v2"] = { method = "GET", url = "https://api.gladia.io/v2/pre-recorded", query = {"offset", "limit", "date", "before_date", "after_date", "status", "custom_metadata"} },
    ["gladia.pre_recorded_controller_init_pre_recorded_job_v2"] = { method = "POST", url = "https://api.gladia.io/v2/pre-recorded", body = {"custom_vocabulary", "custom_vocabulary_config", "callback_url", "callback", "callback_config", "subtitles", "subtitles_config", "diarization", "diarization_config", "translation", "translation_config", "summarization", "summarization_config", "named_entity_recognition", "custom_spelling", "custom_spelling_config", "sentiment_analysis", "audio_to_llm", "audio_to_llm_config", "pii_redaction", "pii_redaction_config", "custom_metadata", "sentences", "punctuation_enhanced", "language_config", "model", "audio_url"} },
    ["gladia.streaming_controller_delete_streaming_job_v2"] = { method = "DELETE", url = "https://api.gladia.io/v2/live/{id}", path = {"id"} },
    ["gladia.streaming_controller_get_audio_v2"] = { method = "GET", url = "https://api.gladia.io/v2/live/{id}/file", path = {"id"} },
    ["gladia.streaming_controller_get_streaming_job_v2"] = { method = "GET", url = "https://api.gladia.io/v2/live/{id}", path = {"id"} },
    ["gladia.streaming_controller_get_streaming_jobs_v2"] = { method = "GET", url = "https://api.gladia.io/v2/live", query = {"offset", "limit", "date", "before_date", "after_date", "status", "custom_metadata"} },
    ["gladia.streaming_controller_init_streaming_session_v2"] = { method = "POST", url = "https://api.gladia.io/v2/live", query = {"region"}, body = {"encoding", "bit_depth", "sample_rate", "channels", "custom_metadata", "model", "endpointing", "maximum_duration_without_endpointing", "language_config", "pre_processing", "realtime_processing", "post_processing", "messages_config", "callback", "callback_config"} },
    ["gladia.streaming_controller_patch_request_params_v2"] = { method = "PATCH", url = "https://api.gladia.io/v2/live/{id}", path = {"id"} },
    ["gladia.transcription_controller_delete_transcript_v2"] = { method = "DELETE", url = "https://api.gladia.io/v2/transcription/{id}", path = {"id"} },
    ["gladia.transcription_controller_get_audio_v2"] = { method = "GET", url = "https://api.gladia.io/v2/transcription/{id}/file", path = {"id"} },
    ["gladia.transcription_controller_get_transcript_v2"] = { method = "GET", url = "https://api.gladia.io/v2/transcription/{id}", path = {"id"} },
    ["gladia.transcription_controller_init_pre_recorded_job_v2"] = { method = "POST", url = "https://api.gladia.io/v2/transcription", body = {"custom_vocabulary", "custom_vocabulary_config", "callback_url", "callback", "callback_config", "subtitles", "subtitles_config", "diarization", "diarization_config", "translation", "translation_config", "summarization", "summarization_config", "named_entity_recognition", "custom_spelling", "custom_spelling_config", "sentiment_analysis", "audio_to_llm", "audio_to_llm_config", "pii_redaction", "pii_redaction_config", "custom_metadata", "sentences", "punctuation_enhanced", "language_config", "model", "audio_url"} },
    ["gladia.transcription_controller_list_v2"] = { method = "GET", url = "https://api.gladia.io/v2/transcription", query = {"offset", "limit", "date", "before_date", "after_date", "status", "custom_metadata", "kind"} },
    ["gladia.video_to_text_controller_video_transcription"] = { method = "POST", url = "https://api.gladia.io/video/text/video-transcription", body = {"video", "video_url", "language_behaviour", "language", "transcription_hint", "toggle_diarization", "diarization_num_speakers", "diarization_min_speakers", "diarization_max_speakers", "toggle_direct_translate", "target_translation_language", "output_format", "toggle_noise_reduction", "toggle_accurate_words_timestamps", "webhook_url"} },
  },
}
