module Problem2Spec where

import Test.Hspec
import Problem2

main :: IO ()
main = hspec $ do
  describe "when adding Fibonacci terms whose values do not exceed a specific number" $ do
    describe "considering only even-valued terms" $ do
      it "should return the sum" $
        problem2 100 `shouldBe` 44
