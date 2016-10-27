class CreatePairings < ActiveRecord::Migration[5.0]
  def change
    create_table :pairings do |t|
      t.integer :wine_id
      t.integer :cheese_id

      t.timestamps
    end
  end
end
