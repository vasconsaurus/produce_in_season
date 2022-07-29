# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProduceItem, type: :model do
  subject(:produce_item) { described_class.new(name: name, category: category) }

  let(:name) { 'Banana' }
  let(:category) { 'fruit' }

  it { expect(produce_item).to be_valid }

  context 'when there is no name' do
    let(:name) { nil }

    it { expect(produce_item).not_to be_valid }
  end

  context 'when there is no category' do
    let(:category) { nil }

    it { expect(produce_item).not_to be_valid }
  end

  it 'is not valid without an unique name' do
    described_class.create!(name: name, category: category)
    expect { produce_item.save }.to raise_error(
      ActiveRecord::RecordNotUnique,
      /duplicate key value violates unique constraint "index_produce_items_on_name"/
    )
  end

  it { is_expected.to have_many(:item_seasons) }
end

# rubocop:disable Layout/LineLength
# == Schema Information
#
# Table name: produce_items
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  category   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_produce_items_on_name  (name) UNIQUE
#
# rubocop:enable Layout/LineLength
