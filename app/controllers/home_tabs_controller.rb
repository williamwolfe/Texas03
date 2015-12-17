class HomeTabsController < ApplicationController
  def home
  	@activeHome = "active"
  end

  def incorporation
  	@activeIncorporation = "active"
  end

  def purpose
  	@activePurpose = "active"
  end

  def programs
  	@activePrograms = "active"
  end

  def calendar
  	@activeCalendar = "active"
  end
end

