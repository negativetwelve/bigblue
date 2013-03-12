class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.column :collectionType, :string
      t.column :date, :string
      t.column :ownerId, :string
      t.column :ownerType, :string
      t.column :subscriptionId, :string

      t.timestamps
    end
  end
end
