class Feed < ActiveRecord::Base

	def self.latest
    order('created_at desc').take(500)
  end

	def self.pull_tweets
    $client.search("#ukraine", since_id: maximum(:tweet_id), count: 10).take(10).each do |tweet|
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
