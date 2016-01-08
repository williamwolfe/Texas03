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
	@tabs = Hash.new
	@tabs["tab1"] = "Performance"
  end

  def tool
    @active_2 = "active"
	@next_page = student_evaluation_structure_path
	@previous_page = student_evaluation_performance_path
	@tabs = Hash.new
	@tabs["tab1"] = "Philosophy"
	@tabs["tab2"] = "Features"
	@tabs["tab3"] = "Standards"
  end

  def structure
    @active_3 = "active"
	@next_page = student_evaluation_ptmacs_path
	@previous_page = student_evaluation_tool_path
	@tabs = Hash.new
	@tabs["tab1"] = "Structure"
	@tabs["tab2"] = "Template"
  end

  def ptmacs
    @active_4 = "active"
	@next_page = student_evaluation_learning_path
	@previous_page = student_evaluation_structure_path
	@tabs = Hash.new
	@tabs["tab1"] = "Content"
	@tabs["tab2"] = "Skills"
	@tabs["tab3"] = "Sheets"
	@tabs["tab4"] = "Forms"
  end

  def learning
    @active_5 = "active"
	@next_page = student_evaluation_use_path
	@previous_page = student_evaluation_ptmacs_path
	@tabs = Hash.new
	@tabs["tab1"] = "Grading"
	@tabs["tab2"] = "Student_Training"
	@tabs["tab3"] = "CI_Training"
	@tabs["tab4"] = "Planning"
	@tabs["tab5"] = "Responsibility"
  end

  def use
    @active_6 = "active"
	@next_page = new_student_evaluation_case2_path
	@previous_page = student_evaluation_learning_path
	@tabs = Hash.new
	@tabs["tab1"] = "Document"
	@tabs["tab2"] = "Rate"
	@tabs["tab3"] = "Approve"
	@tabs["tab4"] = "Comment"
	@tabs["tab5"] = "Report"
	@tabs["tab6"] = "Evaluate"
	@tabs["tab7"] = "Required"
  end
end
