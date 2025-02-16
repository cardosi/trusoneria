# frozen_string_literal: true

class PizzasController < ApplicationController
  # GET /pizzas
  def index
    @pizzas = Pizza.all
    json_response(@pizzas)
  end

  # POST /pizzas
  def create
    @pizza = Pizza.create!(pizza_params)
    json_response(@pizza, :created)
  end

  private

  def pizza_params
    # whitelist params
    if params.key?(:pizza)
      params[:pizza].permit(:name, :description)
    else
      params.permit(:name, :description)
    end
  end
end
