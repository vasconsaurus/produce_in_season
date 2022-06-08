# frozen_string_literal: true

class ProduceItem < ApplicationRecord
  CATEGORIES = %w[fruit vegetable green].freeze
  enum category: CATEGORIES.index_by(&:to_sym)

  has_many :item_seasons

  validates :name, presence: true,
                   uniqueness: true
  validates :category, presence: true
end
