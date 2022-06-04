# frozen_string_literal: true

class CreateProduceItems < ActiveRecord::Migration[7.0]
  def change
    create_table :produce_items do |t|
      t.string :name, null: false
      t.string :category, null: false

      t.timestamps
    end
  end
end
