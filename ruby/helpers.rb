module ProjectEuler
  module Helpers
    def fibonacci(n)
      if n == 0 || n == 1
        return n
      else
        return fibonacci(n - 1) + fibonacci(n - 2)
      end
    end

    def fibonacci_sequence(upper)
      seq = []

      f = 0
      i = 3
      while f <= upper.to_i
        if f == 0 || f == 1
          seq << f
          f += 1
        else
          seq << f
          f = seq[i - 1] + seq[i - 2]
          i += 1
        end
      end

      seq
    end

    def prime_numbers(upper)
      return []  if upper  < 2
      return [2] if upper == 2

      nums = (2..upper).to_a
      iend = nums.size - 1
      sqrt = Math.sqrt(upper).to_i

      (0..(nums.index(sqrt))).each do |i|
        n = nums[i] # n is either prime or nil
        (i + n).step(iend, n) { |j| nums[j] = nil } unless n.nil?
      end

      nums.compact  # eliminate nil entries
    end

    def prime_factors(n)
      fac  = []
      orig = n
      i    = 2 # first prime
      sqi  = 4 # i**2

      while sqi <= n do
        while n % i == 0 do
          fac << i
          n /= i
        end

        i  += 1
        sqi = i**2
      end

      fac << n if n != 1 && n != orig

      fac.uniq
    end
  end
end
