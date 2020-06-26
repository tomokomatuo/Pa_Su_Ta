FactoryBot.define do
    factory :user do
      name { "testuser1" }
      email { "testuser1@gmail.com" }
      nickname { "testuser1" }
      address { "testuser1" }
      phone_number { "1111111111" }
      password { "000000" }
      password_confirmation { "000000" }
      birthday { "1982-10-14"}
    end
    factory :second_user, class: User do
      id { 2 }
      name { "testuser3" }
      email { "testuser3@gmail.com" }
      nickname { "testuser3" }
      address { "testuser3" }
      phone_number { "2111111111" }
      password { "000000" }
      password_confirmation { "000000" }
      birthday { "1992-10-14"}
      adviser { true }
    end
  end