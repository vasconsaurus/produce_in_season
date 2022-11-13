# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'item_seasons/show', type: :view do
  let!(:item_season_produces) { create(:produce_item, name: 'carambola') }
  let!(:item_season) { create(:item_season, produce_item: item_season_produces) }

  before do
    assign(:item_season, item_season)
    assign(
      :item_season_produces,
      ProduceItem.joins(:item_seasons).where(item_seasons: { month_index: item_season.month_index })
    )
  end

  it 'display month name' do
    render
    expect(rendered).to match(/Janeiro/)
  end

  it 'displays the produces' do
    render
    expect(rendered).to match(/carambola/i)
  end
end
