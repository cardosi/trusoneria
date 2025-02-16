# frozen_string_literal: true

# == Schema Information
#
# Table name: toppings
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :topping do
    name { Faker::Food.vegetables }
  end
end
