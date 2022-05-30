class ItemSeason < ApplicationRecord
  belongs_to :produce_item

  MONTHS = (1..12).to_a.freeze
end
