module Problem4 where

import Helpers (palindrome)

problem4 :: Int
problem4 =
  let max = 999
      min = 100
  in maximum [n | i <- [max,max-1..min], j <- [i,i-1..min],
    let n = i*j, (palindrome . show) n]
