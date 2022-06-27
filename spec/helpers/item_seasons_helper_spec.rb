# frozen_string_literal: true

require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ItemSeasonsHelper. For example:
#
# describe ItemSeasonsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ItemSeasonsHelper, type: :helper do
  describe 'month name to index' do
    it 'changes the month_name to a month_index' do
      expect(helper.month_name_to_index('janeiro')).to eq(1)
    end
  end
end
