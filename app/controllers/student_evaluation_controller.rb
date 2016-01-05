class StudentEvaluationController < ApplicationController
before_action :authenticate_user!
	
	@active_0 = ""
	@active_1 = ""
	@active_2 = ""
	@active_3 = ""
	@active_4 = ""
	@active_5 = ""
	@active_6 = ""

  def home
  	@active_0 = "active"
	@next_page = student_evaluation_performance_path
	@previous_page = "#"
  end

  def performance
  	@active_1 = "active"
	@next_page = student_evaluation_tool_path
	@previous_page = student_evaluation_home_path
  end

  def tool
    @active_2 = "active"
	@next_page = student_evaluation_structure_path
	@previous_page = student_evaluation_performance_path
  end

  def structure
    @active_3 = "active"
	@next_page = student_evaluation_ptmacs_path
	@previous_page = student_evaluation_tool_path
  end

  def ptmacs
    @active_4 = "active"
	@next_page = student_evaluation_learning_path
	@previous_page = student_evaluation_structure_path
  end

  def learning
    @active_5 = "active"
	@next_page = student_evaluation_use_path
	@previous_page = student_evaluation_ptmacs_path
  end

  def use
    @active_6 = "active"
	@next_page = new_student_evaluation_case2_path
	@previous_page = student_evaluation_learning_path
  end
end
