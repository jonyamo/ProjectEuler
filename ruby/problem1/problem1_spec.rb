require 'minitest/autorun'
require_relative 'problem1'

include ProjectEuler

describe Problem1 do
  describe "when adding mulitples of 3 or 5 up to a specific number" do
    it "should return the sum" do
      Problem1.solve(10).must_equal 23
    end
  end
end
