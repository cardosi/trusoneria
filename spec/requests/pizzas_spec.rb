require 'rails_helper'

RSpec.describe 'Trusoneria API', type: :request do
  # initialize test data
  let!(:pizzas) { create_list(:pizza, 10) }
  let(:pizza_id) { pizzas.first.id }

  # Test GET /pizzas
  describe 'GET /pizzas' do
    # make HTTP get request before each example
    before { get '/pizzas' }

    it 'returns pizzas' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test POST /pizzas
  # Test GET  /toppings
  # Test POST /toppings
  # Test GET  /pizzas/:id/toppings
  # Test POST /pizzas/:id/toppings
end