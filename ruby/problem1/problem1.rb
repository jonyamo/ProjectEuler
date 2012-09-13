module ProjectEuler
  class Problem1
    def self.solve(n)
      sum = 0

      n.to_i.times do |i|
        next if i == 0
        sum += i if i % 3 == 0 or i % 5 == 0
      end

      return sum
    end
  end
end

if __FILE__ == $0
  puts ProjectEuler::Problem1.solve(1000)
end
