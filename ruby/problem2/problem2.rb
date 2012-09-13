require_relative '../helpers'

module ProjectEuler
  class Problem2
    extend Helpers

    def self.solve(n)
      fibonacci_sequence(n).inject { |sum, i| i % 2 == 0 ? sum + i : sum }
    end
  end
end

if __FILE__ == $0
  p ProjectEuler::Problem2.solve(4_000_000)
end
