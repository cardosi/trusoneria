require 'rails_helper'

RSpec.describe 'Pizza Toppings API' do
  # Initialize the test data
  let!(:pizza) { create(:pizza) }
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
end
