require 'rails_helper'
RSpec.describe User, type: :model do
    it "is valid with a name, address, birthday, phone_number, email, password, password_confirmation" do
        user = User.new(
          name: 'けんたろう',
          address: '上野',
          birthday: '1998-12-11',
          phone_number: 19087654321,
          email: '1@gmail.com',
          password: '000000',
          password_confirmation: '000000')
        expect(user).to be_valid
      end    
      it "is invalid without a name" do
        user = User.new(email: '1@gmail.com', name: nil)
        user.valid?
        expect(user.errors[:name]).to include("を入力してください")
      end
  it "is invalid with a duplicate title"
  it "is invalid with title is 101 or more characters"
end