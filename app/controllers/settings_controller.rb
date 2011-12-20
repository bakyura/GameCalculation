class SettingsController < ApplicationController
  before_filter :authenticate_user!
  
  layout "backend"
  
  active_scaffold :setting do |config|
    config.label = "User settings"
    config.columns = [:name, :value]
    list.sorting = {:name => 'ASC'}
  end 
end 