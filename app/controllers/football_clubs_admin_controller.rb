class FootballClubsAdminController < ApplicationController
  before_filter :authenticate_user!
  
  layout "backend"
  
  active_scaffold :football_clubs do |config|
    config.label = "Football Clubs Admin"
    config.columns = [:name, :alias, :logo, :location, :league, :web_site, :description]
    list.sorting = {:name => 'ASC'}
  end 
end