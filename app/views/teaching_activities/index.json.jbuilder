json.array!(@teaching_activities) do |teaching_activity|
  json.extract! teaching_activity, :id, :user_id, :activity1, :activity2
  json.url teaching_activity_url(teaching_activity, format: :json)
end
