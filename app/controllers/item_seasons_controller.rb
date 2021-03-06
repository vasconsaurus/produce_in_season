# frozen_string_literal: true

class ItemSeasonsController < ApplicationController
  before_action :set_item_season, only: %i[show]

  def index
    @item_seasons = ItemSeason.all
  end

  def show
    @item_season_produces = ProduceItem.joins(:item_seasons)
                                       .where(item_seasons: { month_index: @item_season.month_index })
  end

  private

  def set_item_season
    @item_season = ItemSeason.find_by(month_index: params[:month_index])
  end
end
