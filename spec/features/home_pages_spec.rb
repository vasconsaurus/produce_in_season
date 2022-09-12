# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'HomePages', type: :feature do
  it 'visits the homepage' do
    visit(root_path)
    expect(page).to have_current_path(root_path)
  end

  it 'expects link to navigate to search by month' do
    visit(root_path)
    click_link('mês')
    expect(page).to have_current_path(item_seasons_path)
  end

  it 'expects link to navigate to search by produce' do
    visit(root_path)
    click_link('item')
    expect(page).to have_current_path(produce_items_path)
  end
end
