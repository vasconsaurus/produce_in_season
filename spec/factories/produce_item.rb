# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :produce_item do
    sequence(:name) { |n| "#{Faker::Food.fruits}-#{n}" }
    category { 'fruit' }
  end
end
