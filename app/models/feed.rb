class Feed < ActiveRecord::Base


	def self.pull_tweets
    $client.search("#ukraine", count: 500, :result_type => "recent").take(500).each do |tweet|
      
        create!(
          tweet_id: tweet.id,
          content: tweet.text,
          screen_name: tweet.user.screen_name
        )
      
    end
  end
  

end
