-- Nanonets — every call this API accepts, as data.
--
-- GENERATED from https://raw.githubusercontent.com/NanoNets/api-docs/main/nanonets_openapi_3.1.0.yaml
-- Published by NanoNets, the vendor's own GitHub organisation.
-- 17 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "nanonets",
  name = "Nanonets",
  base = "https://app.nanonets.com",
  docs = "https://nango.dev/docs/api-integrations/nanonets",
  auth = {
    kind = "basic",
    header = "authorization",
    format = "Bearer {token}",
    env = nil,
    user_env = "NANONETS_USER",
    pass_env = "NANONETS_PASS",
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["nanonets.ic_model_all"] = { method = "GET", url = "https://app.nanonets.com/api/v2/ImageCategorization/Models" },
    ["nanonets.ic_model_id"] = { method = "GET", url = "https://app.nanonets.com/api/v2/ImageCategorization/Model", query = {"id"} },
    ["nanonets.ic_predict_file"] = { method = "POST", url = "https://app.nanonets.com/api/v2/ImageCategorization/LabelFile", body = {"modelId", "file"} },
    ["nanonets.ic_predict_url"] = { method = "POST", url = "https://app.nanonets.com/api/v2/ImageCategorization/LabelUrls", body = {"modelId", "urls"} },
    ["nanonets.ic_train"] = { method = "POST", url = "https://app.nanonets.com/api/v2/ImageCategorization/Train", query = {"modelId"} },
    ["nanonets.ic_upload_file"] = { method = "POST", url = "https://app.nanonets.com/api/v2/ImageCategorization/UploadFile", body = {"modelId", "category", "file"} },
    ["nanonets.ic_upload_url"] = { method = "POST", url = "https://app.nanonets.com/api/v2/ImageCategorization/UploadUrls", body = {"modelId", "category", "urls"} },
    ["nanonets.ocr_model_id"] = { method = "GET", url = "https://app.nanonets.com/api/v2/OCR/Model/{model_id}", path = {"model_id"} },
    ["nanonets.ocr_predict_file"] = { method = "POST", url = "https://app.nanonets.com/api/v2/OCR/Model/{model_id}/LabelFile", path = {"model_id"} },
    ["nanonets.ocr_predict_file_async"] = { method = "POST", url = "https://app.nanonets.com/api/v2/OCR/Model/{model_id}/LabelFile/", path = {"model_id"}, query = {"async"} },
    ["nanonets.ocr_predict_get_file"] = { method = "GET", url = "https://app.nanonets.com/api/v2/Inferences/Model/{model_id}/ImageLevelInferences", path = {"model_id"}, query = {"start_day_interval", "current_batch_day"} },
    ["nanonets.ocr_predict_id"] = { method = "GET", url = "https://app.nanonets.com/api/v2/Inferences/Model/{model_id}/ImageLevelInferences/{id}", path = {"model_id", "id"} },
    ["nanonets.ocr_predict_url"] = { method = "POST", url = "https://app.nanonets.com/api/v2/OCR/Model/{model_id}/LabelUrls", path = {"model_id"} },
    ["nanonets.ocr_predict_url_async"] = { method = "POST", url = "https://app.nanonets.com/api/v2/OCR/Model/{model_id}/LabelUrls/", path = {"model_id"}, query = {"async"} },
    ["nanonets.ocr_train"] = { method = "POST", url = "https://app.nanonets.com/api/v2/OCR/Model/{model_id}/Train", path = {"model_id"} },
    ["nanonets.ocr_upload_file"] = { method = "POST", url = "https://app.nanonets.com/api/v2/OCR/Model/{model_id}/UploadFile", path = {"model_id"}, body = {"data", "file"} },
    ["nanonets.ocr_upload_url"] = { method = "POST", url = "https://app.nanonets.com/api/v2/OCR/Model/{model_id}/UploadUrls", path = {"model_id"}, header = {"Content-Type"} },
  },
}
