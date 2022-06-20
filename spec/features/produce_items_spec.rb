require 'rails_helper'

RSpec.feature 'ProduceItems', type: :feature do
  it 'visits the produce items index' do
    visit(produce_items_path)
    expect(page).to have_current_path(produce_items_path)
  end
end
