# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProduceItemsHelper, type: :helper do
  context 'when viewing the produce items index' do
    let(:produce_item) { create(:produce_item) }

    describe '#formatted_month_name' do
      describe 'when produce item has multiple seasons' do
        before do
          create(:item_season, produce_item: produce_item, month_index: 1)
          create(:item_season, produce_item: produce_item, month_index: 2)
        end

        it 'formats months using / as a separator' do
          expect(helper.formatted_month_list(produce_item)).to eq('janeiro / fevereiro')
        end
      end

      describe 'when produce item has one season' do
        before do
          create(:item_season, produce_item: produce_item, month_index: 3)
        end

        it 'returns the month name' do
          expect(helper.formatted_month_list(produce_item)).to eq('março')
        end
      end

      describe 'when produce item has no seasons' do
        it 'returns an empty string' do
          expect(helper.formatted_month_list(produce_item)).to eq('')
        end
      end
    end
  end
end
