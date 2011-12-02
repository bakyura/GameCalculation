class FootballClubsController < ApplicationController
  before_filter :authenticate_user!
  
  layout "backend"

  def index
    
  end
end