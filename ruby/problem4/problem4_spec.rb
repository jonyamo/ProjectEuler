require 'minitest/autorun'
require_relative 'problem4'

include ProjectEuler

describe Problem4 do
  describe "when given an integer n" do
    it "should return the largest palindrome made from the product of two n-digit numbers" do
      Problem4.solve(2).must_equal 9009
      Problem4.solve(3).must_equal 906609
    end
  end
end
