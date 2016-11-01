class CreateWineBrands < ActiveRecord::Migration[5.0]
  def change
    create_table :wine_brands do |t|
      t.string :name

      t.timestamps
    end
  end
end
