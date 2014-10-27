class Feed < ActiveRecord::Base


	def self.pull_tweets
    $client.search("#ukraine", since_id: maximum(:tweet_id), count: 500, :result_type => "recent").take(500).each do |tweet|
      unless exists?(tweet_id: tweet.id)
        create!(
          tweet_id: tweet.id,
          content: tweet.text,
          screen_name: tweet.user.screen_name,
        )
      end
    end
  end
  

end
