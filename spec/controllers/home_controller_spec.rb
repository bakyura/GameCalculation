require "spec_helper"

describe HomeController do
  describe "rss import" do
    before do
      @home = HomeController.new
    end
 
    it "shoult not return nil" do
      @home.news.should_not == nil
    end
    
    it "shoult not return zero count nil" do
      @home.news.items.should_not == 0
    end
  end
end