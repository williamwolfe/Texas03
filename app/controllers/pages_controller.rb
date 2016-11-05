class PagesController < ApplicationController

layout :set_layout

def set_layout
    case params[:action]
    	when "home"
      		"application"
    	else
      		"pages"
    end
end
  
  
  def home
  end
  
  def announcements
  end
  
  def members
  end
  
  def clinician
  end
  
  def related
  end

  def ptmacs
  end
  
  def resources
  end
  
  def ciccourse
  end
  
  def award
  end
  
  def award_Melzer
  end
  
  def award_Long
  end
  
  def ccus
  end

  def products
  end

  def cart_items
  end

  def sign_in
  end
end
