class Topping < ApplicationRecord
  # model association
  has_many :pizza_toppings, dependent: :destroy
  has_many :pizzas, through: :pizza_toppings

  # validations
  validates_presence_of :name
end
