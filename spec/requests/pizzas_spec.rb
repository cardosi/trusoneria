require 'rails_helper'

RSpec.describe 'Trusoneria API', type: :request do
  # initialize test data
  let!(:pizzas) { create_list(:pizza, 10) }

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
  describe 'POST /pizzas' do
    # valid payload
    let(:valid_attributes) { { name: 'Rosa', description: 'A Chris Bianco creation that will blow your mind' } }

    context 'when the request is valid' do
      before { post '/pizzas', params: valid_attributes }

      it 'creates a pizza' do
        expect(json['name']).to eq('Rosa')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end
  end
end