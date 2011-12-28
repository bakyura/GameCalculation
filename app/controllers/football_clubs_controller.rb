class FootballClubsController < ApplicationController
  #before_filter :authenticate_user!
  require 'rss'
  
  layout "frontend"

  def index
    @clubs = FootballClub.find(:all)
    @league = League.first(:conditions => {:country => 'DEU'})
  end
  
  def details
    @club = FootballClub.find_by_id params[:id]
    @league = League.first(:conditions => {:country => 'DEU'})
    @social = SocialCommunication.first(:conditions => {:club_id => @club.id})
    
    @rss = nil
    @rss = RSS::Parser.parse(open(@social.rss).read, false) unless @social.rss.nil?
  end
end