class AddCompanyToWineBrands < ActiveRecord::Migration[5.0]
  def change
    add_column :wine_brands, :company, :string
  end
end
