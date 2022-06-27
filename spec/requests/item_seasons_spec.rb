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
      produce_item = ProduceItem.create!(name: 'carambola', category: 'fruit')
      item_season = ItemSeason.create!(month_index: 1, country_code: 'BR', produce_item_id: produce_item)
      get item_season_path(item_season)
      expect(response).to have_http_status(:success)
    end
  end
end
