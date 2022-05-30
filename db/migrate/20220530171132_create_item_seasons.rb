class CreateItemSeasons < ActiveRecord::Migration[7.0]
  def change
    create_table :item_seasons do |t|
      t.integer :month_index, null: false
      t.string :country_code, null: false
      t.belongs_to :produce_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
