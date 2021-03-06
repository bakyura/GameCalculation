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
    
    @tour8 = 22
    @matches8 = FootballMatch.find(:all, :conditions => { :tour => @tour8, :league => @league.id})
    
    @tour9 = 23
    @matches9 = FootballMatch.find(:all, :conditions => { :tour => @tour9, :league => @league.id})
    
    @tour10 = 24
    @matches10 = FootballMatch.find(:all, :conditions => { :tour => @tour10, :league => @league.id})
    
    @tour11 = 25
    @matches11 = FootballMatch.find(:all, :conditions => { :tour => @tour11, :league => @league.id})
    
    @tour12 = 26
    @matches12 = FootballMatch.find(:all, :conditions => { :tour => @tour12, :league => @league.id})
    
    @tour13 = 27
    @matches13 = FootballMatch.find(:all, :conditions => { :tour => @tour13, :league => @league.id})
    
    @tour14 = 28
    @matches14 = FootballMatch.find(:all, :conditions => { :tour => @tour14, :league => @league.id})
    
    @tour15 = 29
    @matches15 = FootballMatch.find(:all, :conditions => { :tour => @tour15, :league => @league.id})  
    
    @tour16 = 30
    @matches16 = FootballMatch.find(:all, :conditions => { :tour => @tour16, :league => @league.id})  
    
    @tour17 = 31
    @matches17 = FootballMatch.find(:all, :conditions => { :tour => @tour17, :league => @league.id})  
    
    @tour18 = 32
    @matches18 = FootballMatch.find(:all, :conditions => { :tour => @tour18, :league => @league.id})  
    
    @tour19 = 33
    @matches19 = FootballMatch.find(:all, :conditions => { :tour => @tour19, :league => @league.id})  
    
    @tour20 = 34
    @matches20 = FootballMatch.find(:all, :conditions => { :tour => @tour20, :league => @league.id})  
  end
end 