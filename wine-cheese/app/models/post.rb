class Post < ApplicationRecord
  has_many :reviews
  belongs_to :poster
  belongs_to :pairing
end
