# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProduceItemsHelper, type: :helper do
  context 'when viewing the produce items index' do
    let!(:produce_item) { ProduceItem.create(name: 'caqui', category: 'fruit') }
    let!(:produce_item_two) { ProduceItem.create(name: 'quincam', category: 'fruit') }

    describe '#formatted_month_name' do
      before do
        ItemSeason.create(produce_item_id: produce_item.id, month_index: 1, country_code: 'BR')
        ItemSeason.create(produce_item_id: produce_item.id, month_index: 2, country_code: 'BR')
        ItemSeason.create(produce_item_id: produce_item_two.id, month_index: 3, country_code: 'BR')
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
