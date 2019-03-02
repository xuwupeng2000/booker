FactoryBot.define do
  factory :barber do
    sequence :name do |n|
      "Barber #{Faker::Name.name}.#{n}"
    end
  end
end
