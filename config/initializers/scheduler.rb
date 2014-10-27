require 'rufus-scheduler'

#$scheduler = Rufus::Scheduler.new
@crons = Schedule.set_cron

Rufus::Scheduler.singleton.cron("10 #{@crons} * * *") { Feed.pull_tweets }