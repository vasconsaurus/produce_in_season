# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ItemSeasonsHelper, type: :helper do
  describe '#rotation' do
    [
      { index: 1, rotation: 'plus-5' },
      { index: 2, rotation: '0' },
      { index: 3, rotation: '0' },
      { index: 4, rotation: 'minus-10' },
      { index: 5, rotation: 'minus-5' },
      { index: 6, rotation: 'plus-5' },
      { index: 7, rotation: '0' },
      { index: 8, rotation: '0' },
      { index: 9, rotation: 'minus-10' },
      { index: 10, rotation: '0' },
      { index: 11, rotation: '0' },
      { index: 12, rotation: 'plus-10' }
    ].each do |example|
      it "adds rotation #{example[:rotation]} to month with index #{example[:index]}" do
        expect(helper.rotation(example[:index])).to eq("rotate-#{example[:rotation]}")
      end
    end
    it 'raises error if month index bigger than 12' do
      expect { helper.rotation(13) }.to raise_error(RuntimeError, 'month-index must be between 1 and 12')
    end

    it 'raises error if month index smaller than 1' do
      expect { helper.rotation(0) }.to raise_error(RuntimeError, 'month-index must be between 1 and 12')
    end
  end

  context 'when navigating between the months' do
    let(:item_season_jan) { ItemSeason.new(produce_item_id: 1, month_index: 1, country_code: 'br') }
    let(:item_season_feb) { ItemSeason.new(produce_item_id: 1, month_index: 2, country_code: 'br') }
    let(:item_season_dec) { ItemSeason.new(produce_item_id: 1, month_index: 12, country_code: 'br') }

    describe '#month_navigation_previous' do
      it 'goes to the previous month if item_season.month_index is bigger than 1' do
        expect(helper.month_navigation_previous(item_season_feb)).to eq(1)
      end

      it 'goes to the december if item_season.month_index is 1' do
        expect(helper.month_navigation_previous(item_season_jan)).to eq(12)
      end
    end

    describe '#month_navigation_next' do
      it 'goes to the next month if item_season.month_index is smaller than 12' do
        expect(helper.month_navigation_next(item_season_feb)).to eq(3)
      end

      it 'goes to the january if item_season.month_index is 12' do
        expect(helper.month_navigation_next(item_season_dec)).to eq(1)
      end
    end
  end
end
