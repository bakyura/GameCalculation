class FootballClubsController < ApplicationController
  #before_filter :authenticate_user!
  
  layout "frontend"

  def index
    @clubs = FootballClub.find(:all)
    @league = League.first(:conditions => {:country => 'DEU'})
  end
  
  def details
    @club = FootballClub.find_by_id params[:id]
    @league = League.first(:conditions => {:country => 'DEU'})
  end
end