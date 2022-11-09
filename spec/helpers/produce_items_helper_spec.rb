# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProduceItemsHelper, type: :helper do
  shared_context 'when viewing the produce items index' do
    let!(:produce_item_multiple) { create(:produce_item) }
    let!(:produce_item_one) { create(:produce_item) }
    let(:produce_item_empty) { create(:produce_item) }

    before do
      create(:item_season, produce_item: produce_item_multiple, month_index: 1)
      create(:item_season, produce_item: produce_item_multiple, month_index: 2)
      create(:item_season, produce_item: produce_item_one, month_index: 3)
    end
  end

  describe '#formatted_month_name' do
    include_context 'when viewing the produce items index'

    describe 'when produce item has multiple seasons' do
      it 'formats months using / as a separator' do
        expect(helper.formatted_month_list(produce_item_multiple)).to eq('janeiro / fevereiro')
      end
    end

    describe 'when produce item has one season' do
      it 'returns the month name' do
        expect(helper.formatted_month_list(produce_item_one)).to eq('março')
      end
    end

    describe 'when produce item has no seasons' do
      it 'returns an empty string' do
        expect(helper.formatted_month_list(produce_item_empty)).to eq('')
      end
    end
  end
end
