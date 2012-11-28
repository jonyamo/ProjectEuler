module Helpers where

fibs :: [Int]
fibs = 1 : 1 : zipWith (+) fibs (tail fibs)
