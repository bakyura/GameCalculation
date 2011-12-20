class TestsController < ActionController::Base
  before_filter :authenticate_user!

  layout "backend"

    active_scaffold :test do |config|
    config.label = "Admin Tests. Coming soon"
    config.columns = [:name, :status, :description]
    
    list.sorting = {:name => 'ASC'}
  end
end
