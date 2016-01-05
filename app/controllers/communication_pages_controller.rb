class CommunicationPagesController < ApplicationController

	before_action :authenticate_user!
	
	@active_0 = ""
	@active_1 = ""
	@active_2 = ""
	@active_3 = ""
	@active_4 = ""
	@active_5 = ""
	
	
  def home
  		@active_0 = "active"
		@next_page = communication_pages_communication_path
		@previous_page = "#"
  end

  def communication 
  	@active_1 = "active"
	@next_page = communication_pages_three_path
	@previous_page = communication_pages_home_path
	@tabs = Hash.new
	@tabs["tab1"] = "Frederick"
	@tabs["tab2"] = "Definition"
	@tabs["tab3"] = "Preparation"
	@tabs["tab4"] = "Factors"
	@tabs["tab5"] = "Powell"
	@tabs["tab6"] = "Example"
	@tabs["tab7"] = "Communicate?"
  end

  def three 
  	@active_2 = "active"
	@next_page = communication_pages_verbal_path
	@previous_page = communication_pages_communication_path
	@tabs = Hash.new
	@tabs["tab1"] = "Culture"
	@tabs["tab2"] = "Gender"	
	@tabs["tab3"] = "Generation"	
  end

  def verbal
  	@active_3 = "active"
	@next_page = communication_pages_nonverbal_path
	@previous_page = communication_pages_three_path
	@tabs = Hash.new
	@tabs["tab1"] = "x"
	@tabs["tab2"] = "x"
	@tabs["tab3"] = "x"
  end

  def nonverbal
  	@active_4 = "active"
	@next_page = communication_pages_feedback_path
	@previous_page = communication_pages_verbal_path
	@tabs = Hash.new
	@tabs["tab1"] = "x"
	@tabs["tab2"] = "x"
	@tabs["tab3"] = "x"
	@tabs["tab4"] = "x"
  end

  def feedback
  	@active_5 = "active"
	@next_page = new_communication_activity_path
	@previous_page = communication_pages_nonverbal_path
	@tabs = Hash.new
	@tabs["tab1"] = "x"
	@tabs["tab2"] = "x"
	@tabs["tab3"] = "x"
	@tabs["tab4"] = "x"
	@tabs["tab5"] = "x"
	@tabs["tab6"] = "x"
	@tabs["tab7"] = "x"
  end
end
