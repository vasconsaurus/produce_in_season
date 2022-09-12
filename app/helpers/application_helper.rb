# frozen_string_literal: true

module ApplicationHelper
  def formatted_month_name(month_index)
    I18n.t('date.month_names')[month_index].downcase
  end

  def formatted_month_short(month_index)
    I18n.t('date.month_short')[month_index].downcase
  end
end
