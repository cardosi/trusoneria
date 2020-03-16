# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Toppings API', type: :request do
  # initialize test data
  let!(:toppings) { create_list(:topping, 10) }

  # Test GET /toppings
  describe 'GET /toppings' do
    # make HTTP get request before each example
    before { get '/toppings' }

    it 'returns toppings' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test POST /toppings
  describe 'POST /toppings' do
    # valid payload
    let(:valid_attributes) { { name: 'Ricotta' } }

    context 'when the request is valid' do
      before { post '/toppings', params: valid_attributes }

      it 'creates a topping' do
        expect(json['name']).to eq('Ricotta')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end
  end
end
