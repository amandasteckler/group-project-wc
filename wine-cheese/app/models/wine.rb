class Wine < ApplicationRecord
  has_many :pairings
  belongs_to :wine_brand
  belongs_to :region
  belongs_to :category

  def wine_names
    self.wine_brand.company + " " + self.wine_brand.name + " " + self.category.name
  end

end
