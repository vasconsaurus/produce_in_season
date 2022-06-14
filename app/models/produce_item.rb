# frozen_string_literal: true

class ProduceItem < ApplicationRecord
  CATEGORIES = %w[fruit vegetable green].freeze
  enum category: CATEGORIES.index_by(&:to_sym)

  has_many :item_seasons, dependent: :destroy

  validates :name, presence: true
  validates :category, presence: true
end
