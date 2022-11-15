# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'ProduceItems', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get produce_items_path
      expect(response).to have_http_status(:success)
    end
  end
end
