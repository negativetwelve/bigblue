class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :type
      t.integer :user_id
      t.string :token
      t.string :secret

      t.timestamps
    end
  end
end
