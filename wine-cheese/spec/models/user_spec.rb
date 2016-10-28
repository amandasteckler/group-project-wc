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

  describe ".all_users_named_scott" do
    let(:user) {User.create(name: 'fred')}
    it 'retrieves all users named scott' do
      expect(User.all_users_named_bob.map(&name)).to_not include(['Scott'])
    end
  end




end
