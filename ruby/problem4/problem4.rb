require_relative '../helpers'

module ProjectEuler
  class Problem4
    def self.solve(n)
      Fixnum.send :include, FixnumExtensions

      max = ("9"*n).to_i
      min = ("1" + "0"*(n-1)).to_i
      pal = pal2 = 0

      max.downto(min) do |i|
        max.downto(min) do |j|
          r = i * j
          if r.palindrome?
            pal = r
            max = i
            min = j+1
            break
          end
        end
        break if !pal.zero?
      end

      max.downto(min) do |i|
        max.downto(min) do |j|
          next if j > i
          r = i * j
          if r.palindrome?
            pal2 = r
            break
          end
        end
        break if !pal2.zero?
      end

      pal2.zero? ? pal : pal2
    end
  end
end

if __FILE__ == $0
  p ProjectEuler::Problem4.solve(3)
end
