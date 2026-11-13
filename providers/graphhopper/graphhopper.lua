-- GraphHopper — every call this API accepts, as data.
--
-- GENERATED from https://api.apis.guru/v2/specs/graphhopper.com/1.0.0/openapi.json
-- APIs.guru's mirror of graphhopper.com, matched on graphhopper.com. A mirror lags the vendor.
-- 16 operations · do not edit
--
-- The credential is never in here. `auth.env` names an environment variable; the value
-- stays in the environment, which is what makes this file safe to publish.
return {
  provider = "graphhopper",
  name = "GraphHopper",
  base = "https://graphhopper.com/api",
  docs = "https://nango.dev/docs/api-integrations/graphhopper",
  auth = {
    kind = "key",
    header = "authorization",
    format = "Bearer {token}",
    env = "GRAPHHOPPER_API_KEY",
    user_env = nil,
    pass_env = nil,
    param = nil,
  },
  config = {},
  headers = {},
  operations = {
    ["graphhopper.async_clustering_problem"] = { method = "POST", url = "https://graphhopper.com/api/1/cluster/calculate", body = {"configuration", "customers"} },
    ["graphhopper.async_vrp"] = { method = "POST", url = "https://graphhopper.com/api/1/vrp/optimize", body = {"algorithm", "configuration", "cost_matrices", "objectives", "relations", "services", "shipments", "vehicle_types", "vehicles"} },
    ["graphhopper.calculate_matrix"] = { method = "POST", url = "https://graphhopper.com/api/1/matrix/calculate" },
    ["graphhopper.get_cluster_solution"] = { method = "GET", url = "https://graphhopper.com/api/1/cluster/solution/{jobId}", path = {"jobId"} },
    ["graphhopper.get_geocode"] = { method = "GET", url = "https://graphhopper.com/api/1/geocode", query = {"q", "locale", "limit", "reverse", "debug", "point", "provider"} },
    ["graphhopper.get_isochrone"] = { method = "GET", url = "https://graphhopper.com/api/1/isochrone", query = {"point", "time_limit", "distance_limit", "vehicle", "buckets", "reverse_flow", "weighting"} },
    ["graphhopper.get_matrix"] = { method = "GET", url = "https://graphhopper.com/api/1/matrix", query = {"point", "from_point", "to_point", "point_hint", "from_point_hint", "to_point_hint", "snap_prevention", "curbside", "from_curbside", "to_curbside", "out_array", "vehicle", "fail_fast", "turn_costs"} },
    ["graphhopper.get_matrix_solution"] = { method = "GET", url = "https://graphhopper.com/api/1/matrix/solution/{jobId}", path = {"jobId"} },
    ["graphhopper.get_route"] = { method = "GET", url = "https://graphhopper.com/api/1/route", query = {"point", "point_hint", "snap_prevention", "vehicle", "curbside", "turn_costs", "locale", "elevation", "details", "optimize", "instructions", "calc_points", "debug", "points_encoded", "ch.disable", "weighting", "heading", "heading_penalty", "pass_through", "block_area", "avoid", "algorithm", "round_trip.distance", "round_trip.seed", "alternative_route.max_paths", "alternative_route.max_weight_factor", "alternative_route.max_share_factor"} },
    ["graphhopper.get_route_info"] = { method = "GET", url = "https://graphhopper.com/api/1/route/info" },
    ["graphhopper.get_solution"] = { method = "GET", url = "https://graphhopper.com/api/1/vrp/solution/{jobId}", path = {"jobId"} },
    ["graphhopper.post_gpx"] = { method = "POST", url = "https://graphhopper.com/api/1/match", query = {"gps_accuracy", "vehicle"} },
    ["graphhopper.post_matrix"] = { method = "POST", url = "https://graphhopper.com/api/1/matrix" },
    ["graphhopper.post_route"] = { method = "POST", url = "https://graphhopper.com/api/1/route", body = {"algorithm", "alternative_route.max_paths", "alternative_route.max_share_factor", "alternative_route.max_weight_factor", "avoid", "block_area", "calc_points", "ch.disable", "curbsides", "debug", "details", "elevation", "heading_penalty", "headings", "instructions", "locale", "optimize", "pass_through", "point_hints", "points", "points_encoded", "round_trip.distance", "round_trip.seed", "snap_preventions", "vehicle", "weighting"} },
    ["graphhopper.solve_clustering_problem"] = { method = "POST", url = "https://graphhopper.com/api/1/cluster", body = {"configuration", "customers"} },
    ["graphhopper.solve_vrp"] = { method = "POST", url = "https://graphhopper.com/api/1/vrp", body = {"algorithm", "configuration", "cost_matrices", "objectives", "relations", "services", "shipments", "vehicle_types", "vehicles"} },
  },
}
