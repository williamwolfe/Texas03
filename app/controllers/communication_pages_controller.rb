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
	@tabs["tab1"] = "Factors"
	@tabs["tab2"] = "Words"
	@tabs["tab3"] = "Number"
	@tabs["tab4"] = "Interruptions"
	@tabs["tab5"] = "Tone"
	@tabs["tab6"] = "Argument"
  end

  def nonverbal
  	@active_4 = "active"
	@next_page = communication_pages_feedback_path
	@previous_page = communication_pages_verbal_path
	@tabs = Hash.new
	@tabs["tab1"] = "Gestures"
	@tabs["tab2"] = "Time"
	@tabs["tab3"] = "Alignment"
	@tabs["tab4"] = "Space"
	@tabs["tab5"] = "Power"
	@tabs["tab6"] = "Listen"
  end

  def feedback
  	@active_5 = "active"
	@next_page = new_communication_activity_path
	@previous_page = communication_pages_nonverbal_path
	@tabs = Hash.new
	@tabs["tab1"] = "Concepts"
	@tabs["tab2"] = "Activities"
	@tabs["tab3"] = "Court"
	@tabs["tab4"] = "Keys"
	@tabs["tab5"] = "Strategies"
	@tabs["tab6"] = "Components"
  end
end
