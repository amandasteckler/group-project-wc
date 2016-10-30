class Post < ApplicationRecord
  has_many :reviews
  has_many :reviewers, through: :reviews
  belongs_to :poster
  belongs_to :pairing
end

def post_reaction
  wine = self.pairing.wine
  cheese self.pairing.cheese
  "#{wine.name} and #{cheese.name}? How bourgoise..."
end
