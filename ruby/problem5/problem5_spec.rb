require 'minitest/autorun'
require_relative 'problem5'

include ProjectEuler

describe Problem5 do
  it "should return the smallest number that is evenly divisible by all " +
     "the numbers 1 to n" do
    Problem5.solve(10).must_equal 2520
  end
end
