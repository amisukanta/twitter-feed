class FeedsController < ApplicationController
  
  def index
  	  #Feed.pull_tweets
      #@tweets = $client.search("#ukraine", :count => 1, :result_type => "recent").take(1)
     #puts "#{tweet.user.screen_name}: #{tweet.text}"
   #end
   #@tweets =  $client.search("#ruby -rt", :lang => "ja").first.text
    #scheduler = Rufus::Scheduler.new
    
    @tweets = Feed.latest
    #puts @tweets.count
    @crons = Schedule.set_cron
    puts "#{@crons}"
  end
end
