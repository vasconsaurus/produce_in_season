# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProduceItemsHelper, type: :helper do
  context 'when viewing the produce items index' do
    let!(:produce_item) { create(:produce_item) }
    let!(:produce_item_two) { create(:produce_item) }

    describe '#formatted_month_name' do
      before do
        create(:item_season, produce_item: produce_item, month_index: 1)
        create(:item_season, produce_item: produce_item, month_index: 2)
        create(:item_season, produce_item: produce_item_two, month_index: 3)
      end

      it 'adds / to the string, if its not the last or only month' do
        expect(helper.formatted_month_list(produce_item)).to eq('janeiro / fevereiro')
      end

      it 'does not add / to the string, if its the last or only month' do
        expect(helper.formatted_month_list(produce_item_two)).to eq('março')
      end
    end
  end
end
