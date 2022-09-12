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
    else
      'rotate-zero'
    end
  end
end
