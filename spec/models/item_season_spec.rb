# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ItemSeason, type: :model do
  let!(:produce_item) { create(:produce_item) }
  let!(:item_season) { described_class.new(produce_item_id: produce_item.id, month_index: 1, country_code: 'br') }

  it 'is valid with valid attributes' do
    expect(item_season).to be_valid
  end

  describe 'Associations' do
    it { is_expected.to belong_to(:produce_item).without_validating_presence }
  end
end
