class Post < ApplicationRecord
  has_many :reviews
  has_many :reviewers, through: :reviews
  belongs_to :poster
  belongs_to :pairing
end

def post_reaction
  post_wine = self.pairing.wine.category.name
  post_cheese self.pairing.cheese.name
  "#{post_wine} and #{post_cheese}? How bourgoise..."
end

def wine_year_critique
  wine_year = self.pairing.wine.year
  if wine_year > 2015
    "You should try an older vintage"
  elsif wine_year > 2008
    "What a tasteful choice!"
  else
    "You better check first that your wine hasn't turned into vinegar..."
  end

end
