json.array!(@evaluation_credits) do |evaluation_credit|
  json.extract! evaluation_credit, :id, :user_id, :list_skills_1, :rating_1, :list_skills_2, :selected_skill, :rating_2, :support
  json.url evaluation_credit_url(evaluation_credit, format: :json)
end
