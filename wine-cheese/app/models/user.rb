class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :password, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true

  has_one :reviewer
  has_one :poster


  def age_requirement
    if self.age < 21
      "Aren't you a little young to be here?"
    else
      "So what pairing do you suggest?"
    end
  end

  def activity_monitoring
    post_count = self.poster.posts.count
    if post_count < 3
      "You really don't know much about wine, do you?"
    elsif post_count < 5
      "Alright, so you know some stuff."
    else
      "Maybe try drinking water once in a while..."
    end
  end

  def password_security
    if self.password.include?(self.name)
      "In between your next glass, remember to think of a more secure password in the future..."
    end
  end

  def self.passive_aggressive_greeting
    if Time.now.hour < 17
      "I guess it's five o'clock somewhere..."
    end
  end

end
