class BookmakersController < ApplicationController
  #before_filter :authenticate_user!
  
  layout "frontend"
  
  def index
    @bookmakers = Bookmaker.find(:all)
  end
end