class CreateResourceCollections < ActiveRecord::Migration
  def change
    create_table :resource_collections do |t|
      t.string :resource_name
      t.string :date
      t.text :collected

      t.timestamps
    end
  end
end
