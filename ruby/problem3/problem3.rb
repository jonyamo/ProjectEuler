require_relative '../helpers'

module ProjectEuler
  class Problem3
    extend Helpers

    def self.solve(n)
      prime_factors(n).max
    end
  end
end

if __FILE__ == $0
  p ProjectEuler::Problem3.solve(600_851_475_143)
end
