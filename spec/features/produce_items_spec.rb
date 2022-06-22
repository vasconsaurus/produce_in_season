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
    expect(page).to have_content('carambola')
  end

  it 'expects link to be visible' do
    visit(produce_items_path)
    find_link('ver', visible: :all).visible?
  end

  it 'expects link to navigate to show and back to index' do
    visit(produce_items_path)
    click_link('ver')
    expect(find('h1')).to have_content('carambola')
    expect(page).to have_content('janeiro')
    click_link('voltar')
    expect(page).to have_current_path(produce_items_path)
  end
end
