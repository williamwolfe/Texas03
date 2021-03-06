class PlanningPagesController < ApplicationController

	before_action :authenticate_user!
	
	@active_0 = ""
	@active_1 = ""
	@active_2 = ""
	@active_3 = ""
	@active_4 = ""
	@active_5 = ""
	@active_6 = ""
	@active_7 = ""
	@active_8 = ""
	
	def planning_home	
		@active_0 = "active"
		@next_page = planning_pages_tx_consortium_path
		@previous_page = "#"
	end

  def tx_consortium
	@active_1 = "active"
	@next_page = planning_pages_philosophy_path
	@previous_page = planning_pages_planning_home_path
	@tabs = Hash.new
	@tabs["tab1"] = "Texas Consortium"
	@tabs["tab2"] = "Founded 1977"
	@tabs["tab3"] = "The Blue MACS"
  end

  def philosophy
	@active_2 = "active"
	@next_page = planning_pages_apta_link_path
	@previous_page = planning_pages_tx_consortium_path
	@tabs = Hash.new
	@tabs["tab1"] = "Educational Experiences"
	@tabs["tab2"] = "Decision Making Skills"
	@tabs["tab3"] = "Outcomes"	
  end

  def players
  end

  def apta_link
	@active_3 = "active"
	@next_page = planning_pages_site_development_path
	@previous_page = planning_pages_philosophy_path
	@tabs = Hash.new
	@tabs["tab1"] = "Guidelines for Clinical Educators"
	@tabs["tab2"] = "Link to APTA Website"
	@tabs["tab3"] = "Website Overview"
  end

  def site_development
	@active_4 = "active"
	@next_page = planning_pages_scheduling_path
	@previous_page = planning_pages_apta_link_path
	@tabs = Hash.new
	@tabs["tab1"] = "Steps"
	@tabs["tab2"] = "Repository"
	@tabs["tab3"] = "Site Visit"
	@tabs["tab4"] = "Contract"
  end

  def scheduling
	@active_5 = "active"
	@next_page = planning_pages_clinical_education_path
	@previous_page = planning_pages_site_development_path
	@tabs = Hash.new
	@tabs["tab1"] = "Mailing Date"
	@tabs["tab2"] = "Accomodation"
	@tabs["tab3"] = "Information Packet"
	@tabs["tab4"] = "On-Site Scheduling"
  end

  def clinical_education
	@active_6 = "active"
	@next_page = planning_pages_learning_experiences_path
	@previous_page = planning_pages_scheduling_path
	@tabs = Hash.new
	@tabs["tab1"] = "Research"
	@tabs["tab2"] = "Assignments"
	@tabs["tab3"] = "Contact"
	@tabs["tab4"] = "OnSite"
	@tabs["tab5"] = "Orientation"
	@tabs["tab6"] = "CI"
  end

  def learning_experiences
	@active_7 = "active"
	@next_page = planning_pages_legal_issues_path
	@previous_page = planning_pages_clinical_education_path
	@tabs = Hash.new
	@tabs["tab1"] = "Opportunities"
	@tabs["tab2"] = "PTMACS"
	@tabs["tab3"] = "Process"
	@tabs["tab4"] = "Objectives"
	@tabs["tab5"] = "Evaluation"
  end

  def legal_issues
	@active_8 = "active"
	@next_page = new_planning_case1_path
	@previous_page = planning_pages_learning_experiences_path
	@tabs = Hash.new
	@tabs["tab1"] = "Supervision"
	@tabs["tab2"] = "Act"
	@tabs["tab3"] = "Consent"
	@tabs["tab4"] = "Harassment"
	@tabs["tab5"] = "Employee?"
	@tabs["tab6"] = "ADA"
	@tabs["tab7"] = "HIPAA"
  end

  def case_study
  end

  def to_receive_credit
  end
end
