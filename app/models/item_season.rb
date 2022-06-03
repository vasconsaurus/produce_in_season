# frozen_string_literal: true

class ItemSeason < ApplicationRecord
  MONTHS = (1..12).to_a.freeze

  COUNTRIES = %w[BR].freeze
  enum coutry_code: COUNTRIES.index_by(&:to_sym)

  belongs_to :produce_item

  validates :month_index, :country_code, presence: true
end
