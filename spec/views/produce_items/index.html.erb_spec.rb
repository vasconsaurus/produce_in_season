# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'produce_items/index', type: :view do
  it "displays the given text" do

    render :plain => "This is directly rendered"

    expect(rendered).to match /directly rendered/
  end
end
