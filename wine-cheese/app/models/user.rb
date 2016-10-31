class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  # validates :age, presence: true
  # old_enough = ("10/23/2000".to_date + 18.years) < Date.today
  validates :password, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true

  has_one :reviewer
  has_one :poster


  def all_posts #all posts of user.
    self.poster.posts
  end

  def cheese_platter
    self.all_posts.map { |post| post.pairing.cheese.cheese_brand.name }.uniq
  end

  def wine_list
    self.all_posts.map { |post| post.pairing.wine.wine_brand.name }.uniq
  end

  def recent_wine

    self.all_posts.last.pairing.wine.wine_brand.name unless self.all_posts.count == 0
  end

  def recent_cheese
    self.all_posts.last.pairing.cheese.cheese_brand.name unless self.all_posts.count == 0
  end

  def recent_date
    # self.all_posts.last.pairing.created_at
    self.all_posts.last.pairing.created_at.to_time.strftime('%A %B %d %Y') unless self.all_posts.count == 0
  end


  def recent_update
     "#{self.name} recently tried #{recent_wine} with #{recent_cheese} last #{recent_date}. More on #{self.name}'s pairing: #{self.all_posts.last.title}." unless self.all_posts.count == 0
  end

  # def link_to_pairing
  #   link_to "#{self.name}'s pairing: #{self.all_posts.last.title}"
  # end


  def mood
    # user_age = self.age.to_s  ------- uncomment this once youve fixed age column. it should stop returining nil.
    # user_age = self.age.to_s
    # user_age = "36"
    drink_meter = self.poster.posts.where('created_at >= ?', 1.week.ago).count
    if drink_meter >= 7
      "a #{self.age}-year old currently obsessed with #{self.all_posts.last.pairing.wine.wine_brand.name}"
    elsif drink_meter  < 7 && drink_meter  >= 2
      "a #{self.age}-year old social drinker."
    else
      "a #{self.age}-year old wine-deprived creature."
    end

  end



end
