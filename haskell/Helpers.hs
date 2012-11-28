module Helpers where

fibs :: [Int]
fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

primes :: [Int]
primes = 2 : filter ((==1) . length . primeFactors) [3,5..]

primeFactors :: Int -> [Int]
primeFactors n = factor n primes
  where
    factor n (p:ps)
      | p*p > n        = [n]
      | n `mod` p == 0 = p : factor (n `div` p) (p:ps)
      | otherwise      = factor n ps

palindrome :: (Eq a) => [a] -> Bool
palindrome xs = xs == reverse xs
