# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'item_seasons/index', type: :view do
  let!(:produce_item) { ProduceItem.create(name: 'carambola', category: 'fruit') }

  it 'displays item seasons' do
    ItemSeason.create!(month_index: 1, country_code: 'BR', produce_item_id: produce_item.id)
    ItemSeason.create!(month_index: 2, country_code: 'BR', produce_item_id: produce_item.id)
    assign(:item_seasons, ItemSeason.all)
    render
    expect(rendered).to match(/janeiro/)
  end
end
