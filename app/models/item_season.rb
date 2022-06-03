# frozen_string_literal: true

class ItemSeason < ApplicationRecord
  MONTHS = (1..12).to_a.freeze

  COUNTRIES = %w[BR].freeze
  enum coutry_code: COUNTRIES.index_by(&:to_sym)

  belongs_to :produce_item

  validates :month_index, :country_code, presence: true

  def month(month_index)
    case month
      when month_index == 1
        "january"
      when month_index == 2
        "february"
      when month_index == 3
        "march"
      when month_index == 4
        "april"
      when month_index == 5
        "may"
      when month_index == 6
        "june"
      when month_index == 7
        "july"
      when month_index == 8
        "august"
      when month_index == 9
        "september"
      when month_index == 10
        "october"
      when month_index == 11
        "november"
      when month_index == 12
        "december"
    end
  end
end
