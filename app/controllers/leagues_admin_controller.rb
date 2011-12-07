class LeaguesAdminController < ApplicationController
  before_filter :authenticate_user!
  
  layout "backend"
  
  active_scaffold :league do |conf|
    config.label = "Leagues"
    config.columns = [:name, :alias, :country, :logo, :url, :description]
    list.sorting = {:name => 'ASC'}
  end
end 