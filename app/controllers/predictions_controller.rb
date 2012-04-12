class PredictionsController < ApplicationController
  #before_filter :authenticate_user!
  require 'rss'
  
  layout "frontend"

  def index
    @tour = 31
    @league = League.first(:conditions => {:country => 'DEU'})
    @matches = FootballMatch.find(:all, :conditions => { :tour => @tour, :league => @league.id})
    
    @will_hill = Bookmaker.first(:conditions => {:name => 'WillHill'})
    @bet_365 = Bookmaker.first(:conditions => {:name => 'Bet365'})
    @unibet = Bookmaker.first(:conditions => {:name => 'Unibet'})
  end
end