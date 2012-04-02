class HomeController < ActionController::Base

  layout "frontend"
  require 'rss'
  require 'nokogiri'

  def index
  end
  
  def news
    @rss = RSS::Parser.parse(open('http://www.bundesliga.com/rss/en/liga/rss_news.xml').read, false) rescue nil
  end

  def supported_leagues
  end
  
  def assistant
  end
  
  def algoritms
  end
  
  def main
    @rss = RSS::Parser.parse(open('http://www.bundesliga.com/rss/en/liga/rss_news.xml').read, false) rescue nil
  end
  
  def bettings_strategy
  end
  
  def services
  end
      
  def about
  end
end
