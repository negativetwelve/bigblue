class WalkingStatistic < ActiveRecord::Base  #inherits from Health Statistic
  attr_accessible :distance_in_miles, :date, :time, :user_id
  
  belongs_to :user
end
