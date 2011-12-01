class BookmakersController < ApplicationController
  
  layout "backend"
  
  active_scaffold :bookmaker do |conf|
    config.label = "Bookmakers"
    config.columns = [:name, :web_site, :description]
    list.sorting = {:name => 'ASC'}
  end
end