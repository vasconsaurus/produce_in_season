# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProduceItem, type: :model do
  subject { described_class.new(name: name, category: category) }

  let(:name) { 'Banana' }
  let(:category) { 'fruit' }

  it { expect(subject).to be_valid }

  context 'when there is no name' do
    let(:name) { nil }

    it { expect(subject).not_to be_valid }
  end

  context 'when there is no category' do
    let(:category) { nil }

    it { expect(subject).not_to be_valid }
  end

  it 'is not valid without an unique name' do
    described_class.create!(name: name, category: category)
    expect { subject.save }.to raise_error(
      ActiveRecord::RecordNotUnique,
      /duplicate key value violates unique constraint "index_produce_items_on_name"/
    )
  end

  it { is_expected.to have_many(:item_seasons) }
end
