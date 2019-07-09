require 'rails_helper' 

RSpec.describe User, type: :model do 
  describe "Verifies a user has an email" do 
    it "should not save a user without an email" do 
      user = User.new
      user.email = '' 
      user.valid?
      user.errors[:email].should_not include("")
    end 
  end 

  describe "Verifies a user has a first name, last name, and phone number" do
    it "should not save a user without a first name, last name, or phone number" do
      user = User.new 
      user.first_name = '' 
      user.last_name = ''
      user.phone_number = '' 

      user.valid? 
      user.errors[:first_name].should_not include('')
      user.errors[:last_name].should_not include('')
      user.errors[:phone_number].should_not include('')
    end 
  end 
end 

