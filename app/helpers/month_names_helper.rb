module MonthNamesHelper
  def format_month_name(month_index)
    I18n.t("date.month_names")[month_index].downcase
  end
end
