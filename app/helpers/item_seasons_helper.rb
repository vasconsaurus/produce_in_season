# frozen_string_literal: true

module ItemSeasonsHelper
  def randomized_rotation
    %w[rotate-zero rotate-plus-5 rotate-plus-10 rotate-plus-15
       rotate-minus-5 rotate-minus-10 rotate-minus-15].sample
  end
end
