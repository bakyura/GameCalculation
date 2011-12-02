class BettingPredictionsController < ApplicationController
  before_filter :authenticate_user!
  
  layout "backend"
  
  active_scaffold :betting_prediction do |conf|
    config.label = "Bookmakers"
    config.columns = [:game_id, :r_1, :r_x, :r_2]
    list.sorting = {:game_id => 'ASC'}
  end
end