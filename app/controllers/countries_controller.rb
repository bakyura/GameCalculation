class CountriesController < ActionController::Base
  before_filter :authenticate_user!

  layout "backend"

  def index
    @countries = Country.find(:all, :conditions => {:is_enabled => 1})
  end
end
