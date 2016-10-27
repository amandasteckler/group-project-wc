class Cheese < ApplicationRecord
  has_many :pairings
  belongs_to :cheese_brand
end
