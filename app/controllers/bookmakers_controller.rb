class BookmakersController < ApplicationController
  before_filter :authenticate_user!
  
  layout "backend"
  
  def index
    @bookmakers = Bookmaker.find(:all)
  end
end