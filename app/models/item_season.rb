# frozen_string_literal: true

class ItemSeason < ApplicationRecord
  MONTHS = (1..12).to_a.freeze

  belongs_to :produce_item
  validates :month_index, :country_code, presence: true
end
