class PagesController < ActionController::Base

  layout "backend"

  active_scaffold :page do |config|
    config.label = "Static HTML pages"
    config.columns = [:name, :alias, :title, :body]
    columns[:body].form_ui = :ckeditor
    config.columns[:body].options = {:width => "100%"}
    
    list.sorting = {:name => 'ASC'}
  end
end
