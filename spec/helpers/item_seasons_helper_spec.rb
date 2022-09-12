# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ItemSeasonsHelper, type: :helper do
  describe 'rotation' do
    it 'adds rotation to month with index 12' do
      expect(helper.rotation(12)).to eq('rotate-plus-10')
    end
  end
end
