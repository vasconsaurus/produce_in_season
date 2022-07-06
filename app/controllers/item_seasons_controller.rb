# frozen_string_literal: true

class ItemSeasonsController < ApplicationController
  before_action :set_item_season, only: %i[show]

  def index
    @item_seasons = ItemSeason.all
  end

  def show
    @produce_item = ItemSeason.includes([:produce_item]).where(month_index: @item_season.month_index)
  end

  private

  def set_item_season
    @item_season = ItemSeason.find_by(month_index: params[:month_index])
  end
end
