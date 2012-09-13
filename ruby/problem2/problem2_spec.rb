require 'minitest/autorun'
require_relative 'problem2'

include ProjectEuler

describe Problem2 do
  describe "when adding Fibonacci terms whose values do not exceed a specific number" do
    describe "considering only even-valued terms" do
      it "should return the sum" do
        Problem2.solve(100).must_equal 44
      end
    end
  end
end
