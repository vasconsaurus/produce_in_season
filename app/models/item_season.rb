# frozen_string_literal: true

class ItemSeason < ApplicationRecord
  MONTHS = (1..12).to_a.freeze

  COUNTRIES = %w[BR].freeze
  enum coutry_code: COUNTRIES.index_by(&:to_sym)

  belongs_to :produce_item

  validates :month_index, :country_code, presence: true
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
