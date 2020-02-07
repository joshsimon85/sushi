require 'rails_helper'

RSpec.describe 'Menu API', type: :request do
  let!(:menu_items) { create_list(:menu_item, 10) }

  describe 'GET /menu_items' do
    before { get '/menu_items' }

    it 'returns a list of menu items' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # describe 'GET /menu_items:id' do
  #   before { get "/menu_tiems/#{id}"}
  # end
end
