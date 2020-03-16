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

class Topping < ApplicationRecord
  # model association
  has_many :pizza_toppings, dependent: :destroy
  has_many :pizzas, through: :pizza_toppings

  # validations
  validates_presence_of :name
end
