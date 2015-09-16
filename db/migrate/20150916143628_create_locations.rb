class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.text :address
      t.integer :organization_id

      t.timestamps
    end
  end
end
