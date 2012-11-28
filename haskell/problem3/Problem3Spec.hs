module Problem3Spec where

import Test.Hspec
import Problem3

main :: IO ()
main = hspec $ do
  describe "when calculating prime factors for a given number" $ do
    it "should return the largest result" $
      problem3 13195 `shouldBe` 29
