class FootballMatch < ActiveRecord::Base
  has_many :betting_prediction
  has_one :prediction
end
