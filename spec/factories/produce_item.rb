# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :produce_item do
    name { Faker::Food.fruits }
    category { 'fruit' }
  end
end
