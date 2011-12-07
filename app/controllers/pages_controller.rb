class PagesController < ActionController::Base
  before_filter :authenticate_user!

  layout "backend"

  active_scaffold :page do |config|
    config.label = "Static HTML pages"
    config.columns = [:name, :alias, :title, :body]
    config.columns[:body].options = {:width => "100%"}
    
    list.sorting = {:name => 'ASC'}
  end
end
