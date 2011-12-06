class NewsController < ApplicationController
  before_filter :authenticate_user!
  
  layout "backend"
  
  active_scaffold :news do |conf|
    config.label = "News"
    config.columns = [:title, :description, :image, :body, :is_show]
    list.sorting = {:created_at => 'DESC'}
  end
end