# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'item_seasons/show', type: :view do
  let!(:produce_item) { ProduceItem.create(name: 'carambola', category: 'fruit') }
  let!(:item_season) { ItemSeason.create(produce_item_id: produce_item.id, month_index: 1, country_code: 'br') }

  it 'display month name' do
    assign(:item_season, item_season)
    render
    expect(rendered).to match(/Janeiro/)
  end

  it 'displays the produces' do
    assign(:produce_item, produce_item)
    assign(:item_season, item_season)
    render
    expect(rendered).to match(/Carambola/)
  end
end
