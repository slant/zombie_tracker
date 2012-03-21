class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :model
      t.integer :tires
      t.boolean :wrecked, default: false
      t.references :zombie

      t.timestamps
    end
    add_index :vehicles, :zombie_id
  end
end
