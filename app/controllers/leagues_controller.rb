class LeaguesController < ApplicationController
 #before_filter :authenticate_user!
  
  layout "frontend"
  
def index
    @leagues = League.find(:all)
  end
  
  def details
    @league = League.find_by_id params[:id]
    @country = Country.first(:conditions => {'alpha_3_code' => @league.country})
  end
end 