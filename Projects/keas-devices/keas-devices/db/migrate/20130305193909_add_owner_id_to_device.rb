class AddOwnerIdToDevice < ActiveRecord::Migration
  def change
    add_column :devices, :owner_id, :string 
  end
end
