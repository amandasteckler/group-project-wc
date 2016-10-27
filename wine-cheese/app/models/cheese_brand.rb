class CheeseBrand < ApplicationRecord
  has_many :cheeses
  has_many :pairings, through: :cheeses
end
