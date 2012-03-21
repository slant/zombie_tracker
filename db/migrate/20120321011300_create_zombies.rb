class CreateZombies < ActiveRecord::Migration
  def change
    create_table :zombies do |t|
      t.string :name
      t.integer :health
      t.boolean :alive, default: true

      t.timestamps
    end
  end
end
