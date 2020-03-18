# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Pizza Toppings API' do
  # Initialize the test data
  let!(:pizza) { create(:pizza) }
  let!(:topping) { create(:topping) }
  let!(:pizza_toppings) { create_list(:pizza_topping, 20, pizza_id: pizza.id) }
  let(:pizza_id) { pizza.id }

  # Test GET /pizzas/:id/toppings
  describe 'GET /pizzas/:id/toppings' do
    before { get "/pizzas/#{pizza_id}/toppings" }

    context 'when pizza exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns all pizza toppings' do
        expect(json.size).to eq(20)
      end
    end

    context 'when pizza does not exist' do
      let(:pizza_id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Pizza/)
      end
    end
  end

  # Test POST /pizzas/:id/toppings
  describe 'POST /pizzas/:id/toppings' do
    # valid payload
    let(:valid_attributes) { { id: topping.id } }

    context 'when the request is valid' do
      before { post "/pizzas/#{pizza_id}/toppings", params: valid_attributes }

      it 'adds a topping to a pizza' do
        expect(json['pizza']['name']).to eq(pizza.name)
        expect(json['toppings'].first['name']).to eq(topping.name)
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post "/pizzas/#{pizza_id}/toppings", params: { id: 88 } }

      it 'returns status code 422' do
        expect(response).to have_http_status(404)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Couldn't find Topping with 'id'=88/)
      end
    end
  end
end
