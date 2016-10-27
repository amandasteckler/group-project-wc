class Category < ApplicationRecord
  has_many :wines
  has_many :pairings, through: :wines
end
