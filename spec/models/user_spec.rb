require 'rails_helper'

RSpec.describe User, type: :model do
  describe "creation" do
    it "can be created" do
      n = SecureRandom.hex(10)
      @user = User.create!(email: "test1#{n}@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "John", last_name: "Smith")
      expect(@user).to be_valid
    end

    it "cannot be created without first_name, last_name" do
      n = SecureRandom.hex(10)
      @user = User.create!(email: "test2#{n}@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "John", last_name: "Smith")
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to_not be_valid
    end
  end
  # after(:all) { User.destroy_all }
end
