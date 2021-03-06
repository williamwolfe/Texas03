json.array!(@communication_activities) do |communication_activity|
  json.extract! communication_activity, :id, :user_id, :mono, :slow, :high_voice, :ascending, :terse, :abrupt_speed, :high_pitch, :aloof, :abrupt, :shy, :aggressive, :helpful, :unprepared, :bored, :content, :unhappy, :careless, :passive, :caring, :imaginative, :eager, :activity3_1, :activity3_2, :activity3_3, :activity3_4, :activity3_5, :activity3_6, :activity4
  json.url communication_activity_url(communication_activity, format: :json)
end
