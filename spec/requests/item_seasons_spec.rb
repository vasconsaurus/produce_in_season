# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'ItemSeasons', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/item_seasons/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/item_seasons/show'
      expect(response).to have_http_status(:success)
    end
  end
end
