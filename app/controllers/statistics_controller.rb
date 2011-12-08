class StatisticsController < ApplicationController
  before_filter :authenticate_user!
  
  layout "backend"
  
  def index
    @league = League.first(:conditions => {:country => 'DEU'})
    @tour = 15
    @matches = FootballMatch.find(:all, :conditions => { :tour => @tour, :league => @league.id})
    
    @will_hill = Bookmaker.first(:conditions => {:name => 'WillHill'})
    @bet_365 = Bookmaker.first(:conditions => {:name => 'Bet365'})
    @unibet = Bookmaker.first(:conditions => {:name => 'Unibet'})
  end
end 