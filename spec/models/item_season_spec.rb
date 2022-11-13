# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ItemSeason, type: :model do
  subject(:item_season) { create(:item_season, produce_item_id: produce_item.id, month_index: 1, country_code: 'BR') }

  let(:produce_item) { create(:produce_item) }

  describe 'is valid with valid attributes' do
    it { is_expected.to be_valid }
  end

  describe 'Associations' do
    it { is_expected.to belong_to(:produce_item).without_validating_presence }
  end
end

# rubocop:disable Layout/LineLength
# == Schema Information
#
# Table name: item_seasons
#
#  id              :bigint           not null, primary key
#  month_index     :integer          not null
#  country_code    :string           not null
#  produce_item_id :bigint           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_item_seasons_on_produce_item_id  (produce_item_id)
#
# Foreign Keys
#
#  fk_rails_...  (produce_item_id => produce_items.id)
#
# rubocop:enable Layout/LineLength
