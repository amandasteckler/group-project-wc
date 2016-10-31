class Cheese < ApplicationRecord
  has_many :pairings
  belongs_to :cheese_brand

  def cheese_names
    self.cheese_brand.name + " " + self.name
  end
end
