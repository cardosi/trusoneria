# frozen_string_literal: true

# == Schema Information
#
# Table name: pizza_toppings
#
#  id         :bigint           not null, primary key
#  pizza_id   :bigint           not null
#  topping_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :pizza_topping do
    pizza
    topping
  end
end
