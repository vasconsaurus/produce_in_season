# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ItemSeasonsHelper, type: :helper do
  describe 'randomized rotation' do
    it 'adds a random rotation to a button' do
      expect(helper.randomized_rotation).to include('rotate')
    end
  end
end
