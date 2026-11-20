-- CircleCI — every call this API accepts, as data.
--
-- GENERATED from https://api.apis.guru/v2/specs/circleci.com/v1/openapi.json
-- APIs.guru's mirror of circleci.com, matched on circleci.com. A mirror lags the vendor.
-- 22 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "circleci",
  name = "CircleCI",
  base = "https://circleci.com",
  docs = "https://nango.dev/docs/api-integrations/circleci",
  auth = {
    kind = "key",
    header = "authorization",
    format = "Bearer {token}",
    env = "CIRCLECI_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["circleci.delete_project_username_project_build_cache"] = { method = "DELETE", url = "https://circleci.com/api/v1/project/{username}/{project}/build-cache", path = {"username", "project"} },
    ["circleci.delete_project_username_project_checkout_key_fingerprint"] = { method = "DELETE", url = "https://circleci.com/api/v1/project/{username}/{project}/checkout-key/{fingerprint}", path = {"username", "project", "fingerprint"} },
    ["circleci.delete_project_username_project_envvar_name"] = { method = "DELETE", url = "https://circleci.com/api/v1/project/{username}/{project}/envvar/{name}", path = {"username", "project", "name"} },
    ["circleci.get_me"] = { method = "GET", url = "https://circleci.com/api/v1/me" },
    ["circleci.get_project_username_project"] = { method = "GET", url = "https://circleci.com/api/v1/project/{username}/{project}", path = {"username", "project"}, query = {"limit", "offset", "filter"} },
    ["circleci.get_project_username_project_build_num"] = { method = "GET", url = "https://circleci.com/api/v1/project/{username}/{project}/{build_num}", path = {"username", "project", "build_num"} },
    ["circleci.get_project_username_project_build_num_artifacts"] = { method = "GET", url = "https://circleci.com/api/v1/project/{username}/{project}/{build_num}/artifacts", path = {"username", "project", "build_num"} },
    ["circleci.get_project_username_project_build_num_tests"] = { method = "GET", url = "https://circleci.com/api/v1/project/{username}/{project}/{build_num}/tests", path = {"username", "project", "build_num"} },
    ["circleci.get_project_username_project_checkout_key"] = { method = "GET", url = "https://circleci.com/api/v1/project/{username}/{project}/checkout-key", path = {"username", "project"} },
    ["circleci.get_project_username_project_checkout_key_fingerprint"] = { method = "GET", url = "https://circleci.com/api/v1/project/{username}/{project}/checkout-key/{fingerprint}", path = {"username", "project", "fingerprint"} },
    ["circleci.get_project_username_project_envvar"] = { method = "GET", url = "https://circleci.com/api/v1/project/{username}/{project}/envvar", path = {"username", "project"} },
    ["circleci.get_project_username_project_envvar_name"] = { method = "GET", url = "https://circleci.com/api/v1/project/{username}/{project}/envvar/{name}", path = {"username", "project", "name"} },
    ["circleci.get_projects"] = { method = "GET", url = "https://circleci.com/api/v1/projects" },
    ["circleci.get_recent_builds"] = { method = "GET", url = "https://circleci.com/api/v1/recent-builds", query = {"limit", "offset"} },
    ["circleci.post_project_username_project"] = { method = "POST", url = "https://circleci.com/api/v1/project/{username}/{project}", path = {"username", "project"}, body = {"build_parameters", "parallel", "revision", "tag"} },
    ["circleci.post_project_username_project_build_num_cancel"] = { method = "POST", url = "https://circleci.com/api/v1/project/{username}/{project}/{build_num}/cancel", path = {"username", "project", "build_num"} },
    ["circleci.post_project_username_project_build_num_retry"] = { method = "POST", url = "https://circleci.com/api/v1/project/{username}/{project}/{build_num}/retry", path = {"username", "project", "build_num"} },
    ["circleci.post_project_username_project_checkout_key"] = { method = "POST", url = "https://circleci.com/api/v1/project/{username}/{project}/checkout-key", path = {"username", "project"} },
    ["circleci.post_project_username_project_envvar"] = { method = "POST", url = "https://circleci.com/api/v1/project/{username}/{project}/envvar", path = {"username", "project"} },
    ["circleci.post_project_username_project_ssh_key"] = { method = "POST", url = "https://circleci.com/api/v1/project/{username}/{project}/ssh-key", path = {"username", "project"}, header = {"Content-Type"}, body = {"hostname", "private_key"} },
    ["circleci.post_project_username_project_tree_branch"] = { method = "POST", url = "https://circleci.com/api/v1/project/{username}/{project}/tree/{branch}", path = {"username", "project", "branch"}, body = {"build_parameters", "parallel", "revision"} },
    ["circleci.post_user_heroku_key"] = { method = "POST", url = "https://circleci.com/api/v1/user/heroku-key" },
  },
}
