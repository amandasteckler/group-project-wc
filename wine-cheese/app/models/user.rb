class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :password, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true

  has_one :reviewer
  has_one :poster

  # def name
  #   self[:name].capitalize
  # end

end
