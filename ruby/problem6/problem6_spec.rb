require 'minitest/autorun'
require_relative 'problem6'

include ProjectEuler

describe Problem6 do
  it "should find the difference between the sum of the squares of the " +
     "first n natural numbers and the square of the sum" do
    Problem6.solve(10).must_equal 2640
  end
end
