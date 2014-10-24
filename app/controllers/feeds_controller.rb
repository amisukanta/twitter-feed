class FeedsController < ApplicationController
  
  def index
  	  #Feed.pull_tweets
      @tweets = $client.search("#ukraine", :count => 1, :result_type => "recent").take(10)
     #puts "#{tweet.user.screen_name}: #{tweet.text}"
   #end
   #@tweets =  $client.search("#ruby -rt", :lang => "ja").first.text
    
    #@tweets = Feed.all
    #puts @tweets.count
  end
end
