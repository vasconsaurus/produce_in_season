# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'ProduceItems', type: :feature do
  let!(:produce_item) { create(:produce_item) }

  before { create(:item_season, produce_item: produce_item) }

  it 'visits the produce items index' do
    visit(produce_items_path)
    expect(page).to have_current_path(produce_items_path)
  end

  it 'expects index to have a produce with a name' do
    visit(produce_items_path)
    expect(page).to have_css('h4.produce-name')
  end

  it 'expects index to have a produce with a category' do
    visit(produce_items_path)
    expect(page).to have_css('div.produce-category')
  end

  it 'expects index to have a produce with one or more months' do
    visit(produce_items_path)
    expect(page).to have_css('div.card-inner__month-name')
  end
end
