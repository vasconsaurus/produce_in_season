# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'item_seasons/index', type: :view do
  it 'displays the months' do
    assign(:month_names, I18n.t('date.month_short'))
    render
    expect(rendered).to match(/Jan/)
  end
end
