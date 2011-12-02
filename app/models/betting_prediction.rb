class BettingPrediction < ActiveRecord::Base
  belongs_to :football_match
  belongs_to :bookmaker
end
