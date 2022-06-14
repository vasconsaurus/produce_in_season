# frozen_string_literal: true

class AddIndexToProduceItem < ActiveRecord::Migration[7.0]
  disable_ddl_transaction!

  def change
    add_index :produce_items, :name, unique: true, algorithm: :concurrently
  end
end
