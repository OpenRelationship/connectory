-- DynaPictures — every call this API accepts, as data.
--
-- GENERATED from https://dynapictures.com/openapi.json
-- Published on the vendor's own documentation site (https://dynapictures.com).
-- 27 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "dynapictures",
  name = "DynaPictures",
  base = "https://api.dynapictures.com",
  docs = "https://nango.dev/docs/api-integrations/dynapictures",
  auth = {
    kind = "key",
    header = "authorization",
    format = "Bearer {token}",
    env = "DYNAPICTURES_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["dynapictures.add_layer"] = { method = "POST", url = "https://api.dynapictures.com/designs/{uid}/layers", path = {"uid"}, body = {"type", "pageIndex", "text", "imageUrl", "prompt", "color", "backgroundColor", "fontSize", "textAlign", "fontFamily", "fontWeight", "aiModel", "aiAspectRatio", "x", "y", "width", "height", "zIndex"} },
    ["dynapictures.create_design"] = { method = "POST", url = "https://api.dynapictures.com/designs", body = {"workspaceUid", "name", "width", "height"} },
    ["dynapictures.create_workspace"] = { method = "POST", url = "https://api.dynapictures.com/workspaces", body = {"name"} },
    ["dynapictures.delete_generated_image"] = { method = "DELETE", url = "https://api.dynapictures.com/images/{teamUid}/{filename}", path = {"teamUid", "filename"} },
    ["dynapictures.delete_layer"] = { method = "DELETE", url = "https://api.dynapictures.com/designs/{uid}/layers/{layerId}", path = {"uid", "layerId"} },
    ["dynapictures.delete_media_asset"] = { method = "DELETE", url = "https://api.dynapictures.com/media/{workspaceId}/assets/{assetId}", path = {"workspaceId", "assetId"} },
    ["dynapictures.delete_workspace"] = { method = "DELETE", url = "https://api.dynapictures.com/workspaces/{workspaceId}", path = {"workspaceId"} },
    ["dynapictures.generate_batch_pdf"] = { method = "POST", url = "https://api.dynapictures.com/batch", body = {"templateId", "format", "metadata", "pages"} },
    ["dynapictures.generate_image"] = { method = "POST", url = "https://api.dynapictures.com/designs/{uid}", path = {"uid"}, body = {"format", "metadata", "params", "pages", "responseFormat"} },
    ["dynapictures.get_ai_generation"] = { method = "GET", url = "https://api.dynapictures.com/ai/generate/{jobUid}", path = {"jobUid"} },
    ["dynapictures.get_media_asset"] = { method = "GET", url = "https://api.dynapictures.com/media/{workspaceId}/assets/{assetId}", path = {"workspaceId", "assetId"} },
    ["dynapictures.get_template"] = { method = "GET", url = "https://api.dynapictures.com/templates/{uid}", path = {"uid"} },
    ["dynapictures.list_media_assets"] = { method = "GET", url = "https://api.dynapictures.com/media/{workspaceId}/assets", path = {"workspaceId"}, query = {"p"} },
    ["dynapictures.list_templates"] = { method = "GET", url = "https://api.dynapictures.com/templates", query = {"workspace_id"} },
    ["dynapictures.list_workspaces"] = { method = "GET", url = "https://api.dynapictures.com/workspaces" },
    ["dynapictures.render_image_link"] = { method = "GET", url = "https://api.dynapictures.com/links/{uid}.{format}", path = {"uid", "format"}, query = {"params", "metadata"} },
    ["dynapictures.reorder_layer"] = { method = "POST", url = "https://api.dynapictures.com/designs/{uid}/layers/{layerId}/z-index", path = {"uid", "layerId"}, body = {"op", "zIndex"} },
    ["dynapictures.replace_media_asset"] = { method = "PUT", url = "https://api.dynapictures.com/media/{workspaceId}/assets/{assetId}", path = {"workspaceId", "assetId"}, body = {"file", "folderUid"} },
    ["dynapictures.resize_canvas"] = { method = "POST", url = "https://api.dynapictures.com/designs/{uid}/canvas/resize", path = {"uid"}, body = {"width", "height"} },
    ["dynapictures.search_generated_images"] = { method = "GET", url = "https://api.dynapictures.com/generated-images", query = {"keyword", "metadata", "startDate", "endDate"} },
    ["dynapictures.start_ai_generation"] = { method = "POST", url = "https://api.dynapictures.com/ai/generate", body = {"modelId", "prompt", "ratio", "sourceImage", "referenceImages"} },
    ["dynapictures.subscribe_webhook"] = { method = "POST", url = "https://api.dynapictures.com/hooks", body = {"targetUrl", "eventType", "templateId"} },
    ["dynapictures.unsubscribe_webhook"] = { method = "DELETE", url = "https://api.dynapictures.com/hooks", body = {"targetUrl", "eventType", "templateId"} },
    ["dynapictures.update_layer"] = { method = "PATCH", url = "https://api.dynapictures.com/designs/{uid}/layers/{layerId}", path = {"uid", "layerId"}, body = {"x", "y", "width", "height", "text", "styles"} },
    ["dynapictures.update_workspace"] = { method = "PUT", url = "https://api.dynapictures.com/workspaces/{workspaceId}", path = {"workspaceId"}, body = {"name"} },
    ["dynapictures.upload_media_asset"] = { method = "POST", url = "https://api.dynapictures.com/media/{workspaceId}/assets", path = {"workspaceId"}, body = {"file", "folderUid"} },
    ["dynapictures.upload_media_asset_from_url"] = { method = "POST", url = "https://api.dynapictures.com/media/{workspaceId}/assets/from-url", path = {"workspaceId"}, body = {"url", "base64", "mimeType", "name", "folderUid"} },
  },
}
