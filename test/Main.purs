module Test.Main where

import Prelude

import Data.Array (range)
import Effect (Effect)
import Effect.Exception (catchException, message)
import Test.Assert (assert)
import Test.Assert.Multiple (resolve)

infix 8 range as ..

main :: Effect Unit
main = do
  testPass
  testFail

testPass :: Effect Unit
testPass = resolve do
    x <- 1 .. 5
    pure $ assert (x <= 5)

testFail :: Effect Unit
testFail = catchException (\x -> assert $ message x == "Assertion failed") $ resolve do
    x <- 1 .. 10
    pure $ assert (x <= 5)

