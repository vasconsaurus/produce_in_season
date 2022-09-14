# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ItemSeasonsHelper, type: :helper do
  describe 'rotation' do
    it 'adds rotation +10 to month with index 12' do
      expect(helper.rotation(12)).to eq('rotate-plus-10')
    end

    it 'adds rotation +5 to month with index 1 and 6' do
      expect(helper.rotation(1 || 6)).to eq('rotate-plus-5')
    end

    it 'adds rotation -10 to month with index 4 and 9' do
      expect(helper.rotation(4 || 9)).to eq('rotate-minus-10')
    end

    it 'adds rotation -5 to month with index 5' do
      expect(helper.rotation(5)).to eq('rotate-minus-5')
    end

    it 'adds rotation 0 to month with index 2, 3, 6, 7 and 8' do
      expect(helper.rotation(2 || 3 || 6 || 7 || 8)).to eq('rotate-0')
    end
  end
end

# when 1, 6
#   'rotate-plus-5'
# when 5
#   'rotate-minus-5'
# when 12
#   'rotate-plus-10'
# when 4, 9
#   'rotate-minus-10'
# else
#   'rotate-0'
