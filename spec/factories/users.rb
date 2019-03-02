FactoryBot.define do
  factory :user do
    sequence :name do |n|
      "#{Faker::Name.name}.#{n}"
    end
    email { Faker::Internet.user_name(8) + '.' + Faker::Internet.user_name(4) + '@booker.com' }
    reset_password_token { Faker::Crypto.md5 }
    password { "passpass" }
  end
end
