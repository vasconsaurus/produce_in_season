# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'home_page/index', type: :view do
  it 'displays the title' do
    render
    expect(rendered).to match(/Feira Fresquinha/)
  end

  it 'displays the links' do
    render
    expect(rendered).to match(/procure/)
  end
end
