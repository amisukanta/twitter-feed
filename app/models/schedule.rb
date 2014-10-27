class Schedule < ActiveRecord::Base
  
  scope :set_cron, ->{where(active: true).map {|c|c.cron}.join(",").html_safe}
end
