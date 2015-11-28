json.array!(@evaluations) do |evaluation|
  json.extract! evaluation, :id,:user_id, :completion_date, :license, :address, :city, :state, :zip, :overall, :overall_comments, :develop, :develop_comments, :use, :use_comments, :feedback, :feedback_comments, :teaching, :teaching_comments, :topics, :advanced, :advance_topics, :add_comments
  json.url evaluation_url(evaluation, format: :json)
end
