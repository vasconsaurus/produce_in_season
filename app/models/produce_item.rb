# frozen_string_literal: true

class ProduceItem < ApplicationRecord
  CATEGORIES = %w[fruit vegetable green].freeze
  enum category: CATEGORIES.index_by(&:to_sym)

  has_many :item_seasons, dependent: :destroy

  validates :name, presence: true
  validates :category, presence: true
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
