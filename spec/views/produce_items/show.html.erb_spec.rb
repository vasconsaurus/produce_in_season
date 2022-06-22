# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'produce_items/show', type: :view do
  it 'display produce item' do
    assign(:produce_item, ProduceItem.create!(name: 'banana', category: 'fruit'))
    render
    expect(rendered).to match(/banana/)
  end

  it 'displays months' do
    @produce_item = ProduceItem.create!(name: 'banana', category: 'fruit')
    assign(
      :item_seasons,
      [
        ItemSeason.create!(produce_item_id: @produce_item.id, month_index: 1, country_code: 'br'),
        ItemSeason.create!(produce_item_id: @produce_item.id, month_index: 2, country_code: 'br')
      ]
    )
    render
    expect(rendered).to match(/janeiro/)
    expect(rendered).to match(/fevereiro/)
  end
end
