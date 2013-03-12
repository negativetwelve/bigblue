class CreateWalkingStatistics < ActiveRecord::Migration
  def change
    create_table :walking_statistics do |t|
      t.decimal :distance_in_miles
      t.string :date
      t.string :time

      t.timestamps
    end
  end
end
