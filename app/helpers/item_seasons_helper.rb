# frozen_string_literal: true

module ItemSeasonsHelper
  def rotation(month_index)
    raise 'month-index must be between 1 and 12' if month_index > 12 || month_index < 1

    case month_index
    when 1, 6
      'rotate-plus-5'
    when 5
      'rotate-minus-5'
    when 12
      'rotate-plus-10'
    when 4, 9
      'rotate-minus-10'
    else
      'rotate-0'
    end
  end

  def month_navigation_previous(item_season)
    item_season.month_index == 1 ? 12 : item_season.month_index - 1
  end

  def month_navigation_next(item_season)
    item_season.month_index == 12 ? 1 : item_season.month_index + 1
  end
end
