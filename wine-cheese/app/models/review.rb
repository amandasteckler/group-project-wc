class Review < ApplicationRecord
  belongs_to :reviewer
  belongs_to :post
end
