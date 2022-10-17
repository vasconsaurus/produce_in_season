# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'produce_items/index', type: :view do
  it 'displays the given text' do
    render plain: 'This is directly rendered'

    expect(rendered).to match(/directly rendered/)
  end

  it 'displays produce items' do
    ProduceItem.create!(name: 'goiaba', category: 'fruit')
    ProduceItem.create!(name: 'graviola', category: 'fruit')
    assign(:produce_items, ProduceItem.all)
    render
    expect(rendered).to match(/goiaba/i)
  end
end
