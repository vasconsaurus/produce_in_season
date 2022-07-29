# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'home_page/show', type: :view do
  it 'displays the title' do
    render
    expect(rendered).to match(/Feira Fresquinha/)
  end

  it 'displays the links' do
    render
    expect(rendered).to match(/Procure/)
  end
end
