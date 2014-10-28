require 'rufus-scheduler'

#$scheduler = Rufus::Scheduler.new
#@crons = Schedule.set_cron

Rufus::Scheduler.singleton.cron("20 12 * * *") { Feed.pull_tweets }