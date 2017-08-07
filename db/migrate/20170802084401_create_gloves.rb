class CreateGloves < ActiveRecord::Migration[5.0]
  def change
    create_table :gloves do |t|
      t.integer :transaction_id
      t.string :glove_type

      t.timestamps
    end
  end
end
