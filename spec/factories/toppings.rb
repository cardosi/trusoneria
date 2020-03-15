FactoryBot.define do
  factory :topping do
    name { Faker::Food.vegetables }
  end
end