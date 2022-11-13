# frozen_string_literal: true

module ProduceItemsHelper
  def formatted_month_list(produce)
    produce.item_seasons.order(month_index: :asc).map { formatted_month_name(_1.month_index) }.join(' / ')
  end
end
