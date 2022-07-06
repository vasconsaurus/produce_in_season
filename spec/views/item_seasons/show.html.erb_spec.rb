# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'item_seasons/show', type: :view do
  let!(:item_season_produces) { ProduceItem.create(name: 'carambola', category: 'fruit') }
  let!(:item_season) { ItemSeason.create(produce_item_id: item_season_produces.id, month_index: 1, country_code: 'br') }

  it 'display month name' do
    assign(:item_season, item_season)
    assign(:item_season_produces, ProduceItem.joins(:item_seasons)
    .where(item_seasons: { month_index: item_season.month_index }))
    render
    expect(rendered).to match(/Janeiro/)
  end

  it 'displays the produces' do
    assign(:item_season, item_season)
    assign(:item_season_produces, ProduceItem.joins(:item_seasons)
    .where(item_seasons: { month_index: item_season.month_index }))
    render
    expect(rendered).to match(/Carambola/)
  end
end
