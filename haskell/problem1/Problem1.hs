module Problem1 where

problem1 :: Int -> Int
problem1 n = sum [x | x <- [1..n - 1], x `mod` 3 == 0 || x `mod` 5 == 0]
