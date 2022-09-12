# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe 'formatted month name' do
    it 'changes the month_index to a month_name' do
      expect(helper.formatted_month_name(1)).to eq('janeiro')
    end
  end

  describe 'formatted month short' do
    it 'changes the month_index to an abbr. month_name' do
      expect(helper.formatted_month_short(1)).to eq('jan')
    end
  end
end
