# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Schedule.destroy_all
story = Schedule.create!(cron: 13)
poem = Schedule.create!(cron: 16)
scifi = Schedule.create!(cron: 0)


p "created #{Schedule.count} crons"