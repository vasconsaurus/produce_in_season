# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'produce_items/show', type: :view do
  let!(:produce_item) { ProduceItem.create(name: 'carambola', category: 'fruit') }

  before { ItemSeason.create(produce_item_id: produce_item.id, month_index: 1, country_code: 'br') }

  it 'display produce item' do
    assign(:produce_item, produce_item)
    render
    expect(rendered).to match(/carambola/)
  end

  it 'displays months' do
    assign(:produce_item, produce_item)
    assign(
      :item_seasons,
      [
        ItemSeason.create!(produce_item_id: produce_item.id, month_index: 1, country_code: 'br'),
        ItemSeason.create!(produce_item_id: produce_item.id, month_index: 2, country_code: 'br')
      ]
    )
    render
    expect(rendered).to match(/janeiro/)
      .and match(/fevereiro/)
  end
end
