require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) { User.create(name: 'scott', email: 'scott@yay.com', age: 20, password: "scott")}

  describe '#email' do
    it 'has an email' do
      expect(user.email).to eq('scott@yay.com')
    end
  end


  describe '#passive_aggressive_greeting' do
    time_now = Time.now.hour
    if time_now < 17
      it 'judges the user if they log in before 5 oclock pm' do
        expect(user.passive_aggressive_greeting).to eq("I guess it's five o'clock somewhere...")
      end
    end
  end


  describe '#age_requirement' do
    it 'gives the user a response depending on their age' do
        expect(user.age_requirement).to eq("Aren't you a little young to be here?")
      end
  end

  describe '#password_security' do
    it "evaluates the strength of a user's password" do 
      expect(user.password_security). to eq("And while you're at it, remember to think of a more secure password in the future...")
    end
  end





  # describe ".all_users_named_scott" do
  #   let(:user) {User.create(name: 'fred')}
  #   it 'retrieves all users named scott' do
  #     expect(User.all_users_named_bob.map(&name)).to_not include(['Scott'])
  #   end
  # end




end
