class User < ApplicationRecord
  has_one :reviewer
  has_one :poster
end
