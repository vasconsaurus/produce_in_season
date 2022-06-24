# frozen_string_literal: true

require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ProduceItemsHelper. For example:
#
# describe ProduceItemsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ProduceItemsHelper, type: :helper do
  describe 'formatted month name' do
    it 'changes the month_index to a month_name' do
      expect(helper.formatted_month_name(1)).to eq('janeiro')
    end
  end
end
