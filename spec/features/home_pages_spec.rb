# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'HomePages', type: :feature do
  it 'visits the homepage' do
    visit(root_path)
    expect(page).to have_current_path(root_path)
  end

  it 'expects index to have a title' do
    visit(root_path)
    expect(page).to have_css('h1')
  end

  it 'expects link to navigate to search by month' do
    visit(root_path)
    click_link('Procure pelo mês')
    expect(page).to have_current_path(item_seasons_path)
  end

  it 'expects link to navigate to search by produce' do
    visit(root_path)
    click_link('Procure pelo produto')
    expect(page).to have_current_path(produce_items_path)
  end
end
