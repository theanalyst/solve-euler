import Test.Tasty
import Test.Tasty.HUnit
import Answer
import Euler.P1
import Euler.P2

main :: IO ()
main = defaultMain tests

tests = testGroup "tests" [unitTests]

unitTests = testGroup "Unit Tests"
            [ testCase "P1" $ (Answer.lst !! 1) @?= Euler.P1.solution,
              testCase "P2" $ (Answer.lst !! 2) @?= Euler.P2.solution]
