class FootballMatchesController < ApplicationController
  before_filter :authenticate_user!
  
  layout "backend"

  def index
    @league = League.first(:conditions => {:country => 'DEU'})
    @matches = FootballMatch.find(:all, :conditions => { :tour => '16', :league => @league.id})
    @tour = 16
  end
  
  def details
    @league = League.first(:conditions => {:country => 'DEU'})
    @matche = FootballMatch.find_by_id params[:id]
    @team1 = FootballClub.find_by_id @matche.home_team
    @team2 = FootballClub.find_by_id @matche.quest_team
    @tour = 16
  end
end