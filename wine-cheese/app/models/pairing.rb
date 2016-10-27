class Pairing < ApplicationRecord
  has_many :posts
  has_many :reviews, through: :posts
  belongs_to :wine
  belongs_to :cheese

end
