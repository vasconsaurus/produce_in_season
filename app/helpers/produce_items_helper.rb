# frozen_string_literal: true

module ProduceItemsHelper
  def formatted_month_list(produce, item_season)
    produce.item_seasons.last.month_index == item_season.month_index ? formatted_month_name(item_season.month_index) : "#{formatted_month_name(item_season.month_index)} /"
  end

end
