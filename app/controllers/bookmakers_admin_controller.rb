class BookmakersAdminController < ApplicationController
  before_filter :authenticate_user!
  
  layout "backend"
  
  active_scaffold :bookmaker do |conf|
    config.label = "Bookmakers"
    config.columns = [:name, :web_site, :description]
    list.sorting = {:name => 'ASC'}
  end
end