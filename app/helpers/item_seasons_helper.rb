# frozen_string_literal: true

module ItemSeasonsHelper
  def rotation(month_index)
    case month_index
    when 1, 6
      'rotate-plus-5'
    when 5
      'rotate-minus-5'
    when 12
      'rotate-plus-10'
    when 4, 9
      'rotate-minus-10'
    when 2, 3, 7, 8, 10, 11
      'rotate-0'
    else
      raise 'month-index must be between 1 and 12'
    end
  end
end
