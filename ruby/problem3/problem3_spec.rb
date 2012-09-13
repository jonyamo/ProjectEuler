require 'minitest/autorun'
require_relative 'problem3'

include ProjectEuler

describe Problem3 do
  describe "when calculating prime factors for a given number" do
    it "should return the largest result" do
      Problem3.solve(13_195).must_equal 29
    end
  end
end
