module Problem3 where

import Helpers (primeFactors)

problem3 :: Int -> Int
problem3 n = last (primeFactors n)
