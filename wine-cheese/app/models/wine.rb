class Wine < ApplicationRecord
  has_many :pairings
  belongs_to :wine_brand
  belongs_to :region
  belongs_to :category
end
