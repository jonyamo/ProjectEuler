module ProjectEuler
  class Problem6
    def self.solve(n)
      sum_of_squares = (1..n).inject { |sum,i| sum + i**2 }
      square_of_sums = (1..n).inject { |sum,i| sum + i }**2
      square_of_sums - sum_of_squares
    end
  end
end

if __FILE__ == $0
  p ProjectEuler::Problem6.solve(100)
end
