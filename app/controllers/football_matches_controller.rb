class FootballMatchesController < ApplicationController
  #before_filter :authenticate_user!
  
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
  end
end