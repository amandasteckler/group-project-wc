require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) { User.create(name: 'scott', email: 'scott@yay.com')}

  describe '#name' do
    it 'capitalizes the name' do
      expect(user.name).to eq('Scott')
    end
  end

  describe '#email' do
    it 'has an email' do
      expect(user.email).to eq('scott@yay.com')
    end
  end
#----Krissa's tests

  describe '#mood' do
#     drink_meter = 1
#     age = 36
#     if drink_meter >= 7
#       it 'sees the user as someone who drinks too much' do
#         expect(user.mood).to eq("A 36-year old currently obsessed with #{self.all_posts.last.pairing.wine.wine_brand.name}")
# )
#       end
#     end
  end




end
