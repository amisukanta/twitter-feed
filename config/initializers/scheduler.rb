require 'rufus-scheduler'

#$scheduler = Rufus::Scheduler.new
@crons = Schedule.set_cron

Rufus::Scheduler.singleton.cron("0 #{@crons} * * *") { Feed.pull_tweets }