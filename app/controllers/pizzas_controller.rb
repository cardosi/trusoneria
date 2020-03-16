class PizzasController < ApplicationController
  # GET /pizzas
  def index
    @pizzas = Pizza.all
    json_response(@pizzas)
  end
end
