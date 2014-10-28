class FeedsController < ApplicationController
  
  def index
  	@crons = Schedule.set_cron

    Rufus::Scheduler.singleton.cron("0 #{@crons} * * *") { Feed.pull_tweets }
  	@feeds = Feed.paginate(:page => params[:page], :per_page => 500).order('created_at DESC')
  end
end
