# frozen_string_literal: true

class ItemSeasonsController < ApplicationController
  before_action :set_item_season, only: %i[show]

  def index
    @item_seasons = ItemSeason.all
  end

  def show; end

  private

  def set_item_season
    @item_season = ItemSeason.find(params[:id])
  end
end
