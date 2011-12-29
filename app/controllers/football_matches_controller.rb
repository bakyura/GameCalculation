class FootballMatchesController < ApplicationController
  #before_filter :authenticate_user!
  require 'rss'
  
  layout "frontend"

  def index
    @tour = 18
    @league = League.first(:conditions => {:country => 'DEU'})
    @matches = FootballMatch.find(:all, :conditions => { :tour => @tour, :league => @league.id})
  end
  
  def details
    @league = League.first(:conditions => {:country => 'DEU'})
    @matche = FootballMatch.find_by_id params[:id]
    @team1 = FootballClub.find_by_id @matche.home_team
    @team2 = FootballClub.find_by_id @matche.quest_team
    @tour = 18
    
    @will_hill = Bookmaker.first(:conditions => {:name => 'WillHill'})
    @bet_365 = Bookmaker.first(:conditions => {:name => 'Bet365'})
    @unibet = Bookmaker.first(:conditions => {:name => 'Unibet'})
    
    @social1 = SocialCommunication.first(:conditions => {:club_id => @team1.id})
    @social2 = SocialCommunication.first(:conditions => {:club_id => @team2.id})
    
    @rss1 = nil
    @rss1 = RSS::Parser.parse(open(@social1.rss).read, false) unless @social1.rss.nil?
    
    @rss2 = nil
    @rss2 = RSS::Parser.parse(open(@social2.rss).read, false) unless @social2.rss.nil?
    
    barometer = Barometer.new(@team1.location)
    @weather = barometer.measure
    @fame_day_weather = @weather.for(@matche.game_date.to_date)
    @fame_day_weather = @fame_day_weather.high.c unless @fame_day_weather.nil?
  end
end