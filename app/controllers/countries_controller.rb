class CountriesController < ActionController::Base

  layout "backend"

  active_scaffold :country do |config|
    config.label = "Countries"
    config.columns = [:name, :description]
    list.sorting = {:name => 'ASC'}
  end
end
