json.array!(@student_evaluation_case2s) do |student_evaluation_case2|
  json.extract! student_evaluation_case2, :id, :user_id, :rate, :plan
  json.url student_evaluation_case2_url(student_evaluation_case2, format: :json)
end
