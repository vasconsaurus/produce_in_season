# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'produce_items/index', type: :view do
  it 'displays the given text' do
    render plain: 'This is directly rendered'

    expect(rendered).to match(/directly rendered/)
  end

  it 'displays produce items' do
    assign(:produce_items, [
      ProduceItem.create!(name: 'banana', category: 'fruit'),
      ProduceItem.create!(name: 'apple', category: 'fruit')
    ])
    render
    expect(rendered).to match(/banana/)
    expect(rendered).to match(/apple/)
  end
end
