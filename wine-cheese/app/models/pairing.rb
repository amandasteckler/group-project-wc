class Pairing < ApplicationRecord
  has_many :posts
  has_many :reviews, through: :posts
  belongs_to :wine
  belongs_to :cheese

  def pairing_with_wine_cheese_names
    Wine.find(self.wine_id).wine_brand.company + " " + Wine.find(self.wine_id).wine_brand.name + " " + Wine.find(self.wine_id).category.name + " + " + Cheese.find(self.cheese_id).cheese_brand.name + " " + Cheese.find(self.cheese_id).name
  end
end
