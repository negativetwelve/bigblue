class AddDeviceIdtoResourceCollection < ActiveRecord::Migration
  def change
    add_column :resource_collections, :device_id, :integer
  end
end
