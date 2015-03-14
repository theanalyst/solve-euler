import Test.Tasty
import Test.Tasty.HUnit
import Answer
import Euler.P1
import Euler.P2
import Euler.P3
import Euler.P4
import Euler.P5
import Euler.P6
import Euler.P7
import Euler.P8
import Euler.P9

main :: IO ()
main = defaultMain tests

tests = testGroup "tests" [unitTests]

unitTests = testGroup "Unit Tests"
            [ testCase "P1" $ (Answer.lst !! 1) @?= Euler.P1.solution,
              testCase "P2" $ (Answer.lst !! 2) @?= Euler.P2.solution,
              testCase "P3" $ (Answer.lst !! 3) @?= Euler.P3.solution,
              testCase "P4" $ (Answer.lst !! 4) @?= Euler.P4.solution,
              testCase "P5" $ (Answer.lst !! 5) @?= Euler.P5.solution,
              testCase "P6" $ (Answer.lst !! 6) @?= Euler.P6.solution,
              testCase "P7" $ (Answer.lst !! 7) @?= Euler.P7.solution,
              testCaseSteps "P8" $ \step -> do
                step "Asserting IO Equals"
                v <- Euler.P8.solution
                v @?= Answer.lst !! 8,
              testCase "P9" $ (Answer.lst !! 9) @?= Euler.P9.solution
            ]
