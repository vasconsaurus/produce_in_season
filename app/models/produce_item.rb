# frozen_string_literal: true

class ProduceItem < ApplicationRecord
  has_many :item_seasons
  validates :name, presence: true,
                   uniqueness: true
  validates :category, presence: true,
                       inclusion: { in: %w[fruta legume verdura] }
end
