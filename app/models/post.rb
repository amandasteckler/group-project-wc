class Post < ApplicationRecord
  # attr_accessible :categories_attributes, :regions_attributes, :wine_brands_attributes, :cheese_brands_attributes, :wines_attributes, :cheeses_attributes, :pairings_attributes
  has_many :reviews
  has_many :reviewers, through: :reviews
  belongs_to :poster
  belongs_to :pairing
  # accepts_nested_attributes_for :categories, :regions, :wine_brands, :cheese_brands, :wines, :cheeses, :pairings

end



#features to add for post per user
  #rating

#features to add for general website
  #Search Function via wine
    #Picking a particular bottle of wine will return the most popular cheese
