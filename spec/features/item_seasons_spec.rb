# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Item Seasons', type: :feature do
  let(:produce_item) do
    FactoryBot.create(
      :produce_item, 
      name: 'morango', 
      category: 'fruit',
      item_seasons: [FactoryBot.build(:item_season)]
    )
  end

  before { ItemSeason.create(produce_item_id: produce_item.id, month_index: 1, country_code: 'BR') }

  it 'visits the item seasons index' do
    visit(item_seasons_path)
    expect(page).to have_current_path(item_seasons_path)
  end

  it 'expects index to have a month' do
    visit(item_seasons_path)
    expect(page).to have_css('div a.month_link')
  end

  it 'expects the page to have one link per month' do
    visit(item_seasons_path)
    links = page.all(class: ['month_link']).length
    expect(links).to match(ItemSeason::MONTHS.length)
  end

  it 'expects "show" link to navigate to show' do
    visit(item_seasons_path)
    first('div a.month_link').click
    expect(page).to have_css('div.content div.nav-actions-holder div.nav-actions-months')
  end

  it 'expects "show" link to navigate to show and back to index' do
    visit(item_seasons_path)
    first('div a.month_link').click
    find('.back').click
    expect(page).to have_current_path(item_seasons_path)
  end
end
