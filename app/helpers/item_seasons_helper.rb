# frozen_string_literal: true

module ItemSeasonsHelper
  def month_name_to_index(month_name)
    I18n.t('date.month_names').find_index(month_name)
  end
end
