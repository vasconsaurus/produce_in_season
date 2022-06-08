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
    expect(subject.save).to eq(false)
    expect(subject.errors.to_a).to include('Name has already been taken')
  end

  it { is_expected.to have_many(:item_seasons) }
end
