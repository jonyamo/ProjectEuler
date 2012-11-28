module Problem2 where

import Helpers (fibs)

problem2 :: Int -> Int
problem2 n = sum [x | x <- takeWhile (< n) fibs, even x]
