class StatisticsController < ApplicationController
  #before_filter :authenticate_user!
  
  layout "frontend"
  
  def index
    @league = League.first(:conditions => {:country => 'DEU'})
    @tour = 15
    @matches = FootballMatch.find(:all, :conditions => { :tour => @tour, :league => @league.id})
    
    @will_hill = Bookmaker.first(:conditions => {:name => 'WillHill'})
    @bet_365 = Bookmaker.first(:conditions => {:name => 'Bet365'})
    @unibet = Bookmaker.first(:conditions => {:name => 'Unibet'})
    
    @tour2 = 16
    @matches2 = FootballMatch.find(:all, :conditions => { :tour => @tour2, :league => @league.id})
    
    @tour3 = 17
    @matches3 = FootballMatch.find(:all, :conditions => { :tour => @tour3, :league => @league.id})
    
    @tour4 = 18
    @matches4 = FootballMatch.find(:all, :conditions => { :tour => @tour4, :league => @league.id})
    
    @tour5 = 19
    @matches5 = FootballMatch.find(:all, :conditions => { :tour => @tour5, :league => @league.id})
    
    @tour6 = 20
    @matches6 = FootballMatch.find(:all, :conditions => { :tour => @tour6, :league => @league.id})
    
    @tour7 = 21
    @matches7 = FootballMatch.find(:all, :conditions => { :tour => @tour7, :league => @league.id})
  end
end 