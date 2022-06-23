# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'ProduceItems', type: :feature do
  let!(:produce_item) { ProduceItem.create(name: 'carambola', category: 'fruit') }
  let!(:item_season) { ItemSeason.create(produce_item_id: produce_item.id, month_index: 1, country_code: 'br') }

  it 'visits the produce items index' do
    visit(produce_items_path)
    expect(page).to have_current_path(produce_items_path)
  end

  it 'expects produce items index to have a produce' do
    visit(produce_items_path)
    expect(page).to have_css('table tr td.produce-table__name')
    expect(page).to have_css('table tr td.produce-table__category')
  end

  it 'expects link to be visible' do
    visit(produce_items_path)
    find_link(class: ['link_action'], visible: :all).visible?
  end

  it 'expects link to navigate to show and back to index' do
    visit(produce_items_path)
    find('table tr td a.link_action').click
    expect(page).to have_css('.page__title')
    expect(page).to have_css('.page__subtitle')
    expect(page).to have_css('table tr td.produce-table__month')
    find('.link_action').click
    expect(page).to have_current_path(produce_items_path)
  end
end
