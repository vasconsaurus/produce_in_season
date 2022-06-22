# frozen_string_literal: true

FactoryBot.define do
  factory :item_season do
    month_index { '1' }
    country_code { 'BR' }
    produce_item
  end
end
