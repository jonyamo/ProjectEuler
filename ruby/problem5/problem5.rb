module ProjectEuler
  class Problem5
    def self.solve(n)
      # remove any duplicate divisors, i.e., if the number is divisible by
      # 10 then we know it is also divisible by 5 and 2, so no need to check
      # them as well
      divisors = (2..n).to_a
      n.downto(2) do |i|
        divisors.each do |j|
          next if j >= i
          divisors.delete(j) if i % j == 0
        end
      end

      num = n
      max = divisors.inject { |prod,i| prod * i }
      while num <= max
        return num if divisors.all? { |i| num % i == 0 }
        num += n
      end
    end
  end
end

if __FILE__ == $0
  p ProjectEuler::Problem5.solve(20)
end
