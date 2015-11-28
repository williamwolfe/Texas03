json.array!(@planning_case1s) do |planning_case1|
  json.extract! planning_case1, :id, :user_id, :experiences, :orientation, :appropriate
  json.url planning_case1_url(planning_case1, format: :json)
end
