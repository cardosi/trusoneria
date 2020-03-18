# frozen_string_literal: true

class PizzaToppingsController < ApplicationController
  before_action :set_pizza

  # GET /pizzas/:pizza_id/toppings
  def index
    json_response(@pizza.toppings)
  end

  # POST /pizzas/:pizza_id/toppings
  def create
    @topping = Topping.find(pizza_topping_params[:id])
    PizzaTopping.create!(pizza: @pizza, topping: @topping)
    json_response({pizza: @pizza, toppings: @pizza.toppings}, :created)
  end

  private

  def pizza_topping_params
    if params.key?(:pizza_topping)
      params[:pizza_topping].permit(:id)
    else
      params.permit(:id)
    end
  end

  def set_pizza
    @pizza = Pizza.find(params[:pizza_id])
  end
end
