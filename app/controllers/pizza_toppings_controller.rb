class PizzaToppingsController < ApplicationController
  before_action :set_pizza

  # GET /pizzas/:pizza_id/toppings
  def index
    json_response(@pizza.toppings)
  end

  # POST /pizzas/:pizza_id/toppings
  def create
    @pizza.toppings.create!(pizza_topping_params)
    json_response(@pizza, :created)
  end

  private

  def pizza_topping_params
    params.permit(:topping_id)
  end

  def set_pizza
    @pizza = Pizza.find(params[:pizza_id])
  end
end
