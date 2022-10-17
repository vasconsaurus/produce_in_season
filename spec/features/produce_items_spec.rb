# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'ProduceItems', type: :feature do
  let!(:produce_item) { ProduceItem.create(name: 'carambola', category: 'fruit') }

  before { ItemSeason.create(produce_item_id: produce_item.id, month_index: 1, country_code: 'br') }

  it 'visits the produce items index' do
    visit(produce_items_path)
    expect(page).to have_current_path(produce_items_path)
  end

  it 'expects index to have a produce with a name' do
    visit(produce_items_path)
    expect(page).to have_css('div a.produce-name')
  end

  it 'expects index to have a produce with a category' do
    visit(produce_items_path)
    expect(page).to have_css('div.produce-category')
  end

  it 'expects produce link to be visible' do
    visit(produce_items_path)
    find_link(class: ['produce-name'], visible: :all).visible?
  end

  it 'expects link to navigate to show and back to index' do
    visit(produce_items_path)
    find('a.produce-name').click
    find('.back').click
    expect(page).to have_current_path(produce_items_path)
  end

  it 'expects link to navigate to show and show to have a month' do
    visit(produce_items_path)
    find('a.produce-name').click
    expect(page).to have_css('table tr td.produce-table__month')
  end
end
