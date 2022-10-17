# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProduceItemsHelper, type: :helper do
  context 'when viewing the produce items index' do
    let(:produce_item) { ProduceItem.create(name: 'carambola', category: 'fruit') }
    let(:item_season_jan) { ItemSeason.create(produce_item_id: produce_item.id, month_index: 1, country_code: 'br') }
    let(:item_season_fev) { ItemSeason.create(produce_item_id: produce_item.id, month_index: 2, country_code: 'br') }

    describe '#formatted_month_name(produce, item season)' do
      it 'adds / to the string, if its not the last or only month' do
        expect(helper.formatted_month_list(produce_item, item_season_jan)).to eq('janeiro /')
      end

      it 'does not add / to the string, if its the last or only month' do
        expect(helper.formatted_month_list(produce_item, item_season_fev)).to eq('fevereiro')
      end
    end
  end
end
