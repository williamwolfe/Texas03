class QuizController < ApplicationController
	before_action :authenticate_user!
  
  def display
  	@questions = Question.all
  	@attempt 	= Attempt.new 	
  	@last_attempt = Attempt.where(user_id:current_user.id).last 	
  end

  def results
  end
end
