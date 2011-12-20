class CountriesAdminController < ActionController::Base
  before_filter :authenticate_user!

  layout "backend"

  active_scaffold :country do |config|
    config.label = "Countries"
    config.columns = [:name, :description]
    list.sorting = {:name => 'ASC'}
  end
end
