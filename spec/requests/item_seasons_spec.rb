# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'ItemSeasons', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get item_seasons_path
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      produce_item = ProduceItem.create!(name: 'banana', category: 'fruit')
      item_season = ItemSeason.create!(produce_item_id: produce_item.id, month_index: 1, country_code: 'br', id: 1)
      get item_seasons_path(item_season.id)
      expect(response).to have_http_status(:success)
    end
  end
end
