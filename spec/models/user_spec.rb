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
      it "is invalid without an address" do
        user = User.new(email: '1@gmail.com', address: nil)
        user.valid?
        expect(user.errors[:address]).to include("を入力してください")
      end
      it "is invalid without a phone_number" do
        user = User.new(email: '1@gmail.com', phone_number: nil)
        user.valid?
        expect(user.errors[:address]).to include("を入力してください")
      end
      it "is invalid without a birthday" do
        user = User.new(email: '1@gmail.com', birthday: nil)
        user.valid?
        expect(user.errors[:address]).to include("を入力してください")
      end
      it "is invalid without a password" do
        user = User.new(email: '1@gmail.com', password: nil)
        user.valid?
        expect(user.errors[:address]).to include("を入力してください")
      end
      it "is invalid with password is 5 or less characters" do
        user = User.new(email: '1@gmail.com', password: '00000')
        user.valid?
        expect(user.errors[:password]).to include("は6文字以上で入力してください")
      end
end