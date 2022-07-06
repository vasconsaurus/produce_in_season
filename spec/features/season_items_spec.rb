# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'ProduceItems', type: :feature do
  let!(:produce_item) { ProduceItem.create(name: 'carambola', category: 'fruit') }

  before { ItemSeason.create(produce_item_id: produce_item.id, month_index: 1, country_code: 'br') }

  it 'visits the item seasons index' do
    visit(item_seasons_path)
    expect(page).to have_current_path(item_seasons_path)
  end

  it 'expects index to have a month' do
    visit(item_seasons_path)
    expect(page).to have_css('table tr td.produce-table__month')
  end

  it 'expects the page to have one link per month' do
    visit(item_seasons_path)
    links = page.all(class: ['link_action']).length
    expect(links).to match(12)
  end

  it 'expects "show" link to navigate to show' do
    visit(item_seasons_path)
    first('table tr td a.link_action').click
    expect(page).to have_css('table tr td.produce-table__name')
  end

  it 'expects "show" link to navigate to show and back to index' do
    visit(item_seasons_path)
    first('table tr td a.link_action').click
    find('.back').click
    expect(page).to have_current_path(item_seasons_path)
  end
end
