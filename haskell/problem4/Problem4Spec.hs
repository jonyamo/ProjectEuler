module Problem4Spec where

import Test.Hspec
import Problem4

main :: IO ()
main = hspec $ do
  describe "problem4" $ do
    it "return the largest palindrome made from the product of two 3-digit numbers." $
      problem4 `shouldBe` 906609
