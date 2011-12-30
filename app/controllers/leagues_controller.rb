class LeaguesController < ApplicationController
  #before_filter :authenticate_user!
  require 'rss'
  
  layout "frontend"
  
def index
    @leagues = League.find(:all)
  end
  
  def details
    @league = League.find_by_id params[:id]
    @country = Country.first(:conditions => {'alpha_3_code' => @league.country})
    @social = LeaguesSocialCommunication.first(:conditions => {:league_id => @league.id})
    
    @rss = nil
    @rss = RSS::Parser.parse(open(@social.rss).read, false) unless @social.rss.nil?
  end
end 