# frozen_string_literal: true

class ToppingsController < ApplicationController
  # GET /toppings
  def index
    @toppings = Topping.all
    json_response(@toppings)
  end

  # POST /toppings
  def create
    @topping = Topping.create!(topping_params)
    json_response(@topping, :created)
  end

  private

  def topping_params
    # whitelist params
    params.permit(:name)
  end
end
