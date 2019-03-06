include ActionDispatch::TestProcess

FactoryBot.define do
  factory :barber do
    shop
    sequence :name do |n|
      "Barber #{Faker::Name.name}.#{n}"
    end
    sequence :email do |n|
      "#{Faker::Internet.email}.#{n}"
    end
    description {Faker::Food.dish}
    reset_password_token { Faker::Crypto.md5 }
    password { "passpass" }

    trait :with_avatar do
      avatar { fixture_file_upload(Rails.root.join('spec', 'fixtures', 'avatar.png'), 'image/png') }
    end
  end
end
