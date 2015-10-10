json.array!(@questions) do |question|
  json.extract! question, :id, :number, :Qtext, :optionA, :optionB, :optionC, :optionD, :optionE, :correct
  json.url question_url(question, format: :json)
end
