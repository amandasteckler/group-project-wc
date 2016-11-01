class CreateCheeses < ActiveRecord::Migration[5.0]
  def change
    create_table :cheeses do |t|
      t.string :name
      t.integer :cheese_brand_id

      t.timestamps
    end
  end
end
