# frozen_string_literal: true

FactoryBot.define do
  factory :item_season do
    produce_item { build(:produce_item) }
    month_index { 1 }
    country_code { 'br' }
  end
end
