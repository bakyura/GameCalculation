class FootballMatchesController < ApplicationController
  before_filter :authenticate_user!
  
  layout "backend"

  def index
    @matches = FootballMatch.find(:all, :conditions => { :tour => '15'})
  end
end