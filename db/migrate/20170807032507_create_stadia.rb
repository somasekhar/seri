class CreateStadia < ActiveRecord::Migration[5.0]
  def change
    create_table :stadia do |t|
      t.integer :tracks
      t.integer :race_count

      t.timestamps
    end
  end
end
