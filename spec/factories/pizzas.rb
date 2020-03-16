# frozen_string_literal: true

# == Schema Information
#
# Table name: pizzas
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :pizza do
    name { Faker::Food.ingredient + " Pizza" }
    description { Faker::Food.description }
  end
end
