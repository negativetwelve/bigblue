class AddUserIdToWalkingStatistic < ActiveRecord::Migration
  def change
    add_column :walking_statistics, :user_id, :integer
  end
end
