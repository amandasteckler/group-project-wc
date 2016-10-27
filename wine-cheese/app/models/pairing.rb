class Pairing < ApplicationRecord
  has_many :posts
  belongs_to :wine
  belongs_to :cheese
end
