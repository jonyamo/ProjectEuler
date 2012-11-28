module Problem1Spec where

import Test.Hspec
import Problem1

main :: IO ()
main = hspec $ do
  describe "when adding multiples of 3 or 5 up to a specific number" $ do
    it "should return the sum" $
      problem1 10 `shouldBe` 23
