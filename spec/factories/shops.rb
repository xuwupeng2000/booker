FactoryBot.define do
  factory :shop do
    name { "Shop #{Faker::Name.name}" }
    city { "City" }
    address { "Somewhere" }
    description { "Good one" }
  end
end
