json.array!(@attempts) do |attempt|
  json.extract! attempt, :id, :user_id, :answer1, :answer2, :answer3, :answer4, :answer5, :answer6, :answer7, :answer8, :answer9, :answer10, :answer11, :answer12, :answer13, :answer14, :answer15, :answer16, :answer17, :answer18, :answer19, :answer20
  json.url attempt_url(attempt, format: :json)
end
