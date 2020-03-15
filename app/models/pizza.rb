class Pizza < ApplicationRecord
  # model association
  has_many :pizza_toppings, dependent: :destroy

  # validations
  validates_presence_of :name, :description
end
