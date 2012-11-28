module HelpersSpec where

import Test.Hspec
import Helpers

main :: IO ()
main = hspec $ do
  describe "fibs" $ do
    it "should return a list of fibonacci numbers" $
      [x | x <- takeWhile (< 100) fibs] `shouldBe` [1,1,2,3,5,8,13,21,34,55,89]

  describe "primes" $ do
    it "should return a list of prime numbers" $
      [x | x <- takeWhile (< 50) primes]
      `shouldBe`
      [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47]

  describe "primeFactors" $ do
    it "should return a list of prime factors for a given number" $
      primeFactors 13195 `shouldBe` [5,7,13,29] 

  describe "palindrome" $ do
    it "should return true if the given number is a palindrome" $
      (palindrome . show) 9009 `shouldBe` True

    it "should return false if the given number is not a palindrome" $
      (palindrome . show) 1234 `shouldBe` False
