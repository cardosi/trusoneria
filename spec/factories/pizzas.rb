FactoryBot.define do
  factory :pizza do
    name { Faker::Food.ingredient + " Pizza" }
    description { Faker::Food.description }
  end
end