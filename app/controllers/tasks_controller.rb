class TasksController < ActionController::Base
  before_filter :authenticate_user!

  layout "backend"

  active_scaffold :task do |config|
    config.label = "Admin Tasks. Coming soon"
    config.columns = [:name, :status, :description]
    
    list.sorting = {:name => 'ASC'}
  end
end
