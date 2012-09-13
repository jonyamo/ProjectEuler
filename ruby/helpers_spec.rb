require 'minitest/autorun'
require_relative 'helpers'

include ProjectEuler::Helpers

describe "helper methods" do
  describe "fibonacci" do
    it "should return the nth fibonacci number" do
      fibonacci(9).must_equal 34
    end
  end

  describe "fibonacci_sequence" do
    it "should return an array of fibonacci numbers whose values do not exceed n" do
      fibonacci_sequence(10).must_equal [0, 1, 2, 3, 5, 8]
    end
  end

  describe "prime_numbers" do
    it "should return an array of prime numbers up to n" do
      prime_numbers(19).must_equal [2, 3, 5, 7, 11, 13, 17, 19]
    end
  end

  describe "prime_factors" do
    it "should return an array of prime factors for a given number" do
      prime_factors(13_195).must_equal [5, 7, 13, 29]
    end
  end
end
