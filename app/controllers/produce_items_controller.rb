# frozen_string_literal: true

class ProduceItemsController < ApplicationController
  before_action :set_produce_item, only: %i[show]

  def index
    @produce_items = ProduceItem.all
  end

  def show; end

  private

  def set_produce_item
    @produce_item = ProduceItem.find(params[:id])
  end
end
