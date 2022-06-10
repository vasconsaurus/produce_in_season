# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'csv'
require 'database_cleaner/active_record'

DatabaseCleaner.strategy = :truncation

DatabaseCleaner.clean

CSV.foreach(Rails.root.join('lib/produce.csv'), headers: true) do |row|
  item = ProduceItem.create!(name: row[0], category: row[1])
  ItemSeason.create!(
    country_code: row[2],
    month_index: row[3],
    produce_item_id: item.id
  )
end
