# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ItemSeason, type: :model do
  let!(:produce_item) { create(:produce_item) }
<<<<<<< HEAD
  let!(:item_season) { described_class.new(produce_item_id: produce_item.id, month_index: 1, country_code: 'br') }
=======
  subject { described_class.new(produce_item_id: produce_item.id, month_index: 1, country_code: 'br') }
>>>>>>> b6e4945542d4fa3e6428592926d63cd054c4aec4

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  describe 'Associations' do
    it { is_expected.to belong_to(:produce_item).without_validating_presence }
  end
end
