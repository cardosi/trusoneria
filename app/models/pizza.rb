class Pizza < ApplicationRecord
  # model association
  has_many :pizza_toppings, dependent: :destroy
  has_many :toppings, through: :pizza_toppings

  # validations
  validates_presence_of :name, :description
end
