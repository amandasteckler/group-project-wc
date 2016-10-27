class Post < ApplicationRecord
  has_many :reviews
  has_many :reviewers, through: :reviews
  belongs_to :poster
  belongs_to :pairing
end
