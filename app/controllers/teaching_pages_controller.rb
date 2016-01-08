class TeachingPagesController < ApplicationController

	before_action :authenticate_user!
	
	@active_0 = ""
	@active_1 = ""
	@active_2 = ""
	@active_3 = ""
	@active_4 = ""
	@active_5 = ""
	@active_6 = ""
	@active_7 = ""
  
  def home
  		@active_0 = "active"
		@next_page = teaching_pages_learning_path
		@previous_page = "#"
  end

  def learning
  	@active_1 = "active"
	@next_page = teaching_pages_adult_path
	@previous_page = teaching_pages_home_path
	@tabs = Hash.new
	@tabs["tab1"] = "Survey"
	@tabs["tab2"] = "Aspects"
	@tabs["tab3"] = "Instruction"
	@tabs["tab4"] = "How"
	@tabs["tab5"] = "Retention"
	@tabs["tab6"] = "Recall"
  end

  def adult
    @active_2 = "active"
	@next_page = teaching_pages_domains_path
	@previous_page = teaching_pages_learning_path
	@tabs = Hash.new
	@tabs["tab1"] = ""
	
  end

  def domains
    @active_3 = "active"
	@next_page = teaching_pages_barriers_path
	@previous_page = teaching_pages_adult_path
	@tabs = Hash.new
	@tabs["tab1"] = "Bloom's Taxonomy"
	@tabs["tab2"] = "Levels"
  end

  def barriers
	@active_4 = "active"
	@next_page = teaching_pages_guiding_path
	@previous_page = teaching_pages_domains_path
	@tabs = Hash.new
	@tabs["tab1"] = "Learning Barriers"
	@tabs["tab2"] = "Examples"
  end

  def guiding
    @active_5 = "active"
	@next_page = teaching_pages_theory_path
	@previous_page = teaching_pages_barriers_path
	@tabs = Hash.new
	@tabs["tab1"] = "ABCDE Method"
	@tabs["tab2"] = "Student Example"
	@tabs["tab3"] = "Facility Example"
	@tabs["tab4"] = "Activity"
  end

  def theory
    @active_6 = "active"
	@next_page = teaching_pages_self_path
	@previous_page = teaching_pages_guiding_path
	@tabs = Hash.new
	@tabs["tab1"] = "Behaviorists"
	@tabs["tab2"] = "Developmental"
	@tabs["tab3"] = "InformationProcessing"
	@tabs["tab4"] = "SocialCognitive"
  end

  def self
    @active_7 = "active"
	@next_page = new_teaching_activity_path
	@previous_page = teaching_pages_theory_path
	@tabs = Hash.new
	@tabs["tab1"] = "Goal"
	@tabs["tab2"] = "Levels"
	@tabs["tab3"] = "Model"
	@tabs["tab4"] = "Conclusion"
  end
end
