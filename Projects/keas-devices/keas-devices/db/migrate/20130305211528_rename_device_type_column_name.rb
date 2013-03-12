class RenameDeviceTypeColumnName < ActiveRecord::Migration
  def up
    rename_column :devices, :type, :name
  end

  def down
    rename_column :devices, :name, :type
  end
end
