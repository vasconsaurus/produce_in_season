require 'rails_helper'

RSpec.describe "ProduceItems", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/produce_items/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/produce_items/show"
      expect(response).to have_http_status(:success)
    end
  end

end
