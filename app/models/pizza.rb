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

class Pizza < ApplicationRecord
  # model association
  has_many :pizza_toppings, dependent: :destroy
  has_many :toppings, through: :pizza_toppings

  # validations
  validates_presence_of :name, :description
end
