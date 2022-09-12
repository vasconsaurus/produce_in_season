# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ItemSeasonsHelper, type: :helper do
  describe 'randomized rotation' do
    it 'adds random rotation to 12 items' do
      array1 = Array.new(12) { helper.randomized_rotation }
      array2 = Array.new(12) { helper.randomized_rotation }
      expect(array1).not_to match(array2)
    end
  end
end
