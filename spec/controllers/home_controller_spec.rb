require "spec_helper"

describe HomeController do
  describe "rss import" do
    it "shoult not return nil" do
      home = HomeController.new
      home.news.should_not == nil
    end
  end
end