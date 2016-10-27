class CreateWines < ActiveRecord::Migration[5.0]
  def change
    create_table :wines do |t|
      t.integer :category_id
      t.integer :year
      t.integer :wine_brand_id
      t.integer :region_id

      t.timestamps
    end
  end
end
