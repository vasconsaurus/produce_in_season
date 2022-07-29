# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Pages', type: :request do
  describe 'GET /show error' do
    it 'returns http 404' do
      get pages_path('anytext')
      expect(response).to have_http_status(:not_found)
    end
  end
end
