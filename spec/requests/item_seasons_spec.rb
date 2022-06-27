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
      month_name = 'janeiro'
      get item_seasons_path(I18n.t('date.month_names').find_index(month_name))
      expect(response).to have_http_status(:success)
    end
  end
end
