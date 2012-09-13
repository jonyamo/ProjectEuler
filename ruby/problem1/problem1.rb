module ProjectEuler
  class Problem1
    def self.solve(n)
      (0...n).inject { |sum, i| i % 3 == 0 || i % 5 == 0 ? sum + i : sum }
    end
  end
end

if __FILE__ == $0
  puts ProjectEuler::Problem1.solve(1000)
end
