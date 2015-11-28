json.array!(@planning_credits) do |planning_credit|
  json.extract! planning_credit, :id, :user_id, :acute, :IP, :private, :corporate, :nonprofit, :pediatric, :school, :SNU, :SNF, :LTC, :other, :list
  json.url planning_credit_url(planning_credit, format: :json)
end
