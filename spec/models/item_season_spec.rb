# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ItemSeason, type: :model do
  subject { described_class.new(produce_item_id: produce_item.id, month_index: 1, country_code: 'br', id: 1) }

  let!(:produce_item) { ProduceItem.create(name: 'Banana', category: 'fruit') }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  describe 'Associations' do
    it { is_expected.to belong_to(:produce_item).without_validating_presence }
  end
end
