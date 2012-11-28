module HelpersSpec where

import Test.Hspec
import Helpers

main :: IO ()
main = hspec $ do
  describe "fibs" $ do
    it "should return a list of fibonacci terms" $
      [x | x <- takeWhile (< 100) fibs] `shouldBe` [1,1,2,3,5,8,13,21,34,55,89]
